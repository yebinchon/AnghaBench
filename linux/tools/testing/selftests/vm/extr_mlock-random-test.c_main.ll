; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLOCK_RLIMIT_SIZE = common dso_local global i32 0, align 4
@MLOCK_WITHIN_LIMIT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"malloc() failure\0A\00", align 1
@MLOCK_OUTOF_LIMIT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @MLOCK_RLIMIT_SIZE, align 4
  %9 = call i64 @set_cap_limits(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* @MLOCK_WITHIN_LIMIT_SIZE, align 4
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %53

19:                                               ; preds = %12
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @MLOCK_WITHIN_LIMIT_SIZE, align 4
  %22 = call i32 @test_mlock_within_limit(i8* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @MLOCK_WITHIN_LIMIT_SIZE, align 4
  %30 = call i32 @munlock(i8* %28, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32, i32* @MLOCK_OUTOF_LIMIT_SIZE, align 4
  %34 = call i8* @malloc(i32 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %53

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @MLOCK_OUTOF_LIMIT_SIZE, align 4
  %42 = call i32 @test_mlock_outof_limit(i8* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @MLOCK_OUTOF_LIMIT_SIZE, align 4
  %50 = call i32 @munlock(i8* %48, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %45, %37, %25, %17, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @set_cap_limits(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @test_mlock_within_limit(i8*, i32) #1

declare dso_local i32 @munlock(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @test_mlock_outof_limit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
