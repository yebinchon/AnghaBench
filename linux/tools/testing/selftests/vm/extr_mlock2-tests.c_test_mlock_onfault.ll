; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_mlock_onfault.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_mlock_onfault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"test_mlock_locked mmap\00", align 1
@MLOCK_ONFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot call new mlock family, skipping test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"mlock2(MLOCK_ONFAULT)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"munlock()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_mlock_onfault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mlock_onfault() #0 {
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
  br label %69

20:                                               ; preds = %0
  %21 = load i8*, i8** %1, align 8
  %22 = load i64, i64* %3, align 8
  %23 = mul i64 2, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @MLOCK_ONFAULT, align 4
  %26 = call i64 @mlock2_(i8* %21, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOSYS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @KSFT_SKIP, align 4
  %35 = call i32 @_exit(i32 %34) #3
  unreachable

36:                                               ; preds = %28
  %37 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %63

38:                                               ; preds = %20
  %39 = load i8*, i8** %1, align 8
  %40 = call i64 @onfault_check(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %63

43:                                               ; preds = %38
  %44 = load i8*, i8** %1, align 8
  %45 = load i64, i64* %3, align 8
  %46 = mul i64 2, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @munlock(i8* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOSYS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @KSFT_SKIP, align 4
  %57 = call i32 @_exit(i32 %56) #3
  unreachable

58:                                               ; preds = %50
  %59 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %63

60:                                               ; preds = %43
  %61 = load i8*, i8** %1, align 8
  %62 = call i32 @unlock_onfault_check(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %58, %42, %36
  %64 = load i8*, i8** %1, align 8
  %65 = load i64, i64* %3, align 8
  %66 = mul i64 2, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @munmap(i8* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mlock2_(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @onfault_check(i8*) #1

declare dso_local i64 @munlock(i8*, i32) #1

declare dso_local i32 @unlock_onfault_check(i8*) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
