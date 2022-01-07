; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/snowkuma/extr_keymap.c_tilde_home.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/snowkuma/extr_keymap.c_tilde_home.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KC_LSFT = common dso_local global i32 0, align 4
@KC_GRV = common dso_local global i32 0, align 4
@KC_SLSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tilde_home(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @KC_LSFT, align 4
  %11 = call i32 @register_code(i32 %10)
  %12 = load i32, i32* @KC_GRV, align 4
  %13 = call i32 @register_code(i32 %12)
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* @KC_LSFT, align 4
  %16 = call i32 @register_code(i32 %15)
  %17 = load i32, i32* @KC_GRV, align 4
  %18 = call i32 @register_code(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i32, i32* @KC_GRV, align 4
  %25 = call i32 @unregister_code(i32 %24)
  %26 = load i32, i32* @KC_LSFT, align 4
  %27 = call i32 @unregister_code(i32 %26)
  %28 = load i32, i32* @KC_SLSH, align 4
  %29 = call i32 @register_code(i32 %28)
  br label %30

30:                                               ; preds = %23, %14
  br label %31

31:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
