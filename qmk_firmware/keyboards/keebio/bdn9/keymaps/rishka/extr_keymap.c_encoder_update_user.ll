; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/rishka/extr_keymap.c_encoder_update_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/rishka/extr_keymap.c_encoder_update_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_VOLD = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"new: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_user(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @KC_VOLD, align 4
  %16 = call i32 @tap_code(i32 %15)
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @KC_VOLU, align 4
  %19 = call i32 @tap_code(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  br label %60

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %29

28:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %27
  store i32 2, i32* %6, align 4
  %30 = load i32, i32* @layer_state, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = srem i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @uprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @layer_on(i32 %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %55, %29
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @layer_off(i32 %52)
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %43

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %21
  br label %60

60:                                               ; preds = %59, %20
  ret void
}

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @uprintf(i8*, i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
