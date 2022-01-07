; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_DisableMenuItems.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_DisableMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hMainMenu = common dso_local global i32 0, align 4
@IDM_CLOSE_FILE = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@IDM_DEVPROPS = common dso_local global i32 0, align 4
@IDM_SWITCHVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DisableMenuItems() #0 {
  %1 = load i32, i32* @hMainMenu, align 4
  %2 = load i32, i32* @IDM_CLOSE_FILE, align 4
  %3 = load i32, i32* @MF_BYCOMMAND, align 4
  %4 = load i32, i32* @MF_GRAYED, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @EnableMenuItem(i32 %1, i32 %2, i32 %5)
  %7 = load i32, i32* @hMainMenu, align 4
  %8 = load i32, i32* @IDM_DEVPROPS, align 4
  %9 = load i32, i32* @MF_BYCOMMAND, align 4
  %10 = load i32, i32* @MF_GRAYED, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @EnableMenuItem(i32 %7, i32 %8, i32 %11)
  %13 = load i32, i32* @hMainMenu, align 4
  %14 = load i32, i32* @IDM_SWITCHVIEW, align 4
  %15 = load i32, i32* @MF_BYCOMMAND, align 4
  %16 = load i32, i32* @MF_GRAYED, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @EnableMenuItem(i32 %13, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
