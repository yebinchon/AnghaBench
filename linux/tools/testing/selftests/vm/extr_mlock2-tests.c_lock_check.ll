; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_lock_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_lock_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRESENT_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to make both pages present\0A\00", align 1
@PFN_MASK = common dso_local global i32 0, align 4
@UNEVICTABLE_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to make both pages unevictable\0A\00", align 1
@LOCKED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"VMA flag %s is missing on page 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"VMA flag %s is missing on page 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lock_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_check(i8* %0) #0 {
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
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PRESENT_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %1
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %68

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PFN_MASK, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @get_kpageflags(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PFN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @get_kpageflags(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @UNEVICTABLE_BIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @UNEVICTABLE_BIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %27
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %68

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load i8*, i8** @LOCKED, align 8
  %51 = call i32 @is_vmflag_set(i64 %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** @LOCKED, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  store i32 1, i32* %2, align 4
  br label %68

56:                                               ; preds = %47
  %57 = load i8*, i8** %3, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %58, %59
  %61 = load i8*, i8** @LOCKED, align 8
  %62 = call i32 @is_vmflag_set(i64 %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** @LOCKED, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  store i32 1, i32* %2, align 4
  br label %68

67:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %53, %45, %25
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @get_pageflags(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_kpageflags(i32) #1

declare dso_local i32 @is_vmflag_set(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
