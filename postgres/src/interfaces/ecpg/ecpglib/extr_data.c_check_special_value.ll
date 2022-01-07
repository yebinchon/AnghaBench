; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_data.c_check_special_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_data.c_check_special_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*, i8**)* @check_special_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_special_value(i8* %0, double* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store double* %1, double** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @pg_strncasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = call double (...) @get_float8_nan()
  %13 = load double*, double** %6, align 8
  store double %12, double* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 3
  %16 = load i8**, i8*** %7, align 8
  store i8* %15, i8** %16, align 8
  store i32 1, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @pg_strncasecmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = call double (...) @get_float8_infinity()
  %23 = load double*, double** %6, align 8
  store double %22, double* %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = load i8**, i8*** %7, align 8
  store i8* %25, i8** %26, align 8
  store i32 1, i32* %4, align 4
  br label %41

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @pg_strncasecmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = call double (...) @get_float8_infinity()
  %33 = fneg double %32
  %34 = load double*, double** %6, align 8
  store double %33, double* %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 9
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  store i32 1, i32* %4, align 4
  br label %41

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %31, %21, %11
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

declare dso_local double @get_float8_nan(...) #1

declare dso_local double @get_float8_infinity(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
