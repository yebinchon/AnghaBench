; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/senseored/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/senseored/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bnumlock = common dso_local global i32 0, align 4
@KC_NLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  switch i32 %4, label %41 [
    i32 129, label %5
    i32 130, label %12
    i32 133, label %19
    i32 128, label %26
    i32 132, label %33
    i32 131, label %40
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @bnumlock, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @KC_NLCK, align 4
  %10 = call i32 @tap_code(i32 %9)
  br label %11

11:                                               ; preds = %8, %5
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* @bnumlock, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @KC_NLCK, align 4
  %17 = call i32 @tap_code(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  br label %48

19:                                               ; preds = %1
  %20 = load i32, i32* @bnumlock, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @KC_NLCK, align 4
  %24 = call i32 @tap_code(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %48

26:                                               ; preds = %1
  %27 = load i32, i32* @bnumlock, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @KC_NLCK, align 4
  %31 = call i32 @tap_code(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %48

33:                                               ; preds = %1
  %34 = load i32, i32* @bnumlock, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @KC_NLCK, align 4
  %38 = call i32 @tap_code(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %48

40:                                               ; preds = %1
  br label %48

41:                                               ; preds = %1
  %42 = load i32, i32* @bnumlock, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @KC_NLCK, align 4
  %46 = call i32 @tap_code(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %40, %39, %32, %25, %18, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @tap_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
