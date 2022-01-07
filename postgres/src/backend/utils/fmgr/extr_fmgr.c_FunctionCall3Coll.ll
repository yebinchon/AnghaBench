; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_FunctionCall3Coll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_FunctionCall3Coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32 }

@fcinfo = common dso_local global %struct.TYPE_11__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"function %u returned NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FunctionCall3Coll(%struct.TYPE_10__* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %13 = call i32 @LOCAL_FCINFO(%struct.TYPE_11__* %12, i32 3)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = bitcast %struct.TYPE_11__* %14 to { i64, %struct.TYPE_9__* }*
  %18 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %17, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = call i32 @InitFunctionCallInfoData(i64 %19, %struct.TYPE_9__* %21, %struct.TYPE_10__* %15, i32 3, i32 %16, i32* null, i32* null)
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i8* %23, i8** %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i8* %34, i8** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %57 = call i8* @FunctionCallInvoke(%struct.TYPE_11__* %56)
  store i8* %57, i8** %11, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %5
  %63 = load i32, i32* @ERROR, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @elog(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %5
  %69 = load i8*, i8** %11, align 8
  ret i8* %69
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @InitFunctionCallInfoData(i64, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32*, i32*) #1

declare dso_local i8* @FunctionCallInvoke(%struct.TYPE_11__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
