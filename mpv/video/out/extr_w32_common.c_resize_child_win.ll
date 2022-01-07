; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_resize_child_win.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_resize_child_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@HINST_THISCOMPONENT = common dso_local global i64 0, align 8
@SWP_ASYNCWINDOWPOS = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOOWNERZORDER = common dso_local global i32 0, align 4
@SWP_NOSENDCHANGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @resize_child_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_child_win(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @get_window_class()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @MAKEINTATOM(i32 %9)
  %11 = trunc i64 %10 to i32
  %12 = call i32 @FindWindowExW(i32 %8, i32* null, i32 %11, i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %53

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GWLP_HINSTANCE, align 4
  %19 = call i64 @GetWindowLongPtrW(i32 %17, i32 %18)
  %20 = load i64, i64* @HINST_THISCOMPONENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %53

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @GetClientRect(i32 %24, %struct.TYPE_5__* %5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %53

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @GetClientRect(i32 %29, %struct.TYPE_5__* %6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %53

33:                                               ; preds = %28
  %34 = call i64 @EqualRect(%struct.TYPE_5__* %5, %struct.TYPE_5__* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %53

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SWP_ASYNCWINDOWPOS, align 4
  %44 = load i32, i32* @SWP_NOACTIVATE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SWP_NOZORDER, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SWP_NOSENDCHANGING, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @SetWindowPos(i32 %38, i32* null, i32 0, i32 0, i32 %40, i32 %42, i32 %51)
  br label %53

53:                                               ; preds = %37, %36, %32, %27, %22, %15
  ret void
}

declare dso_local i32 @get_window_class(...) #1

declare dso_local i32 @FindWindowExW(i32, i32*, i32, i32*) #1

declare dso_local i64 @MAKEINTATOM(i32) #1

declare dso_local i64 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @EqualRect(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
