; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_ParseDaysOfWeek.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_ParseDaysOfWeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@pszDaysOfWeekArray = common dso_local global i32** null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ParseDaysOfWeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseDaysOfWeek(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @wcslen(i32* %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  store i32* %16, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %17

17:                                               ; preds = %73, %15
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @wcschr(i32* %18, i32 44)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @wcslen(i32* %23)
  store i32 %24, i32* %8, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = load i32*, i32** %6, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = sub nsw i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %25, %22
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 7
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32**, i32*** @pszDaysOfWeekArray, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @wcslen(i32* %45)
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = load i32**, i32*** @pszDaysOfWeekArray, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @_wcsnicmp(i32* %49, i32* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 1, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %68

64:                                               ; preds = %48, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %36

68:                                               ; preds = %58, %36
  %69 = load i32*, i32** %7, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %3, align 4
  br label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32* %75, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %17

76:                                               ; preds = %71, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32* @wcschr(i32*, i32) #1

declare dso_local i64 @_wcsnicmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
