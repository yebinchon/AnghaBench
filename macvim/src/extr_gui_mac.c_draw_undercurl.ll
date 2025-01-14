; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_mac.c_draw_undercurl.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_mac.c_draw_undercurl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@draw_undercurl.val = internal constant [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2], align 16
@specialColor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @draw_undercurl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_undercurl(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @FILL_Y(i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = call i32 @RGBForeColor(i32* @specialColor)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @FILL_X(i32 %17)
  %19 = srem i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* @draw_undercurl.val, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @FILL_X(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @MoveTo(i32 %24, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @FILL_X(i32 %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %49, %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @FILL_X(i32 %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = srem i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* @draw_undercurl.val, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @LineTo(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %31

52:                                               ; preds = %31
  ret void
}

declare dso_local i32 @FILL_Y(i32) #1

declare dso_local i32 @RGBForeColor(i32*) #1

declare dso_local i32 @FILL_X(i32) #1

declare dso_local i32 @MoveTo(i32, i32) #1

declare dso_local i32 @LineTo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
