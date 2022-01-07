; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_regex_fixed_prefix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_support.c_regex_fixed_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@BYTEAOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"regular-expression matching not supported on type bytea\00", align 1
@Pattern_Prefix_None = common dso_local global i32 0, align 4
@Pattern_Prefix_Exact = common dso_local global i32 0, align 4
@Pattern_Prefix_Partial = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64, %struct.TYPE_5__**, double*)* @regex_fixed_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regex_fixed_prefix(%struct.TYPE_5__* %0, i32 %1, i64 %2, %struct.TYPE_5__** %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca double*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %10, align 8
  store double* %4, double** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @BYTEAOID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DatumGetTextPP(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i8* @regexp_fixed_prefix(i32 %33, i32 %34, i64 %35, i32* %14)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %29
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %40, align 8
  %41 = load double*, double** %11, align 8
  %42 = icmp ne double* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @TextDatumGetCString(i32 %46)
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = load i32, i32* %8, align 4
  %52 = call double @regex_selectivity(i8* %48, i32 %50, i32 %51, i32 0)
  %53 = load double*, double** %11, align 8
  store double %52, double* %53, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @pfree(i8* %54)
  br label %56

56:                                               ; preds = %43, %39
  %57 = load i32, i32* @Pattern_Prefix_None, align 4
  store i32 %57, i32* %6, align 4
  br label %95

58:                                               ; preds = %29
  %59 = load i8*, i8** %13, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call %struct.TYPE_5__* @string_to_const(i8* %59, i64 %60)
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %62, align 8
  %63 = load double*, double** %11, align 8
  %64 = icmp ne double* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load double*, double** %11, align 8
  store double 1.000000e+00, double* %69, align 8
  br label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @TextDatumGetCString(i32 %73)
  store i8* %74, i8** %16, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call double @regex_selectivity(i8* %75, i32 %77, i32 %78, i32 %80)
  %82 = load double*, double** %11, align 8
  store double %81, double* %82, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @pfree(i8* %83)
  br label %85

85:                                               ; preds = %70, %68
  br label %86

86:                                               ; preds = %85, %58
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @pfree(i8* %87)
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @Pattern_Prefix_Exact, align 4
  store i32 %92, i32* %6, align 4
  br label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @Pattern_Prefix_Partial, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %91, %56
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @regexp_fixed_prefix(i32, i32, i64, i32*) #1

declare dso_local i32 @DatumGetTextPP(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local double @regex_selectivity(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local %struct.TYPE_5__* @string_to_const(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
