; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_common.c_mp_format_time_fmt.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_common.c_mp_format_time_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%lld\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%02lld\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%02lld\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_format_time_fmt(i8* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store double %1, double* %5, align 8
  %14 = load double, double* %5, align 8
  %15 = load double, double* @MP_NOPTS_VALUE, align 8
  %16 = fcmp oeq double %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %3, align 8
  br label %129

19:                                               ; preds = %2
  %20 = load double, double* %5, align 8
  %21 = fcmp olt double %20, 0.000000e+00
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %23, i8** %6, align 8
  %24 = load double, double* %5, align 8
  %25 = fcmp olt double %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load double, double* %5, align 8
  %28 = fneg double %27
  br label %31

29:                                               ; preds = %19
  %30 = load double, double* %5, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi double [ %28, %26 ], [ %30, %29 ]
  store double %32, double* %5, align 8
  %33 = load double, double* %5, align 8
  %34 = fptosi double %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load double, double* %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sitofp i64 %36 to double
  %38 = fsub double %35, %37
  %39 = fmul double %38, 1.000000e+03
  %40 = call i32 @lrint(double %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sge i32 %41, 1000
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 1000
  store i32 %45, i32* %12, align 4
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %43, %31
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sdiv i64 %50, 60
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sdiv i64 %52, 3600
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = mul nsw i64 %54, 3600
  %56 = load i64, i64* %11, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = sdiv i64 %58, 60
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = mul nsw i64 %60, 60
  %62 = load i64, i64* %11, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %11, align 8
  %64 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %64, i8** %13, align 8
  br label %65

65:                                               ; preds = %123, %48
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %124

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %116

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %112 [
    i32 104, label %82
    i32 72, label %86
    i32 109, label %90
    i32 77, label %94
    i32 115, label %97
    i32 83, label %101
    i32 84, label %104
    i32 102, label %107
    i32 37, label %110
  ]

82:                                               ; preds = %75
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %83, i64 %84)
  br label %113

86:                                               ; preds = %75
  %87 = load i8*, i8** %6, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %87, i64 %88)
  br label %113

90:                                               ; preds = %75
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %91, i64 %92)
  br label %113

94:                                               ; preds = %75
  %95 = load i64, i64* %9, align 8
  %96 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %95)
  br label %113

97:                                               ; preds = %75
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %98, i64 %99)
  br label %113

101:                                              ; preds = %75
  %102 = load i64, i64* %11, align 8
  %103 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  br label %113

104:                                              ; preds = %75
  %105 = load i32, i32* %12, align 4
  %106 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  br label %113

107:                                              ; preds = %75
  %108 = load double, double* %5, align 8
  %109 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), double %108)
  br label %113

110:                                              ; preds = %75
  %111 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %113

112:                                              ; preds = %75
  br label %126

113:                                              ; preds = %110, %107, %104, %101, %97, %94, %90, %86, %82
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %4, align 8
  br label %123

116:                                              ; preds = %69
  %117 = load i8*, i8** %4, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = call i32 (i8**, i8*, ...) @appendf(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  br label %123

123:                                              ; preds = %116, %113
  br label %65

124:                                              ; preds = %65
  %125 = load i8*, i8** %13, align 8
  store i8* %125, i8** %3, align 8
  br label %129

126:                                              ; preds = %112
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @talloc_free(i8* %127)
  store i8* null, i8** %3, align 8
  br label %129

129:                                              ; preds = %126, %124, %17
  %130 = load i8*, i8** %3, align 8
  ret i8* %130
}

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @appendf(i8**, i8*, ...) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
