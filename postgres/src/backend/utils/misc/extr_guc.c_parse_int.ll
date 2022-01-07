; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_parse_int.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@GUC_UNIT = common dso_local global i32 0, align 4
@GUC_UNIT_MEMORY = common dso_local global i32 0, align 4
@memory_units_hint = common dso_local global i8* null, align 8
@time_units_hint = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@INT_MIN = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [29 x i8] c"Value exceeds integer range.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_int(i8* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i8**, i8*** %9, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i8**, i8*** %9, align 8
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %19, %16
  store i64 0, i64* @errno, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call double @strtol(i8* %22, i8** %11, i32 0)
  store double %23, double* %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 46
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %11, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 101
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 69
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ERANGE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %33, %28, %21
  store i64 0, i64* @errno, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call double @strtod(i8* %43, i8** %11)
  store double %44, double* %10, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @ERANGE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45
  store i32 0, i32* %5, align 4
  br label %129

54:                                               ; preds = %49
  %55 = load double, double* %10, align 8
  %56 = call i64 @isnan(double %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %129

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %65, %59
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @isspace(i8 zeroext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  br label %60

68:                                               ; preds = %60
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @GUC_UNIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %129

79:                                               ; preds = %73
  %80 = load double, double* %10, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @GUC_UNIT, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @convert_to_base_unit(double %80, i8* %81, i32 %84, double* %10)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = load i8**, i8*** %9, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @GUC_UNIT_MEMORY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** @memory_units_hint, align 8
  %97 = load i8**, i8*** %9, align 8
  store i8* %96, i8** %97, align 8
  br label %101

98:                                               ; preds = %90
  %99 = load i8*, i8** @time_units_hint, align 8
  %100 = load i8**, i8*** %9, align 8
  store i8* %99, i8** %100, align 8
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %87
  store i32 0, i32* %5, align 4
  br label %129

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %68
  %105 = load double, double* %10, align 8
  %106 = call double @llvm.rint.f64(double %105)
  store double %106, double* %10, align 8
  %107 = load double, double* %10, align 8
  %108 = load double, double* @INT_MAX, align 8
  %109 = fcmp ogt double %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load double, double* %10, align 8
  %112 = load double, double* @INT_MIN, align 8
  %113 = fcmp olt double %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110, %104
  %115 = load i8**, i8*** %9, align 8
  %116 = icmp ne i8** %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = call i8* @gettext_noop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %119 = load i8**, i8*** %9, align 8
  store i8* %118, i8** %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %5, align 4
  br label %129

121:                                              ; preds = %110
  %122 = load i32*, i32** %7, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load double, double* %10, align 8
  %126 = fptosi double %125 to i32
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %121
  store i32 1, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %120, %102, %78, %58, %53
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local double @strtol(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @convert_to_base_unit(double, i8*, i32, double*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #2

declare dso_local i8* @gettext_noop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
