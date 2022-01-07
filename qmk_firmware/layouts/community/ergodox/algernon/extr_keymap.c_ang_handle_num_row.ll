; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_ang_handle_num_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_ang_handle_num_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ang_handle_num_row.shifted = internal global [10 x i32] zeroinitializer, align 16
@keyboard_report = common dso_local global %struct.TYPE_7__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_1 = common dso_local global i64 0, align 8
@KC_2 = common dso_local global i64 0, align 8
@KC_8 = common dso_local global i64 0, align 8
@KC_4 = common dso_local global i64 0, align 8
@KC_6 = common dso_local global i64 0, align 8
@KC_5 = common dso_local global i64 0, align 8
@KC_3 = common dso_local global i64 0, align 8
@KC_7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_6__*)* @ang_handle_num_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ang_handle_num_row(i64 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub i64 %7, 136
  store i64 %8, i64* %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KC_LSFT, align 4
  %13 = call i32 @MOD_BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @get_oneshot_mods()
  %18 = load i32, i32* @KC_LSFT, align 4
  %19 = call i32 @MOD_BIT(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = call i32 (...) @has_oneshot_mods_timed_out()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* @ang_handle_num_row.shifted, i64 0, i64 %32
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %22, %16
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* @ang_handle_num_row.shifted, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @KC_1, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %6, align 8
  br label %66

44:                                               ; preds = %35
  %45 = load i64, i64* %3, align 8
  switch i64 %45, label %65 [
    i64 129, label %46
    i64 128, label %46
    i64 130, label %49
    i64 132, label %51
    i64 134, label %53
    i64 136, label %55
    i64 137, label %57
    i64 135, label %59
    i64 133, label %61
    i64 131, label %63
  ]

46:                                               ; preds = %44, %44
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* @ang_handle_num_row.shifted, i64 0, i64 %47
  store i32 0, i32* %48, align 4
  br label %80

49:                                               ; preds = %44
  %50 = load i64, i64* @KC_2, align 8
  store i64 %50, i64* %6, align 8
  br label %65

51:                                               ; preds = %44
  %52 = load i64, i64* @KC_8, align 8
  store i64 %52, i64* %6, align 8
  br label %65

53:                                               ; preds = %44
  %54 = load i64, i64* @KC_4, align 8
  store i64 %54, i64* %6, align 8
  br label %65

55:                                               ; preds = %44
  %56 = load i64, i64* @KC_6, align 8
  store i64 %56, i64* %6, align 8
  br label %65

57:                                               ; preds = %44
  %58 = load i64, i64* @KC_5, align 8
  store i64 %58, i64* %6, align 8
  br label %65

59:                                               ; preds = %44
  %60 = load i64, i64* @KC_1, align 8
  store i64 %60, i64* %6, align 8
  br label %65

61:                                               ; preds = %44
  %62 = load i64, i64* @KC_3, align 8
  store i64 %62, i64* %6, align 8
  br label %65

63:                                               ; preds = %44
  %64 = load i64, i64* @KC_7, align 8
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %44, %63, %61, %59, %57, %55, %53, %51, %49
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @register_code(i64 %73)
  br label %80

75:                                               ; preds = %66
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @unregister_code(i64 %76)
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* @ang_handle_num_row.shifted, i64 0, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %46, %75, %72
  ret void
}

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @get_oneshot_mods(...) #1

declare dso_local i32 @has_oneshot_mods_timed_out(...) #1

declare dso_local i32 @register_code(i64) #1

declare dso_local i32 @unregister_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
