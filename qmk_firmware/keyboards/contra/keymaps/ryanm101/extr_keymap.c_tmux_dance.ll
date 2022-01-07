; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/contra/keymaps/ryanm101/extr_keymap.c_tmux_dance.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/contra/keymaps/ryanm101/extr_keymap.c_tmux_dance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"tmux\00", align 1
@KC_ENT = common dso_local global i32 0, align 4
@KC_LCTRL = common dso_local global i32 0, align 4
@KC_B = common dso_local global i32 0, align 4
@KC_LSHIFT = common dso_local global i32 0, align 4
@KC_5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmux_dance(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @KC_ENT, align 4
  %12 = call i32 @register_code(i32 %11)
  %13 = load i32, i32* @KC_ENT, align 4
  %14 = call i32 @unregister_code(i32 %13)
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load i32, i32* @KC_LCTRL, align 4
  %22 = call i32 @MOD_BIT(i32 %21)
  %23 = call i32 @register_mods(i32 %22)
  %24 = load i32, i32* @KC_B, align 4
  %25 = call i32 @register_code(i32 %24)
  %26 = load i32, i32* @KC_B, align 4
  %27 = call i32 @unregister_code(i32 %26)
  %28 = load i32, i32* @KC_LCTRL, align 4
  %29 = call i32 @MOD_BIT(i32 %28)
  %30 = call i32 @unregister_mods(i32 %29)
  %31 = load i32, i32* @KC_LSHIFT, align 4
  %32 = call i32 @MOD_BIT(i32 %31)
  %33 = call i32 @register_mods(i32 %32)
  %34 = load i32, i32* @KC_5, align 4
  %35 = call i32 @register_code(i32 %34)
  %36 = load i32, i32* @KC_5, align 4
  %37 = call i32 @unregister_code(i32 %36)
  %38 = load i32, i32* @KC_LSHIFT, align 4
  %39 = call i32 @MOD_BIT(i32 %38)
  %40 = call i32 @unregister_mods(i32 %39)
  br label %41

41:                                               ; preds = %20, %15
  br label %42

42:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
