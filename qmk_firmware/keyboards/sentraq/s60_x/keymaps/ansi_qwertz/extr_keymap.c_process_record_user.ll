; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/sentraq/s60_x/keymaps/ansi_qwertz/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/sentraq/s60_x/keymaps/ansi_qwertz/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@keyboard_report = common dso_local global %struct.TYPE_8__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RALT = common dso_local global i32 0, align 4
@KC_QUOT = common dso_local global i64 0, align 8
@KC_GRV = common dso_local global i64 0, align 8
@KC_6 = common dso_local global i64 0, align 8
@KC_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keyboard_report, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KC_LSFT, align 4
  %12 = call i32 @MOD_BIT(i32 %11)
  %13 = load i32, i32* @KC_LSFT, align 4
  %14 = call i32 @MOD_BIT(i32 %13)
  %15 = or i32 %12, %14
  %16 = and i32 %10, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keyboard_report, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @KC_RALT, align 4
  %21 = call i32 @MOD_BIT(i32 %20)
  %22 = and i32 %19, %21
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @KC_QUOT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26, %2
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @KC_GRV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @KC_6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37, %29, %26
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @register_code(i64 %47)
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @unregister_code(i64 %49)
  %51 = load i64, i64* @KC_SPACE, align 8
  %52 = call i32 @register_code(i64 %51)
  %53 = load i64, i64* @KC_SPACE, align 8
  %54 = call i32 @unregister_code(i64 %53)
  br label %55

55:                                               ; preds = %46, %40
  store i32 0, i32* %3, align 4
  br label %60

56:                                               ; preds = %37, %33
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = call i32 @process_german(i64 %57, %struct.TYPE_7__* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @register_code(i64) #1

declare dso_local i32 @unregister_code(i64) #1

declare dso_local i32 @process_german(i64, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
