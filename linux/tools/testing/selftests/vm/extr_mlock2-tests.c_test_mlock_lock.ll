; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_mlock_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_mlock_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"test_mlock_locked mmap\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot call new mlock family, skipping test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mlock2(0)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"munlock()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_mlock_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mlock_lock() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 1, i32* %2, align 4
  %4 = call i64 (...) @getpagesize()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = mul i64 2, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @PROT_READ, align 4
  %9 = load i32, i32* @PROT_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MAP_ANONYMOUS, align 4
  %12 = load i32, i32* @MAP_PRIVATE, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @mmap(i32* null, i32 %7, i32 %10, i32 %13, i32 -1, i32 0)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = load i8*, i8** @MAP_FAILED, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %60

20:                                               ; preds = %0
  %21 = load i8*, i8** %1, align 8
  %22 = load i64, i64* %3, align 8
  %23 = mul i64 2, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @mlock2_(i8* %21, i32 %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOSYS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @KSFT_SKIP, align 4
  %34 = call i32 @_exit(i32 %33) #3
  unreachable

35:                                               ; preds = %27
  %36 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %54

37:                                               ; preds = %20
  %38 = load i8*, i8** %1, align 8
  %39 = call i64 @lock_check(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %54

42:                                               ; preds = %37
  %43 = load i8*, i8** %1, align 8
  %44 = load i64, i64* %3, align 8
  %45 = mul i64 2, %44
  %46 = trunc i64 %45 to i32
  %47 = call i64 @munlock(i8* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %54

51:                                               ; preds = %42
  %52 = load i8*, i8** %1, align 8
  %53 = call i32 @unlock_lock_check(i8* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %49, %41, %35
  %55 = load i8*, i8** %1, align 8
  %56 = load i64, i64* %3, align 8
  %57 = mul i64 2, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @munmap(i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mlock2_(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @lock_check(i8*) #1

declare dso_local i64 @munlock(i8*, i32) #1

declare dso_local i32 @unlock_lock_check(i8*) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
