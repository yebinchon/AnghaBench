; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_trayicon.c_TrayIcon_ShellUpdateTrayIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_trayicon.c_TrayIcon_ShellUpdateTrayIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i64, i32 }

@hMainWnd = common dso_local global i32 0, align 4
@NIF_ICON = common dso_local global i32 0, align 4
@NIF_MESSAGE = common dso_local global i32 0, align 4
@NIF_TIP = common dso_local global i32 0, align 4
@WM_ONTRAYICON = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDS_MSG_TRAYICONCPUUSAGE = common dso_local global i32 0, align 4
@NIM_MODIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TrayIcon_ShellUpdateTrayIcon() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [64 x i32], align 16
  store i32* null, i32** %2, align 8
  %5 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 48)
  %6 = call i32* (...) @TrayIcon_GetProcessorUsageIcon()
  store i32* %6, i32** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 48, i32* %7, align 8
  %8 = load i32, i32* @hMainWnd, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @NIF_ICON, align 4
  %12 = load i32, i32* @NIF_MESSAGE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NIF_TIP, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @WM_ONTRAYICON, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i32 %17, i32* %18, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* @hInst, align 4
  %22 = load i32, i32* @IDS_MSG_TRAYICONCPUUSAGE, align 4
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %24 = call i32 @LoadStringW(i32 %21, i32 %22, i32* %23, i32 64)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %28 = call i32 (...) @PerfDataGetProcessorUsage()
  %29 = call i32 @wsprintfW(i32 %26, i32* %27, i32 %28)
  %30 = load i32, i32* @NIM_MODIFY, align 4
  %31 = call i32 @Shell_NotifyIconW(i32 %30, %struct.TYPE_4__* %1)
  store i32 %31, i32* %3, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %0
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @DestroyIcon(i32* %35)
  br label %37

37:                                               ; preds = %34, %0
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @TrayIcon_GetProcessorUsageIcon(...) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @wsprintfW(i32, i32*, i32) #1

declare dso_local i32 @PerfDataGetProcessorUsage(...) #1

declare dso_local i32 @Shell_NotifyIconW(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @DestroyIcon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
