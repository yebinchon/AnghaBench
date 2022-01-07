; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@KC_ESC = common dso_local global i64 0, align 8
@layer_state = common dso_local global i64 0, align 8
@HUN = common dso_local global i64 0, align 8
@time_travel = common dso_local global i64 0, align 8
@last4 = common dso_local global i64* null, align 8
@KC_D = common dso_local global i64 0, align 8
@KC_A = common dso_local global i64 0, align 8
@KC_T = common dso_local global i64 0, align 8
@KC_E = common dso_local global i64 0, align 8
@KC_SPC = common dso_local global i32 0, align 4
@KC_MINS = common dso_local global i32 0, align 4
@KC_QUOT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_EQL = common dso_local global i32 0, align 4
@KC_4 = common dso_local global i32 0, align 4
@KC_Y = common dso_local global i32 0, align 4
@KC_S = common dso_local global i32 0, align 4
@ADORE = common dso_local global i64 0, align 8
@BASE = common dso_local global i64 0, align 8
@is_adore = common dso_local global i64 0, align 8
@log_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @KC_ESC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  %18 = call i64 (...) @get_oneshot_mods()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = call i32 (...) @has_oneshot_mods_timed_out()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @clear_oneshot_mods()
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %20, %17
  %26 = load i64, i64* @layer_state, align 8
  %27 = load i64, i64* @HUN, align 8
  %28 = shl i64 1, %27
  %29 = and i64 %26, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @HUN, align 8
  %33 = call i32 @layer_off(i64 %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %116

36:                                               ; preds = %11, %2
  %37 = load i64, i64* @time_travel, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %115

39:                                               ; preds = %36
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %115, label %45

45:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %47, 3
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i64*, i64** @last4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add nsw i64 %51, 1
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** @last4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %49
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load i64, i64* %4, align 8
  %63 = load i64*, i64** @last4, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 3
  store i64 %62, i64* %64, align 8
  %65 = load i64*, i64** @last4, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @KC_D, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %114

70:                                               ; preds = %61
  %71 = load i64*, i64** @last4, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @KC_A, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %70
  %77 = load i64*, i64** @last4, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KC_T, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load i64*, i64** @last4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @KC_E, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  %89 = load i64, i64* @KC_E, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @KC_SPC, align 4
  %92 = load i32, i32* @KC_MINS, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @KC_D, align 8
  %95 = load i32, i32* @KC_SPC, align 4
  %96 = load i32, i32* @KC_QUOT, align 4
  %97 = call i32 (i32, i32, i64, i64, i32, i32, i32, ...) @ang_tap(i32 %90, i32 %91, i64 %93, i64 %94, i32 %95, i32 %96, i32 0)
  %98 = load i32, i32* @KC_RSFT, align 4
  %99 = call i32 @register_code(i32 %98)
  %100 = load i32, i32* @KC_EQL, align 4
  %101 = call i32 @register_code(i32 %100)
  %102 = load i32, i32* @KC_EQL, align 4
  %103 = call i32 @unregister_code(i32 %102)
  %104 = load i32, i32* @KC_RSFT, align 4
  %105 = call i32 @unregister_code(i32 %104)
  %106 = load i32, i32* @KC_4, align 4
  %107 = load i32, i32* @KC_SPC, align 4
  %108 = load i64, i64* @KC_D, align 8
  %109 = load i64, i64* @KC_A, align 8
  %110 = load i32, i32* @KC_Y, align 4
  %111 = load i32, i32* @KC_S, align 4
  %112 = load i32, i32* @KC_QUOT, align 4
  %113 = call i32 (i32, i32, i64, i64, i32, i32, i32, ...) @ang_tap(i32 %106, i32 %107, i64 %108, i64 %109, i32 %110, i32 %111, i32 %112, i32 0)
  store i32 0, i32* %3, align 4
  br label %116

114:                                              ; preds = %82, %76, %70, %61
  br label %115

115:                                              ; preds = %114, %39, %36
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %88, %34
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @get_oneshot_mods(...) #1

declare dso_local i32 @has_oneshot_mods_timed_out(...) #1

declare dso_local i32 @clear_oneshot_mods(...) #1

declare dso_local i32 @layer_off(i64) #1

declare dso_local i32 @ang_tap(i32, i32, i64, i64, i32, i32, i32, ...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
