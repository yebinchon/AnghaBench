; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_CallerFInfoFunctionCall2.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_CallerFInfoFunctionCall2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }

@fcinfo = common dso_local global %struct.TYPE_9__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"function %p returned NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CallerFInfoFunctionCall2(i8* (%struct.TYPE_9__*)* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8* (%struct.TYPE_9__*)*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* (%struct.TYPE_9__*)* %0, i8* (%struct.TYPE_9__*)** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %13 = call i32 @LOCAL_FCINFO(%struct.TYPE_9__* %12, i32 2)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = bitcast %struct.TYPE_9__* %14 to { i64, %struct.TYPE_8__* }*
  %18 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %17, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call i32 @InitFunctionCallInfoData(i64 %19, %struct.TYPE_8__* %21, i32* %15, i32 2, i32 %16, i32* null, i32* null)
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i8* %23, i8** %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i8* %34, i8** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i8* (%struct.TYPE_9__*)*, i8* (%struct.TYPE_9__*)** %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %47 = call i8* %45(%struct.TYPE_9__* %46)
  store i8* %47, i8** %11, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %5
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i8* (%struct.TYPE_9__*)*, i8* (%struct.TYPE_9__*)** %6, align 8
  %55 = bitcast i8* (%struct.TYPE_9__*)* %54 to i8*
  %56 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %52, %5
  %58 = load i8*, i8** %11, align 8
  ret i8* %58
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @InitFunctionCallInfoData(i64, %struct.TYPE_8__*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
