; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_NCCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_NCCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GWL_STYLE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_DLGFRAME = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@TTS_BALLOON = common dso_local global i32 0, align 4
@WS_EX_TOOLWINDOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @TOOLTIPS_NCCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLTIPS_NCCreate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @GWL_STYLE, align 4
  %7 = call i32 @GetWindowLongW(i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GWL_EXSTYLE, align 4
  %10 = call i32 @GetWindowLongW(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @WS_CHILD, align 4
  %12 = load i32, i32* @WS_BORDER, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WS_DLGFRAME, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @WS_POPUP, align 4
  %20 = load i32, i32* @WS_BORDER, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @TTS_BALLOON, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @WS_BORDER, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %1
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @GWL_STYLE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @SetWindowLongW(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @GWL_EXSTYLE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @SetWindowLongW(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @TRUE, align 4
  ret i32 %47
}

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
