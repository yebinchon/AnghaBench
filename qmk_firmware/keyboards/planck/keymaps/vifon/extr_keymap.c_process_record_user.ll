; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/vifon/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/vifon/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@process_record_user.key_timer = internal global i32 0, align 4
@process_record_user.ignore_up_events = internal global i64 0, align 8
@_DYN = common dso_local global i32 0, align 4
@DYN_REC_STOP = common dso_local global i32 0, align 4
@_LW = common dso_local global i32 0, align 4
@_RS = common dso_local global i32 0, align 4
@_DL = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@_PP = common dso_local global i64 0, align 8
@default_layer_state = common dso_local global i64 0, align 8
@layer_state = common dso_local global i64 0, align 8
@_QW = common dso_local global i64 0, align 8
@_NM = common dso_local global i32 0, align 4
@KC_TRNS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @_DYN, align 4
  %11 = call i32 @MO(i32 %10)
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DYN_REC_STOP, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = call i32 @process_record_dynamic_macro(i32 %19, %struct.TYPE_7__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %192

24:                                               ; preds = %17
  %25 = load i64, i64* @process_record_user.ignore_up_events, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @_DYN, align 4
  %30 = call i32 @MO(i32 %29)
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 136
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @process_record_user.ignore_up_events, align 8
  %43 = sub nsw i64 %42, 1
  store i64 %43, i64* @process_record_user.ignore_up_events, align 8
  store i32 0, i32* %3, align 4
  br label %192

44:                                               ; preds = %35, %32, %27, %24
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %169 [
    i32 135, label %46
    i32 131, label %63
    i32 129, label %80
    i32 136, label %83
    i32 130, label %93
    i32 133, label %128
    i32 132, label %137
    i32 134, label %157
    i32 128, label %160
  ]

46:                                               ; preds = %44
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @_LW, align 4
  %54 = call i32 @layer_on(i32 %53)
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @_LW, align 4
  %57 = call i32 @layer_off(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @_LW, align 4
  %60 = load i32, i32* @_RS, align 4
  %61 = load i32, i32* @_DL, align 4
  %62 = call i32 @update_tri_layer(i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %192

63:                                               ; preds = %44
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @_RS, align 4
  %71 = call i32 @layer_on(i32 %70)
  br label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @_RS, align 4
  %74 = call i32 @layer_off(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @_LW, align 4
  %77 = load i32, i32* @_RS, align 4
  %78 = load i32, i32* @_DL, align 4
  %79 = call i32 @update_tri_layer(i32 %76, i32 %77, i32 %78)
  store i32 0, i32* %3, align 4
  br label %192

80:                                               ; preds = %44
  %81 = load i32, i32* @KC_LSFT, align 4
  %82 = call i32 @register_code(i32 %81)
  br label %169

83:                                               ; preds = %44
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i64, i64* @process_record_user.ignore_up_events, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* @process_record_user.ignore_up_events, align 8
  br label %92

92:                                               ; preds = %89, %83
  br label %169

93:                                               ; preds = %44
  %94 = load i64, i64* @_PP, align 8
  %95 = shl i64 1, %94
  %96 = load i64, i64* @default_layer_state, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i64, i64* @default_layer_state, align 8
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* @layer_state, align 8
  store i64 %101, i64* %8, align 8
  store i64 0, i64* @layer_state, align 8
  %102 = load i64, i64* @_QW, align 8
  %103 = shl i64 1, %102
  store i64 %103, i64* @default_layer_state, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = call i32 @process_record(%struct.TYPE_7__* %104)
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* @layer_state, align 8
  %107 = load i64, i64* %7, align 8
  store i64 %107, i64* @default_layer_state, align 8
  store i32 0, i32* %3, align 4
  br label %192

108:                                              ; preds = %93
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = call i32 (...) @timer_read()
  store i32 %115, i32* @process_record_user.key_timer, align 4
  br label %127

116:                                              ; preds = %108
  %117 = load i32, i32* @process_record_user.key_timer, align 4
  %118 = call i32 @timer_elapsed(i32 %117)
  %119 = icmp sge i32 %118, 500
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = call i32 (...) @clear_keyboard()
  %122 = call i32 (...) @backlight_toggle()
  %123 = call i32 @_delay_ms(i32 250)
  %124 = call i32 (...) @backlight_toggle()
  %125 = call i32 (...) @bootloader_jump()
  br label %126

126:                                              ; preds = %120, %116
  br label %127

127:                                              ; preds = %126, %114
  br label %169

128:                                              ; preds = %44
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = call i32 (...) @enable_gaming_layer()
  br label %136

136:                                              ; preds = %134, %128
  br label %169

137:                                              ; preds = %44
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 (...) @timer_read()
  store i32 %144, i32* @process_record_user.key_timer, align 4
  br label %156

145:                                              ; preds = %137
  %146 = load i32, i32* @process_record_user.key_timer, align 4
  %147 = call i32 @timer_elapsed(i32 %146)
  %148 = icmp sge i32 %147, 250
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call i32 (...) @enable_gaming_layer()
  br label %155

151:                                              ; preds = %145
  %152 = load i64, i64* @_PP, align 8
  %153 = shl i64 1, %152
  %154 = call i32 @default_layer_set(i64 %153)
  br label %155

155:                                              ; preds = %151, %149
  br label %156

156:                                              ; preds = %155, %143
  br label %169

157:                                              ; preds = %44
  %158 = load i32, i32* @_NM, align 4
  %159 = call i32 @layer_on(i32 %158)
  br label %169

160:                                              ; preds = %44
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 @_delay_ms(i32 250)
  br label %168

168:                                              ; preds = %166, %160
  br label %169

169:                                              ; preds = %44, %168, %157, %156, %136, %127, %92, %80
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %169
  %176 = load i32, i32* @_NM, align 4
  %177 = call i64 @IS_LAYER_ON(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i32, i32* @_NM, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @keymap_key_to_keycode(i32 %180, i32 %184)
  %186 = load i64, i64* @KC_TRNS, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load i32, i32* @_NM, align 4
  %190 = call i32 @layer_off(i32 %189)
  br label %191

191:                                              ; preds = %188, %179, %175, %169
  store i32 1, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %99, %75, %58, %41, %23
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @MO(i32) #1

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @process_record(%struct.TYPE_7__*) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @backlight_toggle(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @bootloader_jump(...) #1

declare dso_local i32 @enable_gaming_layer(...) #1

declare dso_local i32 @default_layer_set(i64) #1

declare dso_local i64 @IS_LAYER_ON(i32) #1

declare dso_local i64 @keymap_key_to_keycode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
