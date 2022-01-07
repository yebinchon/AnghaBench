; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_SetConsoleIcon.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_SetConsoleIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@WM_SETICON = common dso_local global i32 0, align 4
@ICON_SMALL = common dso_local global i64 0, align 8
@ICON_BIG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @SetConsoleIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetConsoleIcon(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @WM_SETICON, align 4
  %20 = load i64, i64* @ICON_SMALL, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %6, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = call i64 @SendMessage(i32* %18, i32 %19, i32 %21, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @WM_SETICON, align 4
  %32 = load i64, i64* @ICON_BIG, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %7, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i64 @SendMessage(i32* %30, i32 %31, i32 %33, i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  br label %38

38:                                               ; preds = %29, %26
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @SendMessage(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
