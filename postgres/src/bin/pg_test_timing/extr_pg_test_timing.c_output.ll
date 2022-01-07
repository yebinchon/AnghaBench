; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_test_timing/extr_pg_test_timing.c_output.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_test_timing/extr_pg_test_timing.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"< us\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"% of total\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@histogram = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Histogram of timing durations:\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%*s   %*s %*s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%*ld    %*.5f %*lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %2, align 8
  store i64 31, i64* %3, align 8
  %11 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %31, %1
  %21 = load i64, i64* %3, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64*, i64** @histogram, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %3, align 8
  br label %20

34:                                               ; preds = %29
  %35 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @Max(i32 6, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @Max(i32 10, i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @Max(i32 10, i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %38, i8* %39, i8* %41, i8* %42, i8* %44, i8* %45)
  store i64 0, i64* %4, align 8
  br label %47

47:                                               ; preds = %74, %34
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %3, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @Max(i32 6, i32 %52)
  %54 = load i64, i64* %4, align 8
  %55 = shl i64 1, %54
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @Max(i32 10, i32 %56)
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load i64*, i64** @histogram, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = fmul double %63, 1.000000e+02
  %65 = load double, double* %2, align 8
  %66 = fdiv double %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i8* @Max(i32 10, i32 %67)
  %69 = load i64*, i64** @histogram, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %53, i64 %55, i8* %58, double %66, i8* %68, i64 %72)
  br label %74

74:                                               ; preds = %51
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %47

77:                                               ; preds = %47
  ret void
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @Max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
