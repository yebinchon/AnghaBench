; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_setup.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/ui/extr_slplay.c_slplay_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (%struct.TYPE_16__**, i32)*, i64 (%struct.TYPE_16__**, i32, %struct.TYPE_15__***)* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_15__**, %struct.TYPE_14__***, i32, i32*, i32*)* }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_14__**, i32)* }
%struct.TYPE_13__ = type { i32, i32 }

@SL_ENGINEOPTION_THREADSAFE = common dso_local global i32 0, align 4
@SL_BOOLEAN_TRUE = common dso_local global i32 0, align 4
@engine = common dso_local global %struct.TYPE_16__** null, align 8
@SL_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to create OpenSL engine\00", align 1
@SL_BOOLEAN_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to realize OpenSL engine\00", align 1
@SL_IID_ENGINE = common dso_local global i32 0, align 4
@engineInterface = common dso_local global %struct.TYPE_15__** null, align 8
@SL_IID_VOLUME = common dso_local global i32 0, align 4
@outputMix = common dso_local global %struct.TYPE_14__** null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to create output mix\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to realize output mix\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slplay_setup(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca [1 x %struct.TYPE_13__], align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca [1 x i32], align 4
  store i8** %0, i8*** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.TYPE_13__], [1 x %struct.TYPE_13__]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load i32, i32* @SL_ENGINEOPTION_THREADSAFE, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %11 = load i32, i32* @SL_BOOLEAN_TRUE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds [1 x %struct.TYPE_13__], [1 x %struct.TYPE_13__]* %4, i64 0, i64 0
  %13 = call i64 @slCreateEngine(%struct.TYPE_16__*** @engine, i32 1, %struct.TYPE_13__* %12, i32 0, i32* null, i32* null)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @engine, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_16__**, i32)*, i64 (%struct.TYPE_16__**, i32)** %22, align 8
  %24 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @engine, align 8
  %25 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %26 = call i64 %23(%struct.TYPE_16__** %24, i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %19
  %33 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @engine, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i64 (%struct.TYPE_16__**, i32, %struct.TYPE_15__***)*, i64 (%struct.TYPE_16__**, i32, %struct.TYPE_15__***)** %35, align 8
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @engine, align 8
  %38 = load i32, i32* @SL_IID_ENGINE, align 4
  %39 = call i64 %36(%struct.TYPE_16__** %37, i32 %38, %struct.TYPE_15__*** @engineInterface)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  br label %45

45:                                               ; preds = %43, %32
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %47 = load i32, i32* @SL_IID_VOLUME, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %49 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  store i32 %49, i32* %48, align 4
  %50 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @engineInterface, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_15__**, %struct.TYPE_14__***, i32, i32*, i32*)*, i64 (%struct.TYPE_15__**, %struct.TYPE_14__***, i32, i32*, i32*)** %52, align 8
  %54 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @engineInterface, align 8
  %55 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %56 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %57 = call i64 %53(%struct.TYPE_15__** %54, %struct.TYPE_14__*** @outputMix, i32 1, i32* %55, i32* %56)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  br label %63

63:                                               ; preds = %61, %45
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @outputMix, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64 (%struct.TYPE_14__**, i32)*, i64 (%struct.TYPE_14__**, i32)** %66, align 8
  %68 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @outputMix, align 8
  %69 = load i32, i32* @SL_BOOLEAN_FALSE, align 4
  %70 = call i64 %67(%struct.TYPE_14__** %68, i32 %69)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @SL_RESULT_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %75, align 8
  br label %76

76:                                               ; preds = %74, %63
  ret void
}

declare dso_local i64 @slCreateEngine(%struct.TYPE_16__***, i32, %struct.TYPE_13__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
