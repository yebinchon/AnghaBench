; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_create_sub_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_create_sub_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, %struct.TYPE_10__*, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i64 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@sub_stream_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8*, %struct.TYPE_10__**)* @create_sub_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sub_stream(%struct.TYPE_10__* %0, i8* %1, i8* %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %12 = call i32 (...) @GetProcessHeap()
  %13 = call %struct.TYPE_9__* @HeapAlloc(i32 %12, i32 0, i32 48)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %5, align 4
  br label %42

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32* @sub_stream_vtbl, i32** %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = call i32 @IStream_AddRef(%struct.TYPE_10__* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %40, align 8
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %18, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_9__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IStream_AddRef(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
