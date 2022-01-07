; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_AddTrayIcon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_AddTrayIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@CCH_LAYOUT_ID = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@NIF_ICON = common dso_local global i32 0, align 4
@NIF_MESSAGE = common dso_local global i32 0, align 4
@NIF_TIP = common dso_local global i32 0, align 4
@WM_NOTIFYICONMSG = common dso_local global i32 0, align 4
@NIM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @AddTrayIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddTrayIcon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @ARRAYSIZE(i32* %12)
  %18 = call i32 @GetLayoutID(i32 %16, i32* %12, i32 %17)
  %19 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @ARRAYSIZE(i32* %15)
  %21 = call i32 @GetLayoutName(i32 %19, i32* %15, i32 %20)
  %22 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 40)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 40, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @NIF_ICON, align 4
  %28 = load i32, i32* @NIF_MESSAGE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @NIF_TIP, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @WM_NOTIFYICONMSG, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = call i32 @CreateTrayIcon(i32* %12)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ARRAYSIZE(i32* %40)
  %42 = call i32 @StringCchCopy(i32* %38, i32 %41, i32* %15)
  %43 = load i32, i32* @NIM_ADD, align 4
  %44 = call i32 @Shell_NotifyIcon(i32 %43, %struct.TYPE_4__* %4)
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetLayoutID(i32, i32*, i32) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @GetLayoutName(i32, i32*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @CreateTrayIcon(i32*) #2

declare dso_local i32 @StringCchCopy(i32*, i32, i32*) #2

declare dso_local i32 @Shell_NotifyIcon(i32, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
