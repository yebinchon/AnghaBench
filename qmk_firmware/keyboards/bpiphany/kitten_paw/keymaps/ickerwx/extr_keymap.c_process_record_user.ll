; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@layer_state = common dso_local global i32 0, align 4
@PROG2 = common dso_local global i64 0, align 8
@KC_A = common dso_local global i64 0, align 8
@KC_EXSEL = common dso_local global i64 0, align 8
@KC_NONUS_BSLASH = common dso_local global i64 0, align 8
@KC_RBRC = common dso_local global i64 0, align 8
@KC_BSLS = common dso_local global i64 0, align 8
@KC_GRV = common dso_local global i64 0, align 8
@MOD_LSFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* @layer_state, align 4
  %7 = call i64 @biton32(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @PROG2, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @KC_A, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @KC_EXSEL, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @KC_NONUS_BSLASH, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @KC_RBRC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @KC_BSLS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @KC_GRV, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @MOD_LSFT, align 4
  %43 = call i32 @register_mods(i32 %42)
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @MOD_LSFT, align 4
  %46 = call i32 @unregister_mods(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %31, %27, %23, %19, %15, %11
  br label %49

49:                                               ; preds = %48, %2
  ret i32 1
}

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
