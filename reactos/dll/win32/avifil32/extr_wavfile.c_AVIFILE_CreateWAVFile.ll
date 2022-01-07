; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_CreateWAVFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_wavfile.c_AVIFILE_CreateWAVFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@AVIERR_MEMORY = common dso_local global i32 0, align 4
@unk_vtbl = common dso_local global i32 0, align 4
@iwavft = common dso_local global i32 0, align 4
@iwavpft = common dso_local global i32 0, align 4
@iwavst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AVIFILE_CreateWAVFile(%struct.TYPE_13__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %13 = call %struct.TYPE_14__* @HeapAlloc(i32 %11, i32 %12, i32 48)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %8, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i32* @unk_vtbl, i32** %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32* @iwavft, i32** %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32* @iwavpft, i32** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32* @iwavst, i32** %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %38, align 8
  br label %44

39:                                               ; preds = %18
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %43, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = load i8**, i8*** %7, align 8
  %49 = call i32 @IUnknown_QueryInterface(%struct.TYPE_13__* %46, i32 %47, i8** %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = call i32 @IUnknown_Release(%struct.TYPE_13__* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IUnknown_QueryInterface(%struct.TYPE_13__*, i32, i8**) #1

declare dso_local i32 @IUnknown_Release(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
