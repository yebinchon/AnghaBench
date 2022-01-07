; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sysret_ss_attrs.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sysret_ss_attrs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"[WARN]\09sched_setaffinity failed\0A\00", align 1
@threadproc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_32BIT = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"[RUN]\09Syscalls followed by SS validation\0A\00", align 1
@test_ss = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"[OK]\09We survived\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 @CPU_ZERO(i32* %2)
  %7 = call i32 @CPU_SET(i32 0, i32* %2)
  %8 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %2)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @threadproc, align 4
  %14 = call i64 @pthread_create(i32* %3, i32 0, i32 %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* @PROT_READ, align 4
  %20 = load i32, i32* @PROT_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MAP_32BIT, align 4
  %23 = load i32, i32* @MAP_ANONYMOUS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAP_PRIVATE, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @mmap(i32* null, i32 4096, i32 %21, i32 %26, i32 -1, i32 0)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** @MAP_FAILED, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %18
  %34 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %44, %33
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 1000
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = call i32 @usleep(i32 2)
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4088
  %42 = load i32, i32* @test_ss, align 4
  %43 = call i32 @call32_from_64(i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %35

47:                                               ; preds = %35
  %48 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @munmap(i8* %49, i32 4096)
  ret i32 0
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @call32_from_64(i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
