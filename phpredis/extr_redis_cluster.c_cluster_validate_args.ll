; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_cluster.c_cluster_validate_args.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_cluster.c_cluster_validate_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid timeout\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid read timeout\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Must pass seeds\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, i32*)* @cluster_validate_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_validate_args(double %0, double %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load double, double* %5, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load double, double* %5, align 8
  %12 = load double, double* @INT_MAX, align 8
  %13 = fcmp ogt double %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %3
  %15 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %16 = load i32, i32* @FAILURE, align 4
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %10
  %18 = load double, double* %6, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load double, double* %6, align 8
  %22 = load double, double* @INT_MAX, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %17
  %25 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %26 = load i32, i32* @FAILURE, align 4
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @zend_hash_num_elements(i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %33 = load i32, i32* @FAILURE, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @SUCCESS, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31, %24, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @CLUSTER_THROW_EXCEPTION(i8*, i32) #1

declare dso_local i64 @zend_hash_num_elements(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
