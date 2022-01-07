; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/dhertz/extr_dhertz.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/dhertz/extr_dhertz.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@KC_LGUI = common dso_local global i32 0, align 4
@X_TAB = common dso_local global i32 0, align 4
@KC_RGUI = common dso_local global i32 0, align 4
@X_GRAVE = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@X_NONUS_BSLASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"country_iso_alpha2_code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 131, label %7
    i32 133, label %13
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = load i32, i32* @KC_LGUI, align 4
  %10 = load i32, i32* @X_TAB, align 4
  %11 = call i8* @SS_TAP(i32 %10)
  %12 = call i32 @mod_or_mod_with_macro(%struct.TYPE_7__* %8, i32 %9, i8* %11)
  store i32 0, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = load i32, i32* @KC_RGUI, align 4
  %16 = load i32, i32* @X_GRAVE, align 4
  %17 = call i8* @SS_TAP(i32 %16)
  %18 = call i32 @mod_or_mod_with_macro(%struct.TYPE_7__* %14, i32 %15, i8* %17)
  store i32 0, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %56 [
    i32 129, label %27
    i32 130, label %44
    i32 134, label %47
    i32 132, label %51
    i32 128, label %54
  ]

27:                                               ; preds = %25
  %28 = call i32 (...) @get_mods()
  %29 = load i32, i32* @KC_LSFT, align 4
  %30 = call i32 @MOD_BIT(i32 %29)
  %31 = load i32, i32* @KC_RSFT, align 4
  %32 = call i32 @MOD_BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @X_NONUS_BSLASH, align 4
  %38 = call i8* @SS_TAP(i32 %37)
  %39 = call i32 @SEND_STRING(i8* %38)
  br label %43

40:                                               ; preds = %27
  %41 = call i8* @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @SEND_STRING(i8* %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %60

44:                                               ; preds = %25
  %45 = call i8* @SS_LCTRL(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @SEND_STRING(i8* %45)
  br label %60

47:                                               ; preds = %25
  %48 = call i8* @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i8* @SS_LGUI(i8* %48)
  %50 = call i32 @SEND_STRING(i8* %49)
  br label %60

51:                                               ; preds = %25
  %52 = call i8* @SS_LGUI(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 @SEND_STRING(i8* %52)
  br label %60

54:                                               ; preds = %25
  %55 = call i32 @SEND_STRING(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %60

56:                                               ; preds = %25
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = call i32 @process_record_keymap(i32 %57, %struct.TYPE_7__* %58)
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %54, %51, %47, %44, %43
  store i32 0, i32* %3, align 4
  br label %65

61:                                               ; preds = %19
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = call i32 @process_record_keymap(i32 %62, %struct.TYPE_7__* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %60, %56, %13, %7
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mod_or_mod_with_macro(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i8* @SS_TAP(i32) #1

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i8* @SS_LALT(i8*) #1

declare dso_local i8* @SS_LCTRL(i8*) #1

declare dso_local i8* @SS_LGUI(i8*) #1

declare dso_local i32 @process_record_keymap(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
