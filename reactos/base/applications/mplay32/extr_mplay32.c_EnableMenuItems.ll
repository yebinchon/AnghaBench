; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_EnableMenuItems.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_EnableMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hMainMenu = common dso_local global i32 0, align 4
@IDM_CLOSE_FILE = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@wDeviceId = common dso_local global i32 0, align 4
@MCI_CONFIGURE = common dso_local global i32 0, align 4
@MCI_TEST = common dso_local global i32 0, align 4
@IDM_DEVPROPS = common dso_local global i32 0, align 4
@MCI_WINDOW = common dso_local global i32 0, align 4
@MCI_DGV_WINDOW_HWND = common dso_local global i32 0, align 4
@MCI_WHERE = common dso_local global i32 0, align 4
@MCI_DGV_WHERE_SOURCE = common dso_local global i32 0, align 4
@IDM_SWITCHVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnableMenuItems(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @hMainMenu, align 4
  %8 = load i32, i32* @IDM_CLOSE_FILE, align 4
  %9 = load i32, i32* @MF_BYCOMMAND, align 4
  %10 = load i32, i32* @MF_ENABLED, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @EnableMenuItem(i32 %7, i32 %8, i32 %11)
  %13 = load i32, i32* @wDeviceId, align 4
  %14 = load i32, i32* @MCI_CONFIGURE, align 4
  %15 = load i32, i32* @MCI_TEST, align 4
  %16 = ptrtoint i32* %4 to i32
  %17 = call i64 @mciSendCommand(i32 %13, i32 %14, i32 %15, i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @hMainMenu, align 4
  %22 = load i32, i32* @IDM_DEVPROPS, align 4
  %23 = load i32, i32* @MF_BYCOMMAND, align 4
  %24 = load i32, i32* @MF_ENABLED, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @EnableMenuItem(i32 %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @wDeviceId, align 4
  %31 = load i32, i32* @MCI_WINDOW, align 4
  %32 = load i32, i32* @MCI_DGV_WINDOW_HWND, align 4
  %33 = load i32, i32* @MCI_TEST, align 4
  %34 = or i32 %32, %33
  %35 = ptrtoint %struct.TYPE_2__* %6 to i32
  %36 = call i64 @mciSendCommand(i32 %30, i32 %31, i32 %34, i32 %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @wDeviceId, align 4
  %41 = load i32, i32* @MCI_WHERE, align 4
  %42 = load i32, i32* @MCI_DGV_WHERE_SOURCE, align 4
  %43 = load i32, i32* @MCI_TEST, align 4
  %44 = or i32 %42, %43
  %45 = ptrtoint i32* %5 to i32
  %46 = call i64 @mciSendCommand(i32 %40, i32 %41, i32 %44, i32 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @hMainMenu, align 4
  %51 = load i32, i32* @IDM_SWITCHVIEW, align 4
  %52 = load i32, i32* @MF_BYCOMMAND, align 4
  %53 = load i32, i32* @MF_ENABLED, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @EnableMenuItem(i32 %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %49, %39
  br label %57

57:                                               ; preds = %56, %27
  ret void
}

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i64 @mciSendCommand(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
