; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_DirectFunctionCall4Coll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_DirectFunctionCall4Coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }

@fcinfo = common dso_local global %struct.TYPE_9__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"function %p returned NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DirectFunctionCall4Coll(i8* (%struct.TYPE_9__*)* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8* (%struct.TYPE_9__*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* (%struct.TYPE_9__*)* %0, i8* (%struct.TYPE_9__*)** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %15 = call i32 @LOCAL_FCINFO(%struct.TYPE_9__* %14, i32 4)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %17 = load i32, i32* %8, align 4
  %18 = bitcast %struct.TYPE_9__* %16 to { i64, %struct.TYPE_8__* }*
  %19 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %18, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call i32 @InitFunctionCallInfoData(i64 %20, %struct.TYPE_8__* %22, i32* null, i32 4, i32 %17, i32* null, i32* null)
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i8* %24, i8** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i8* %35, i8** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i8* %46, i8** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i8* %57, i8** %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i8* (%struct.TYPE_9__*)*, i8* (%struct.TYPE_9__*)** %7, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %70 = call i8* %68(%struct.TYPE_9__* %69)
  store i8* %70, i8** %13, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fcinfo, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %6
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i8* (%struct.TYPE_9__*)*, i8* (%struct.TYPE_9__*)** %7, align 8
  %78 = bitcast i8* (%struct.TYPE_9__*)* %77 to i8*
  %79 = call i32 @elog(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %75, %6
  %81 = load i8*, i8** %13, align 8
  ret i8* %81
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
