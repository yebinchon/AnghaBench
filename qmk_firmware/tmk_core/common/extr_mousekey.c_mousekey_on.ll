; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_on.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@KC_MS_UP = common dso_local global i64 0, align 8
@mouse_report = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KC_MS_DOWN = common dso_local global i64 0, align 8
@KC_MS_LEFT = common dso_local global i64 0, align 8
@KC_MS_RIGHT = common dso_local global i64 0, align 8
@KC_MS_WH_UP = common dso_local global i64 0, align 8
@KC_MS_WH_DOWN = common dso_local global i64 0, align 8
@KC_MS_WH_LEFT = common dso_local global i64 0, align 8
@KC_MS_WH_RIGHT = common dso_local global i64 0, align 8
@KC_MS_BTN1 = common dso_local global i64 0, align 8
@MOUSE_BTN1 = common dso_local global i32 0, align 4
@KC_MS_BTN2 = common dso_local global i64 0, align 8
@MOUSE_BTN2 = common dso_local global i32 0, align 4
@KC_MS_BTN3 = common dso_local global i64 0, align 8
@MOUSE_BTN3 = common dso_local global i32 0, align 4
@KC_MS_BTN4 = common dso_local global i64 0, align 8
@MOUSE_BTN4 = common dso_local global i32 0, align 4
@KC_MS_BTN5 = common dso_local global i64 0, align 8
@MOUSE_BTN5 = common dso_local global i32 0, align 4
@KC_MS_ACCEL0 = common dso_local global i64 0, align 8
@mousekey_accel = common dso_local global i32 0, align 4
@KC_MS_ACCEL1 = common dso_local global i64 0, align 8
@KC_MS_ACCEL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mousekey_on(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @KC_MS_UP, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 (...) @move_unit()
  %8 = mul nsw i32 %7, -1
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  br label %130

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @KC_MS_DOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @move_unit()
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  br label %129

15:                                               ; preds = %9
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @KC_MS_LEFT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 (...) @move_unit()
  %21 = mul nsw i32 %20, -1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  br label %128

22:                                               ; preds = %15
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @KC_MS_RIGHT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @move_unit()
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  br label %127

28:                                               ; preds = %22
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @KC_MS_WH_UP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @wheel_unit()
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  br label %126

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @KC_MS_WH_DOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 (...) @wheel_unit()
  %40 = mul nsw i32 %39, -1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  br label %125

41:                                               ; preds = %34
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* @KC_MS_WH_LEFT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 (...) @wheel_unit()
  %47 = mul nsw i32 %46, -1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  br label %124

48:                                               ; preds = %41
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @KC_MS_WH_RIGHT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @wheel_unit()
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  br label %123

54:                                               ; preds = %48
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @KC_MS_BTN1, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @MOUSE_BTN1, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  br label %122

62:                                               ; preds = %54
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @KC_MS_BTN2, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @MOUSE_BTN2, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  br label %121

70:                                               ; preds = %62
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* @KC_MS_BTN3, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @MOUSE_BTN3, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  br label %120

78:                                               ; preds = %70
  %79 = load i64, i64* %2, align 8
  %80 = load i64, i64* @KC_MS_BTN4, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* @MOUSE_BTN4, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  br label %119

86:                                               ; preds = %78
  %87 = load i64, i64* %2, align 8
  %88 = load i64, i64* @KC_MS_BTN5, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @MOUSE_BTN5, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  br label %118

94:                                               ; preds = %86
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @KC_MS_ACCEL0, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @mousekey_accel, align 4
  %100 = or i32 %99, 1
  store i32 %100, i32* @mousekey_accel, align 4
  br label %117

101:                                              ; preds = %94
  %102 = load i64, i64* %2, align 8
  %103 = load i64, i64* @KC_MS_ACCEL1, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @mousekey_accel, align 4
  %107 = or i32 %106, 2
  store i32 %107, i32* @mousekey_accel, align 4
  br label %116

108:                                              ; preds = %101
  %109 = load i64, i64* %2, align 8
  %110 = load i64, i64* @KC_MS_ACCEL2, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @mousekey_accel, align 4
  %114 = or i32 %113, 4
  store i32 %114, i32* @mousekey_accel, align 4
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %105
  br label %117

117:                                              ; preds = %116, %98
  br label %118

118:                                              ; preds = %117, %90
  br label %119

119:                                              ; preds = %118, %82
  br label %120

120:                                              ; preds = %119, %74
  br label %121

121:                                              ; preds = %120, %66
  br label %122

122:                                              ; preds = %121, %58
  br label %123

123:                                              ; preds = %122, %52
  br label %124

124:                                              ; preds = %123, %45
  br label %125

125:                                              ; preds = %124, %38
  br label %126

126:                                              ; preds = %125, %32
  br label %127

127:                                              ; preds = %126, %26
  br label %128

128:                                              ; preds = %127, %19
  br label %129

129:                                              ; preds = %128, %13
  br label %130

130:                                              ; preds = %129, %6
  ret void
}

declare dso_local i32 @move_unit(...) #1

declare dso_local i32 @wheel_unit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
