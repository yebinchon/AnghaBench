; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_FunctionCall5Coll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_FunctionCall5Coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32 }

@fcinfo = common dso_local global %struct.TYPE_11__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"function %u returned NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FunctionCall5Coll(%struct.TYPE_10__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %17 = call i32 @LOCAL_FCINFO(%struct.TYPE_11__* %16, i32 5)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = bitcast %struct.TYPE_11__* %18 to { i64, %struct.TYPE_9__* }*
  %22 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %21, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @InitFunctionCallInfoData(i64 %23, %struct.TYPE_9__* %25, %struct.TYPE_10__* %19, i32 5, i32 %20, i32* null, i32* null)
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i8* %27, i8** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %38, i8** %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i8* %49, i8** %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i8* %60, i8** %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i8* %71, i8** %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %83 = call i8* @FunctionCallInvoke(%struct.TYPE_11__* %82)
  store i8* %83, i8** %15, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %7
  %89 = load i32, i32* @ERROR, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @elog(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %7
  %95 = load i8*, i8** %15, align 8
  ret i8* %95
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
