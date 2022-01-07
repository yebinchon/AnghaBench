; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_framewnd.c_toggle_child.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_framewnd.c_toggle_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hMenuFrame = common dso_local global i32 0, align 4
@ID_VIEW_MENU = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @toggle_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_child(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @IsWindowVisible(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* @hMenuFrame, align 4
  %12 = load i32, i32* @ID_VIEW_MENU, align 4
  %13 = call i32 @GetSubMenu(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MF_BYCOMMAND, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @MF_BYCOMMAND, align 4
  %22 = load i32, i32* @MF_CHECKED, align 4
  %23 = or i32 %21, %22
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = call i32 @CheckMenuItem(i32 %14, i32 %15, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @SW_HIDE, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @SW_SHOW, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @ShowWindow(i32 %27, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @resize_frame_client(i32 %37)
  ret void
}

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @resize_frame_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
