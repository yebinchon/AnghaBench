; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_FunctionCall8Coll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_FunctionCall8Coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32 }

@fcinfo = common dso_local global %struct.TYPE_11__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"function %u returned NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FunctionCall8Coll(%struct.TYPE_10__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %23 = call i32 @LOCAL_FCINFO(%struct.TYPE_11__* %22, i32 8)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = bitcast %struct.TYPE_11__* %24 to { i64, %struct.TYPE_9__* }*
  %28 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, %struct.TYPE_9__* }, { i64, %struct.TYPE_9__* }* %27, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i32 @InitFunctionCallInfoData(i64 %29, %struct.TYPE_9__* %31, %struct.TYPE_10__* %25, i32 8, i32 %26, i32* null, i32* null)
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i8* %33, i8** %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i8* %44, i8** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i8* %55, i8** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i8* %66, i8** %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i8* %77, i8** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 5
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i8* %88, i8** %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 5
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 6
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i8* %99, i8** %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 6
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load i8*, i8** %20, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 7
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i8* %110, i8** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 7
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %122 = call i8* @FunctionCallInvoke(%struct.TYPE_11__* %121)
  store i8* %122, i8** %21, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fcinfo, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %10
  %128 = load i32, i32* @ERROR, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @elog(i32 %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %10
  %134 = load i8*, i8** %21, align 8
  ret i8* %134
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
