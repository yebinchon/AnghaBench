; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_port.c_midi_port_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_port.c_midi_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.midi_port = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@midi_port_vtbl = common dso_local global i32 0, align 4
@midi_thru_vtbl = common dso_local global i32 0, align 4
@IID_IReferenceClock = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, %struct.TYPE_5__**)* @midi_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @midi_port_create(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.midi_port*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %12 = call %struct.midi_port* @heap_alloc_zero(i32 32)
  store %struct.midi_port* %12, %struct.midi_port** %10, align 8
  %13 = icmp ne %struct.midi_port* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %15, i64* %5, align 8
  br label %42

16:                                               ; preds = %4
  %17 = load %struct.midi_port*, %struct.midi_port** %10, align 8
  %18 = getelementptr inbounds %struct.midi_port, %struct.midi_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* @midi_port_vtbl, i32** %19, align 8
  %20 = load %struct.midi_port*, %struct.midi_port** %10, align 8
  %21 = getelementptr inbounds %struct.midi_port, %struct.midi_port* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* @midi_thru_vtbl, i32** %22, align 8
  %23 = load %struct.midi_port*, %struct.midi_port** %10, align 8
  %24 = getelementptr inbounds %struct.midi_port, %struct.midi_port* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.midi_port*, %struct.midi_port** %10, align 8
  %26 = getelementptr inbounds %struct.midi_port, %struct.midi_port* %25, i32 0, i32 2
  %27 = bitcast i32* %26 to i8**
  %28 = call i64 @DMUSIC_CreateReferenceClockImpl(i32* @IID_IReferenceClock, i8** %27, i32* null)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %16
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.midi_port*, %struct.midi_port** %10, align 8
  %35 = call i32 @HeapFree(i32 %33, i32 0, %struct.midi_port* %34)
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %5, align 8
  br label %42

37:                                               ; preds = %16
  %38 = load %struct.midi_port*, %struct.midi_port** %10, align 8
  %39 = getelementptr inbounds %struct.midi_port, %struct.midi_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %40, align 8
  %41 = load i64, i64* @S_OK, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %37, %32, %14
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local %struct.midi_port* @heap_alloc_zero(i32) #1

declare dso_local i64 @DMUSIC_CreateReferenceClockImpl(i32*, i8**, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.midi_port*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
