; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_lock_onfault_of_present.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_lock_onfault_of_present.c"
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
@PFN_MASK = common dso_local global i32 0, align 4
@UNEVICTABLE_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to make present page unevictable\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"VMA with present pages is not marked lock on fault\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_lock_onfault_of_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_lock_onfault_of_present() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %6 = call i64 (...) @getpagesize()
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = mul i64 2, %7
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @PROT_READ, align 4
  %11 = load i32, i32* @PROT_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MAP_ANONYMOUS, align 4
  %14 = load i32, i32* @MAP_PRIVATE, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @mmap(i32* null, i32 %9, i32 %12, i32 %15, i32 -1, i32 0)
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = load i8*, i8** @MAP_FAILED, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %85

22:                                               ; preds = %0
  %23 = load i8*, i8** %1, align 8
  store i8 97, i8* %23, align 1
  %24 = load i8*, i8** %1, align 8
  %25 = load i64, i64* %3, align 8
  %26 = mul i64 2, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @MLOCK_ONFAULT, align 4
  %29 = call i64 @mlock2_(i8* %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ENOSYS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @KSFT_SKIP, align 4
  %38 = call i32 @_exit(i32 %37) #3
  unreachable

39:                                               ; preds = %31
  %40 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %79

41:                                               ; preds = %22
  %42 = load i8*, i8** %1, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = call i32 @get_pageflags(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i8*, i8** %1, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %46, %47
  %49 = call i32 @get_pageflags(i64 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PFN_MASK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @get_kpageflags(i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PFN_MASK, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @get_kpageflags(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @UNEVICTABLE_BIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %79

64:                                               ; preds = %41
  %65 = load i8*, i8** %1, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = call i32 @is_vma_lock_on_fault(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i8*, i8** %1, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %71, %72
  %74 = call i32 @is_vma_lock_on_fault(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69, %64
  %77 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %76, %62, %39
  %80 = load i8*, i8** %1, align 8
  %81 = load i64, i64* %3, align 8
  %82 = mul i64 2, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @munmap(i8* %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %20
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mlock2_(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @get_pageflags(i64) #1

declare dso_local i32 @get_kpageflags(i32) #1

declare dso_local i32 @is_vma_lock_on_fault(i64) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
