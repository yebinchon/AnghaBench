; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_DirectFunctionCall6Coll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_DirectFunctionCall6Coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }

@fcinfo = common dso_local global %struct.TYPE_9__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"function %p returned NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DirectFunctionCall6Coll(i8* (%struct.TYPE_9__*)* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i8* (%struct.TYPE_9__*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* (%struct.TYPE_9__*)* %0, i8* (%struct.TYPE_9__*)** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %19 = call i32 @LOCAL_FCINFO(%struct.TYPE_9__* %18, i32 6)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %21 = load i32, i32* %10, align 4
  %22 = bitcast %struct.TYPE_9__* %20 to { i64, %struct.TYPE_8__* }*
  %23 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %22, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @InitFunctionCallInfoData(i64 %24, %struct.TYPE_8__* %26, i32* null, i32 6, i32 %21, i32* null, i32* null)
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i8* %28, i8** %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i8* %39, i8** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i8* %61, i8** %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i8* %72, i8** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 5
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i8* %83, i8** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 5
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load i8* (%struct.TYPE_9__*)*, i8* (%struct.TYPE_9__*)** %9, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %96 = call i8* %94(%struct.TYPE_9__* %95)
  store i8* %96, i8** %17, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %8
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i8* (%struct.TYPE_9__*)*, i8* (%struct.TYPE_9__*)** %9, align 8
  %104 = bitcast i8* (%struct.TYPE_9__*)* %103 to i8*
  %105 = call i32 @elog(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %8
  %107 = load i8*, i8** %17, align 8
  ret i8* %107
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
