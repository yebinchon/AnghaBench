; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_unlock_onfault_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_unlock_onfault_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PFN_MASK = common dso_local global i32 0, align 4
@UNEVICTABLE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Page 1 is still marked unevictable after unlock\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"VMA is still lock on fault after unlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unlock_onfault_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlock_onfault_check(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i64 (...) @getpagesize()
  store i64 %6, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = call i32 @get_pageflags(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PFN_MASK, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @get_kpageflags(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @UNEVICTABLE_BIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = call i64 @is_vma_lock_on_fault(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %27, %28
  %30 = call i64 @is_vma_lock_on_fault(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %20
  %33 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @get_pageflags(i64) #1

declare dso_local i32 @get_kpageflags(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @is_vma_lock_on_fault(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
