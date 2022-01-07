; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_EnableSearchMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_main.c_NOTEPAD_EnableSearchMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CMD_SEARCH = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_DISABLED = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@CMD_SEARCH_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NOTEPAD_EnableSearchMenu() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %3 = load i32, i32* @CMD_SEARCH, align 4
  %4 = load i32, i32* @MF_BYCOMMAND, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %6 = call i64 @GetWindowTextLength(i32 %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @MF_DISABLED, align 4
  %10 = load i32, i32* @MF_GRAYED, align 4
  %11 = or i32 %9, %10
  br label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @MF_ENABLED, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %16 = or i32 %4, %15
  %17 = call i32 @EnableMenuItem(i32 %2, i32 %3, i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 1), align 4
  %19 = load i32, i32* @CMD_SEARCH_NEXT, align 4
  %20 = load i32, i32* @MF_BYCOMMAND, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %22 = call i64 @GetWindowTextLength(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @MF_DISABLED, align 4
  %26 = load i32, i32* @MF_GRAYED, align 4
  %27 = or i32 %25, %26
  br label %30

28:                                               ; preds = %14
  %29 = load i32, i32* @MF_ENABLED, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  %32 = or i32 %20, %31
  %33 = call i32 @EnableMenuItem(i32 %18, i32 %19, i32 %32)
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i64 @GetWindowTextLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
