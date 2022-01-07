; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_CallerFInfoFunctionCall1.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_CallerFInfoFunctionCall1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@fcinfo = common dso_local global %struct.TYPE_9__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"function %p returned NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CallerFInfoFunctionCall1(i32 (%struct.TYPE_9__*)* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32 (%struct.TYPE_9__*)*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 (%struct.TYPE_9__*)* %0, i32 (%struct.TYPE_9__*)** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %11 = call i32 @LOCAL_FCINFO(%struct.TYPE_9__* %10, i32 1)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = bitcast %struct.TYPE_9__* %12 to { i64, %struct.TYPE_8__* }*
  %16 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %15, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i32 @InitFunctionCallInfoData(i64 %17, %struct.TYPE_8__* %19, i32* %13, i32 1, i32 %14, i32* null, i32* null)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %5, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %34 = call i32 %32(%struct.TYPE_9__* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %5, align 8
  %42 = bitcast i32 (%struct.TYPE_9__*)* %41 to i8*
  %43 = call i32 @elog(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %4
  %45 = load i32, i32* %9, align 4
  ret i32 %45
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
