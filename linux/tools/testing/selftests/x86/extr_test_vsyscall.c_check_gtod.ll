; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_check_gtod.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_check_gtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.timezone = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"[FAIL] %s tz mismatch\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\09%s time offsets: %lf %lf\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"[FAIL]\09%s time was inconsistent with the syscall\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[OK]\09%s gettimeofday()'s timeval was okay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.timeval*, %struct.timezone*, i8*, %struct.timeval*, %struct.timezone*)* @check_gtod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_gtod(%struct.timeval* %0, %struct.timeval* %1, %struct.timezone* %2, i8* %3, %struct.timeval* %4, %struct.timezone* %5) #0 {
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca %struct.timezone*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.timezone*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.timeval* %0, %struct.timeval** %7, align 8
  store %struct.timeval* %1, %struct.timeval** %8, align 8
  store %struct.timezone* %2, %struct.timezone** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  store %struct.timezone* %5, %struct.timezone** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.timezone*, %struct.timezone** %12, align 8
  %17 = icmp ne %struct.timezone* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %6
  %19 = load %struct.timezone*, %struct.timezone** %9, align 8
  %20 = getelementptr inbounds %struct.timezone, %struct.timezone* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.timezone*, %struct.timezone** %12, align 8
  %23 = getelementptr inbounds %struct.timezone, %struct.timezone* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.timezone*, %struct.timezone** %9, align 8
  %28 = getelementptr inbounds %struct.timezone, %struct.timezone* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.timezone*, %struct.timezone** %12, align 8
  %31 = getelementptr inbounds %struct.timezone, %struct.timezone* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26, %18
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %34, %26, %6
  %40 = load %struct.timeval*, %struct.timeval** %11, align 8
  %41 = load %struct.timeval*, %struct.timeval** %7, align 8
  %42 = call double @tv_diff(%struct.timeval* %40, %struct.timeval* %41)
  store double %42, double* %14, align 8
  %43 = load %struct.timeval*, %struct.timeval** %8, align 8
  %44 = load %struct.timeval*, %struct.timeval** %11, align 8
  %45 = call double @tv_diff(%struct.timeval* %43, %struct.timeval* %44)
  store double %45, double* %15, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load double, double* %14, align 8
  %48 = load double, double* %15, align 8
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %46, double %47, double %48)
  %50 = load double, double* %14, align 8
  %51 = fcmp olt double %50, 0.000000e+00
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load double, double* %15, align 8
  %54 = fcmp olt double %53, 0.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %39
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local double @tv_diff(%struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
