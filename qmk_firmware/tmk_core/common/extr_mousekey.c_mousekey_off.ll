; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_off.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@KC_MS_UP = common dso_local global i64 0, align 8
@mouse_report = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
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
@mousekey_repeat = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mousekey_off(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @KC_MS_UP, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 8
  br label %147

10:                                               ; preds = %6, %1
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @KC_MS_DOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 8
  br label %146

18:                                               ; preds = %14, %10
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @KC_MS_LEFT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 8
  br label %145

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @KC_MS_RIGHT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 8
  br label %144

34:                                               ; preds = %30, %26
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @KC_MS_WH_UP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 8
  br label %143

42:                                               ; preds = %38, %34
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @KC_MS_WH_DOWN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 8
  br label %142

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @KC_MS_WH_LEFT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 8
  br label %141

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @KC_MS_WH_RIGHT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 8
  br label %140

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %2, align 8
  %68 = load i64, i64* @KC_MS_BTN1, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @MOUSE_BTN1, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  %74 = and i32 %73, %72
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  br label %139

75:                                               ; preds = %66
  %76 = load i64, i64* %2, align 8
  %77 = load i64, i64* @KC_MS_BTN2, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @MOUSE_BTN2, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  %83 = and i32 %82, %81
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  br label %138

84:                                               ; preds = %75
  %85 = load i64, i64* %2, align 8
  %86 = load i64, i64* @KC_MS_BTN3, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* @MOUSE_BTN3, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  %92 = and i32 %91, %90
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  br label %137

93:                                               ; preds = %84
  %94 = load i64, i64* %2, align 8
  %95 = load i64, i64* @KC_MS_BTN4, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* @MOUSE_BTN4, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  %101 = and i32 %100, %99
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  br label %136

102:                                              ; preds = %93
  %103 = load i64, i64* %2, align 8
  %104 = load i64, i64* @KC_MS_BTN5, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* @MOUSE_BTN5, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  %110 = and i32 %109, %108
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 8
  br label %135

111:                                              ; preds = %102
  %112 = load i64, i64* %2, align 8
  %113 = load i64, i64* @KC_MS_ACCEL0, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @mousekey_accel, align 4
  %117 = and i32 %116, -2
  store i32 %117, i32* @mousekey_accel, align 4
  br label %134

118:                                              ; preds = %111
  %119 = load i64, i64* %2, align 8
  %120 = load i64, i64* @KC_MS_ACCEL1, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @mousekey_accel, align 4
  %124 = and i32 %123, -3
  store i32 %124, i32* @mousekey_accel, align 4
  br label %133

125:                                              ; preds = %118
  %126 = load i64, i64* %2, align 8
  %127 = load i64, i64* @KC_MS_ACCEL2, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @mousekey_accel, align 4
  %131 = and i32 %130, -5
  store i32 %131, i32* @mousekey_accel, align 4
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %122
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %97
  br label %137

137:                                              ; preds = %136, %88
  br label %138

138:                                              ; preds = %137, %79
  br label %139

139:                                              ; preds = %138, %70
  br label %140

140:                                              ; preds = %139, %65
  br label %141

141:                                              ; preds = %140, %57
  br label %142

142:                                              ; preds = %141, %49
  br label %143

143:                                              ; preds = %142, %41
  br label %144

144:                                              ; preds = %143, %33
  br label %145

145:                                              ; preds = %144, %25
  br label %146

146:                                              ; preds = %145, %17
  br label %147

147:                                              ; preds = %146, %9
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i64 0, i64* @mousekey_repeat, align 8
  br label %160

160:                                              ; preds = %159, %156, %153, %150, %147
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
