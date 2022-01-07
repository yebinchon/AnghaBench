; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_InitMenuPopup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_InitMenuPopup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CMD_DELETE = common dso_local global i64 0, align 8
@CMD_SAVE_AS = common dso_local global i64 0, align 8
@MF_GRAYED = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @InitMenuPopup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitMenuPopup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @GetMenuItemID(i32 %5, i32 0)
  %7 = load i64, i64* @CMD_DELETE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @GetMenuItemID(i32 %10, i32 1)
  %12 = load i64, i64* @CMD_SAVE_AS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %9, %2
  %15 = call i64 (...) @CountClipboardFormats()
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i64, i64* @CMD_DELETE, align 8
  %20 = load i32, i32* @MF_GRAYED, align 4
  %21 = call i32 @EnableMenuItem(i32 %18, i64 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* @CMD_SAVE_AS, align 8
  %24 = load i32, i32* @MF_GRAYED, align 4
  %25 = call i32 @EnableMenuItem(i32 %22, i64 %23, i32 %24)
  br label %35

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* @CMD_DELETE, align 8
  %29 = load i32, i32* @MF_ENABLED, align 4
  %30 = call i32 @EnableMenuItem(i32 %27, i64 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i64, i64* @CMD_SAVE_AS, align 8
  %33 = load i32, i32* @MF_ENABLED, align 4
  %34 = call i32 @EnableMenuItem(i32 %31, i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %17
  br label %36

36:                                               ; preds = %35, %9
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Globals, i32 0, i32 0), align 4
  %38 = call i32 @DrawMenuBar(i32 %37)
  ret void
}

declare dso_local i64 @GetMenuItemID(i32, i32) #1

declare dso_local i64 @CountClipboardFormats(...) #1

declare dso_local i32 @EnableMenuItem(i32, i64, i32) #1

declare dso_local i32 @DrawMenuBar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
