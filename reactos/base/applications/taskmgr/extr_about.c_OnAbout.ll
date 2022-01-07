; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_about.c_OnAbout.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_about.c_OnAbout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hInst = common dso_local global i32 0, align 4
@IDI_TASKMANAGER = common dso_local global i32 0, align 4
@IDS_APP_TITLE = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OnAbout() #0 {
  %1 = alloca [128 x i32], align 16
  %2 = alloca i32, align 4
  %3 = load i32, i32* @hInst, align 4
  %4 = load i32, i32* @IDI_TASKMANAGER, align 4
  %5 = call i32 @MAKEINTRESOURCE(i32 %4)
  %6 = call i32 @LoadIcon(i32 %3, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @hInst, align 4
  %8 = load i32, i32* @IDS_APP_TITLE, align 4
  %9 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 0
  %10 = call i32 @LoadStringW(i32 %7, i32 %8, i32* %9, i32 128)
  %11 = load i32, i32* @hMainWnd, align 4
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @ShellAboutW(i32 %11, i32* %12, i32 0, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @DeleteObject(i32 %15)
  ret void
}

declare dso_local i32 @LoadIcon(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ShellAboutW(i32, i32*, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
