; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_KEY.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_KEY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @handle_WM_KEY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_WM_KEY(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @HIWORD(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = and i32 %15, 32768
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @get_scan_code_from_ascii(i32 %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 256
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 69
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, -257
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ui_key_down(i32 %39, i32 %40)
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ui_key_up(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  ret i32 0
}

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @get_scan_code_from_ascii(i32) #1

declare dso_local i32 @ui_key_down(i32, i32) #1

declare dso_local i32 @ui_key_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
