; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_unlock_lock_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_unlock_lock_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PFN_MASK = common dso_local global i32 0, align 4
@UNEVICTABLE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"A page is still marked unevictable after unlock\0A\00", align 1
@LOCKED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"VMA flag %s is present on page 1 after unlock\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"VMA flag %s is present on page 2 after unlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unlock_lock_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlock_lock_check(i8* %0) #0 {
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
  %17 = load i32, i32* @PFN_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @get_kpageflags(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PFN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @get_kpageflags(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UNEVICTABLE_BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UNEVICTABLE_BIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %1
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %56

35:                                               ; preds = %28
  %36 = load i8*, i8** %3, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i8*, i8** @LOCKED, align 8
  %39 = call i64 @is_vmflag_set(i64 %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** @LOCKED, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 1, i32* %2, align 4
  br label %56

44:                                               ; preds = %35
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %46, %47
  %49 = load i8*, i8** @LOCKED, align 8
  %50 = call i64 @is_vmflag_set(i64 %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** @LOCKED, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  store i32 1, i32* %2, align 4
  br label %56

55:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %52, %41, %33
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @get_pageflags(i64) #1

declare dso_local i32 @get_kpageflags(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @is_vmflag_set(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
