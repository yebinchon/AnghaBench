; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_analyze.c_CheckSelectLocking.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_analyze.c_CheckSelectLocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32*, i64 }

@LCS_NONE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s is not allowed with UNION/INTERSECT/EXCEPT\00", align 1
@NIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s is not allowed with DISTINCT clause\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s is not allowed with GROUP BY clause\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s is not allowed with HAVING clause\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s is not allowed with aggregate functions\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%s is not allowed with window functions\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"%s is not allowed with set-returning functions in the target list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckSelectLocking(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @LCS_NONE, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @LCS_asString(i64 %18)
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @ereport(i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NIL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @LCS_asString(i64 %32)
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @ereport(i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %28, %22
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NIL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @LCS_asString(i64 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = call i32 @ereport(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %42, %36
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @LCS_asString(i64 %59)
  %61 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = call i32 @ereport(i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @LCS_asString(i64 %72)
  %74 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = call i32 @ereport(i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %84 = call i32 @errcode(i32 %83)
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @LCS_asString(i64 %85)
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = call i32 @ereport(i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @LCS_asString(i64 %98)
  %100 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = call i32 @ereport(i32 %95, i32 %100)
  br label %102

102:                                              ; preds = %94, %89
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @LCS_asString(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
