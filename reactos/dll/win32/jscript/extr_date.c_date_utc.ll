; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_date_utc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_date_utc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, double*)* @date_utc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @date_utc(i32* %0, i32 %1, i32* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store double* %3, double** %9, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @to_number(i32* %22, i32 %25, double* %10)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %5, align 4
  br label %153

32:                                               ; preds = %21
  %33 = load double, double* %10, align 8
  %34 = fcmp ole double 0.000000e+00, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load double, double* %10, align 8
  %37 = fcmp ole double %36, 9.900000e+01
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load double, double* %10, align 8
  %40 = fadd double %39, 1.900000e+03
  store double %40, double* %10, align 8
  br label %41

41:                                               ; preds = %38, %35, %32
  br label %43

42:                                               ; preds = %4
  store double 1.900000e+03, double* %10, align 8
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %7, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @to_number(i32* %47, i32 %50, double* %11)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %5, align 4
  br label %153

57:                                               ; preds = %46
  br label %59

58:                                               ; preds = %43
  store double 0.000000e+00, double* %11, align 8
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %7, align 4
  %61 = icmp ugt i32 %60, 2
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @to_number(i32* %63, i32 %66, double* %12)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %5, align 4
  br label %153

73:                                               ; preds = %62
  br label %75

74:                                               ; preds = %59
  store double 1.000000e+00, double* %12, align 8
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %7, align 4
  %77 = icmp ugt i32 %76, 3
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @to_number(i32* %79, i32 %82, double* %13)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i64 @FAILED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %5, align 4
  br label %153

89:                                               ; preds = %78
  br label %91

90:                                               ; preds = %75
  store double 0.000000e+00, double* %13, align 8
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %7, align 4
  %93 = icmp ugt i32 %92, 4
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @to_number(i32* %95, i32 %98, double* %14)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i64 @FAILED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %5, align 4
  br label %153

105:                                              ; preds = %94
  br label %107

106:                                              ; preds = %91
  store double 0.000000e+00, double* %14, align 8
  br label %107

107:                                              ; preds = %106, %105
  %108 = load i32, i32* %7, align 4
  %109 = icmp ugt i32 %108, 5
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @to_number(i32* %111, i32 %114, double* %15)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i64 @FAILED(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %5, align 4
  br label %153

121:                                              ; preds = %110
  br label %123

122:                                              ; preds = %107
  store double 0.000000e+00, double* %15, align 8
  br label %123

123:                                              ; preds = %122, %121
  %124 = load i32, i32* %7, align 4
  %125 = icmp ugt i32 %124, 6
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 6
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @to_number(i32* %127, i32 %130, double* %16)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i64 @FAILED(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %5, align 4
  br label %153

137:                                              ; preds = %126
  br label %139

138:                                              ; preds = %123
  store double 0.000000e+00, double* %16, align 8
  br label %139

139:                                              ; preds = %138, %137
  %140 = load double, double* %10, align 8
  %141 = load double, double* %11, align 8
  %142 = load double, double* %12, align 8
  %143 = call i32 @make_day(double %140, double %141, double %142)
  %144 = load double, double* %13, align 8
  %145 = load double, double* %14, align 8
  %146 = load double, double* %15, align 8
  %147 = load double, double* %16, align 8
  %148 = call i32 @make_time(double %144, double %145, double %146, double %147)
  %149 = call i32 @make_date(i32 %143, i32 %148)
  %150 = call double @time_clip(i32 %149)
  %151 = load double*, double** %9, align 8
  store double %150, double* %151, align 8
  %152 = load i32, i32* @S_OK, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %139, %135, %119, %103, %87, %71, %55, %30
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local double @time_clip(i32) #1

declare dso_local i32 @make_date(i32, i32) #1

declare dso_local i32 @make_day(double, double, double) #1

declare dso_local i32 @make_time(double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
