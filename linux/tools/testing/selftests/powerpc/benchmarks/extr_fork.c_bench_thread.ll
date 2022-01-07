; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_fork.c_bench_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_fork.c_bench_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pthread_attr_init\00", align 1
@cpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pthread_attr_setaffinity_np\00", align 1
@null_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@iterations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bench_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bench_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @pthread_attr_init(i32* %3)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* @errno, align 4
  %10 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @exit(i32 1) #3
  unreachable

12:                                               ; preds = %0
  %13 = load i32, i32* @cpu, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = call i32 @CPU_ZERO(i32* %2)
  %17 = load i32, i32* @cpu, align 4
  %18 = call i32 @CPU_SET(i32 %17, i32* %2)
  %19 = call i32 @pthread_attr_setaffinity_np(i32* %3, i32 4, i32* %2)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* @errno, align 4
  %24 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %12
  br label %28

28:                                               ; preds = %27, %46
  %29 = load i32, i32* @null_fn, align 4
  %30 = call i32 @pthread_create(i32* %1, i32* %3, i32 %29, i32* null)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* @errno, align 4
  %35 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %28
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @pthread_join(i32 %38, i32* null)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* @errno, align 4
  %44 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %37
  %47 = load i32, i32* @iterations, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @iterations, align 4
  br label %28
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @pthread_attr_setaffinity_np(i32*, i32, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
