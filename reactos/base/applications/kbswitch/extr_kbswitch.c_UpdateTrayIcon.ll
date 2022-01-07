; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_UpdateTrayIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_UpdateTrayIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@NIF_ICON = common dso_local global i32 0, align 4
@NIF_MESSAGE = common dso_local global i32 0, align 4
@NIF_TIP = common dso_local global i32 0, align 4
@WM_NOTIFYICONMSG = common dso_local global i32 0, align 4
@NIM_MODIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @UpdateTrayIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateTrayIcon(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 28)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 28, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* @NIF_ICON, align 4
  %15 = load i32, i32* @NIF_MESSAGE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NIF_TIP, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @WM_NOTIFYICONMSG, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @CreateTrayIcon(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ARRAYSIZE(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @StringCchCopy(i32 %26, i32 %29, i32 %30)
  %32 = load i32, i32* @NIM_MODIFY, align 4
  %33 = call i32 @Shell_NotifyIcon(i32 %32, %struct.TYPE_4__* %8)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @CreateTrayIcon(i32) #1

declare dso_local i32 @StringCchCopy(i32, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i32 @Shell_NotifyIcon(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
