; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_done_process.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_done_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Waiting for %u to terminate\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"All threads are now terminated\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @AVISplitter_done_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVISplitter_done_process(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %61, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SetEvent(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @WaitForSingleObject(i32* %29, i32 100000)
  %31 = load i64, i64* @WAIT_TIMEOUT, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @CloseHandle(i32* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %15
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @IMediaSample_Release(i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %54

54:                                               ; preds = %45, %15
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ResetEvent(i32 %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %8

64:                                               ; preds = %8
  %65 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @S_OK, align 4
  ret i32 %66
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @IMediaSample_Release(i32*) #1

declare dso_local i32 @ResetEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
