; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bepo_csa/extr_keymap.c_send_unicode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bepo_csa/extr_keymap.c_send_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_LALT = common dso_local global i32 0, align 4
@KC_PPLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_unicode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @KC_LALT, align 4
  %5 = call i32 @register_code(i32 %4)
  %6 = load i32, i32* @KC_PPLS, align 4
  %7 = call i32 @register_code(i32 %6)
  %8 = load i32, i32* @KC_PPLS, align 4
  %9 = call i32 @unregister_code(i32 %8)
  store i32 12, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %14, %15
  %17 = and i32 %16, 15
  %18 = call i32 @hextokeycode(i32 %17)
  %19 = call i32 @register_code(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %20, %21
  %23 = and i32 %22, 15
  %24 = call i32 @hextokeycode(i32 %23)
  %25 = call i32 @unregister_code(i32 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 4
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* @KC_LALT, align 4
  %31 = call i32 @unregister_code(i32 %30)
  ret void
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @hextokeycode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
