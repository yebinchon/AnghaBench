; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_first_window.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_first_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GW_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32**, i32*)* @first_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @first_window(i32 %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 (...) @GetDesktopWindow()
  %11 = call i32* @FindWindowEx(i32 %10, i32* null, i32* null, i32* null)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = call i32 (...) @GetDesktopWindow()
  %17 = load i32, i32* @GW_CHILD, align 4
  %18 = call i32* @GetWindow(i32 %16, i32 %17)
  store i32* %18, i32** %8, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32**, i32*** %6, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @check_window_valid(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @next_window(i32* %28, i32 %29, i32** %30, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  store i32 0, i32* %41, align 4
  %42 = call i32 (...) @GetDesktopWindow()
  %43 = load i32, i32* @GW_CHILD, align 4
  %44 = call i32* @GetWindow(i32 %42, i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @check_window_valid(i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %40
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @next_window(i32* %50, i32 %51, i32** %52, i32 %54)
  store i32* %55, i32** %8, align 8
  br label %56

56:                                               ; preds = %49, %40
  br label %57

57:                                               ; preds = %56, %36, %27
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @is_uwp_window(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = call i32* @get_uwp_actual_window(i32* %63)
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32*, i32** %8, align 8
  %69 = load i32**, i32*** %6, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32*, i32** %9, align 8
  store i32* %70, i32** %4, align 8
  br label %74

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %4, align 8
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

declare dso_local i32* @FindWindowEx(i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32* @GetWindow(i32, i32) #1

declare dso_local i32 @check_window_valid(i32*, i32) #1

declare dso_local i32* @next_window(i32*, i32, i32**, i32) #1

declare dso_local i64 @is_uwp_window(i32*) #1

declare dso_local i32* @get_uwp_actual_window(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
