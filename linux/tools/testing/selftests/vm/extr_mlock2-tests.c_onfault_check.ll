; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_onfault_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_onfault_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRESENT_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Pages were made present by MLOCK_ONFAULT\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Page 1 is not present after fault\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Page 2 was made present\0A\00", align 1
@PFN_MASK = common dso_local global i32 0, align 4
@UNEVICTABLE_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to make faulted page unevictable\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"VMA is not marked for lock on fault\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @onfault_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onfault_check(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i64 (...) @getpagesize()
  store i64 %7, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call i32 @get_pageflags(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %12, %13
  %15 = call i32 @get_pageflags(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PRESENT_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PRESENT_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %1
  %26 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  store i8 97, i8* %28, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = call i32 @get_pageflags(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @get_pageflags(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PRESENT_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PRESENT_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PFN_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @get_kpageflags(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @UNEVICTABLE_BIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

62:                                               ; preds = %51
  %63 = load i8*, i8** %3, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = call i32 @is_vma_lock_on_fault(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

69:                                               ; preds = %62
  %70 = load i8*, i8** %3, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %71, %72
  %74 = call i32 @is_vma_lock_on_fault(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %76, %67, %60, %48, %41, %25
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @get_pageflags(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @get_kpageflags(i32) #1

declare dso_local i32 @is_vma_lock_on_fault(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
