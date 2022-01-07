; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_on_key_esc.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_on_key_esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@KEY_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_key_esc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @nodelay(i32* %7, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @keypad(i32* %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @wgetch(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @wgetch(i32* %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %20, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @wgetch(i32* %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ERR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %17, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @nodelay(i32* %25, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @keypad(i32* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @KEY_ESC, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ERR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @KEY_ESC, align 4
  store i32 %39, i32* %2, align 4
  br label %57

40:                                               ; preds = %34, %24
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ERR, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @KEY_ESC, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ERR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ungetch(i32 %53)
  br label %55

55:                                               ; preds = %52, %48, %44, %40
  br label %56

56:                                               ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @nodelay(i32*, i32) #1

declare dso_local i32 @keypad(i32*, i32) #1

declare dso_local i32 @wgetch(i32*) #1

declare dso_local i32 @ungetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
