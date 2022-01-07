; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/rs/extr_rs.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/rs/extr_rs.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_COMM = common dso_local global i32 0, align 4
@KC_9 = common dso_local global i32 0, align 4
@KC_DOT = common dso_local global i32 0, align 4
@KC_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = call i32 @keylog_set_keymap(i32 %12, %struct.TYPE_7__* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %84 [
    i32 131, label %17
    i32 132, label %26
    i32 128, label %55
  ]

17:                                               ; preds = %15
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %88

26:                                               ; preds = %15
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = call i32 (...) @get_mods()
  %34 = load i32, i32* @KC_LSFT, align 4
  %35 = call i32 @MOD_BIT(i32 %34)
  %36 = load i32, i32* @KC_RSFT, align 4
  %37 = call i32 @MOD_BIT(i32 %36)
  %38 = or i32 %35, %37
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @KC_COMM, align 4
  %43 = call i32 @tap_code(i32 %42)
  br label %53

44:                                               ; preds = %32
  %45 = load i32, i32* @KC_LSFT, align 4
  %46 = call i32 @MOD_BIT(i32 %45)
  %47 = call i32 @register_mods(i32 %46)
  %48 = load i32, i32* @KC_9, align 4
  %49 = call i32 @tap_code(i32 %48)
  %50 = load i32, i32* @KC_LSFT, align 4
  %51 = call i32 @MOD_BIT(i32 %50)
  %52 = call i32 @unregister_mods(i32 %51)
  br label %53

53:                                               ; preds = %44, %41
  br label %54

54:                                               ; preds = %53, %26
  store i32 0, i32* %3, align 4
  br label %88

55:                                               ; preds = %15
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = call i32 (...) @get_mods()
  %63 = load i32, i32* @KC_LSFT, align 4
  %64 = call i32 @MOD_BIT(i32 %63)
  %65 = load i32, i32* @KC_RSFT, align 4
  %66 = call i32 @MOD_BIT(i32 %65)
  %67 = or i32 %64, %66
  %68 = and i32 %62, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @KC_DOT, align 4
  %72 = call i32 @tap_code(i32 %71)
  br label %82

73:                                               ; preds = %61
  %74 = load i32, i32* @KC_LSFT, align 4
  %75 = call i32 @MOD_BIT(i32 %74)
  %76 = call i32 @register_mods(i32 %75)
  %77 = load i32, i32* @KC_0, align 4
  %78 = call i32 @tap_code(i32 %77)
  %79 = load i32, i32* @KC_LSFT, align 4
  %80 = call i32 @MOD_BIT(i32 %79)
  %81 = call i32 @unregister_mods(i32 %80)
  br label %82

82:                                               ; preds = %73, %70
  br label %83

83:                                               ; preds = %82, %55
  store i32 0, i32* %3, align 4
  br label %88

84:                                               ; preds = %15
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = call i32 @process_record_keymap(i32 %85, %struct.TYPE_7__* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %83, %54, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @keylog_set_keymap(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i32 @process_record_keymap(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
