; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_is_numeric.c_collator_is_numeric.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_is_numeric.c_collator_is_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@IS_LONG = common dso_local global i32 0, align 4
@IS_DOUBLE = common dso_local global i32 0, align 4
@E_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"A non well formed numeric value encountered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @collator_is_numeric(i8* %0, i32 %1, i32* %2, double* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store double* %3, double** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 10, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %159

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 120
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 88
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  store i32 16, i32* %16, align 4
  br label %42

42:                                               ; preds = %41, %35, %23, %20
  store i64 0, i64* @errno, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @collator_u_strtol(i8* %43, i8** %14, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @ERANGE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %42
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = icmp eq i8* %50, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load i32*, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @IS_LONG, align 4
  store i32 %63, i32* %6, align 4
  br label %159

64:                                               ; preds = %49
  %65 = load i8*, i8** %14, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i8*, i8** %14, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 46
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 45
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %159

84:                                               ; preds = %78, %73, %68, %64
  br label %85

85:                                               ; preds = %84
  br label %87

86:                                               ; preds = %42
  store i8* null, i8** %14, align 8
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %159

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = call double @collator_u_strtod(i8* %92, i8** %15)
  store double %93, double* %13, align 8
  %94 = load double, double* %13, align 8
  %95 = fcmp oeq double %94, 0.000000e+00
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i8*, i8** %15, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8* null, i8** %15, align 8
  br label %122

101:                                              ; preds = %96, %91
  %102 = load i8*, i8** %15, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = icmp eq i8* %102, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = load double, double* %13, align 8
  %110 = call i32 @zend_finite(double %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %159

113:                                              ; preds = %108
  %114 = load double*, double** %10, align 8
  %115 = icmp ne double* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load double, double* %13, align 8
  %118 = load double*, double** %10, align 8
  store double %117, double* %118, align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* @IS_DOUBLE, align 4
  store i32 %120, i32* %6, align 4
  br label %159

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121, %100
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %159

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @E_NOTICE, align 4
  %131 = call i32 @zend_error(i32 %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %132
  %136 = load i8*, i8** %15, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = icmp ugt i8* %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load double*, double** %10, align 8
  %141 = icmp ne double* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load double, double* %13, align 8
  %144 = load double*, double** %10, align 8
  store double %143, double* %144, align 8
  %145 = load i32, i32* @IS_DOUBLE, align 4
  store i32 %145, i32* %6, align 4
  br label %159

146:                                              ; preds = %139, %135
  %147 = load i8*, i8** %14, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32*, i32** %9, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @IS_LONG, align 4
  store i32 %155, i32* %6, align 4
  br label %159

156:                                              ; preds = %149, %146
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %132
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %158, %152, %142, %125, %119, %112, %90, %83, %62, %19
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @collator_u_strtol(i8*, i8**, i32) #1

declare dso_local double @collator_u_strtod(i8*, i8**) #1

declare dso_local i32 @zend_finite(double) #1

declare dso_local i32 @zend_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
