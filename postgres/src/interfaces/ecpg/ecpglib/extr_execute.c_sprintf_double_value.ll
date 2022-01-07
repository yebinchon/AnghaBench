; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_sprintf_double_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_sprintf_double_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%.15g%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, double, i8*)* @sprintf_double_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintf_double_value(i8* %0, double %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store double %1, double* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load double, double* %5, align 8
  %8 = call i64 @isnan(double %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %36

14:                                               ; preds = %3
  %15 = load double, double* %5, align 8
  %16 = call i64 @isinf(double %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load double, double* %5, align 8
  %20 = fcmp olt double %19, 0.000000e+00
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %35

30:                                               ; preds = %14
  %31 = load i8*, i8** %4, align 8
  %32 = load double, double* %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %29
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @isinf(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
