; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-unavailable.c_test_fp_vec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-unavailable.c_test_fp_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@tm_una_ping = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pthread_create()\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"tm_una_ping\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"pthread_setname_np\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@DEBUG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"All transactions failed unexpectedly\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fp_vec(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 2, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flags, i32 0, i32 0), align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flags, i32 0, i32 1), align 4
  br label %13

13:                                               ; preds = %47, %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @tm_una_ping, align 4
  %16 = call i32 @pthread_create(i32* %9, i32* %14, i32 %15, i8* bitcast (%struct.TYPE_2__* @flags to i8*))
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @pr_err(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @pthread_setname_np(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @pr_warn(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pthread_join(i32 %31, i8** %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @pr_err(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br i1 %48, label %13, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flags, i32 0, i32 2), align 4
  %53 = load i64, i64* @DEBUG, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %49
  ret void
}

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pr_err(i32, i8*) #1

declare dso_local i32 @pthread_setname_np(i32, i8*) #1

declare dso_local i32 @pr_warn(i32, i8*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
