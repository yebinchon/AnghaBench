; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/matthewrobo/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/matthewrobo/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@process_record_user.key_timer = internal global i32 0, align 4
@MODS_SHIFT = common dso_local global i32 0, align 4
@MODS_CTRL = common dso_local global i32 0, align 4
@usb_extra_manual = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"USB extra port manual mode\00", align 1
@usb_gcr_auto = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"USB GCR auto mode\00", align 1
@debug_enable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Debug mode\00", align 1
@debug_matrix = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Debug matrix\00", align 1
@debug_keyboard = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Debug keyboard\00", align 1
@debug_mouse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Debug mouse\00", align 1
@LED_FLAG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %207 [
    i32 128, label %7
    i32 129, label %23
    i32 145, label %39
    i32 146, label %49
    i32 148, label %59
    i32 147, label %69
    i32 130, label %79
    i32 133, label %95
    i32 140, label %117
    i32 135, label %126
    i32 134, label %135
    i32 138, label %144
    i32 141, label %153
    i32 139, label %162
    i32 136, label %171
    i32 131, label %180
    i32 137, label %189
    i32 132, label %198
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load i32, i32* @MODS_SHIFT, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* @MODS_CTRL, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @usb_extra_manual, align 4
  %21 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16, %13, %7
  store i32 0, i32* %3, align 4
  br label %208

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @MODS_SHIFT, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @MODS_CTRL, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @usb_gcr_auto, align 4
  %37 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32, %29, %23
  store i32 0, i32* %3, align 4
  br label %208

39:                                               ; preds = %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @debug_enable, align 4
  %47 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %39
  store i32 0, i32* %3, align 4
  br label %208

49:                                               ; preds = %2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @debug_matrix, align 4
  %57 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  store i32 0, i32* %3, align 4
  br label %208

59:                                               ; preds = %2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @debug_keyboard, align 4
  %67 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %208

69:                                               ; preds = %2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @debug_mouse, align 4
  %77 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %69
  store i32 0, i32* %3, align 4
  br label %208

79:                                               ; preds = %2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (...) @timer_read32()
  store i32 %86, i32* @process_record_user.key_timer, align 4
  br label %94

87:                                               ; preds = %79
  %88 = load i32, i32* @process_record_user.key_timer, align 4
  %89 = call i32 @timer_elapsed32(i32 %88)
  %90 = icmp sge i32 %89, 500
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 (...) @reset_keyboard()
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %85
  store i32 0, i32* %3, align 4
  br label %208

95:                                               ; preds = %2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = call i32 (...) @rgb_matrix_get_flags()
  switch i32 %102, label %113 [
    i32 144, label %103
    i32 143, label %106
    i32 142, label %109
  ]

103:                                              ; preds = %101
  %104 = call i32 @rgb_matrix_set_flags(i32 143)
  %105 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 0)
  br label %115

106:                                              ; preds = %101
  %107 = call i32 @rgb_matrix_set_flags(i32 142)
  %108 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 0)
  br label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @LED_FLAG_NONE, align 4
  %111 = call i32 @rgb_matrix_set_flags(i32 %110)
  %112 = call i32 (...) @rgb_matrix_disable_noeeprom()
  br label %115

113:                                              ; preds = %101
  %114 = call i32 @rgb_matrix_set_flags(i32 144)
  br label %115

115:                                              ; preds = %113, %109, %106, %103
  br label %116

116:                                              ; preds = %115, %95
  store i32 0, i32* %3, align 4
  br label %208

117:                                              ; preds = %2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = call i32 @rgb_matrix_sethsv(i32 32, i32 160, i32 255)
  br label %125

125:                                              ; preds = %123, %117
  store i32 0, i32* %3, align 4
  br label %208

126:                                              ; preds = %2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = call i32 @rgb_matrix_sethsv(i32 192, i32 112, i32 255)
  br label %134

134:                                              ; preds = %132, %126
  store i32 0, i32* %3, align 4
  br label %208

135:                                              ; preds = %2
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 @rgb_matrix_sethsv(i32 0, i32 255, i32 255)
  br label %143

143:                                              ; preds = %141, %135
  store i32 0, i32* %3, align 4
  br label %208

144:                                              ; preds = %2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = call i32 @rgb_matrix_sethsv(i32 88, i32 255, i32 255)
  br label %152

152:                                              ; preds = %150, %144
  store i32 0, i32* %3, align 4
  br label %208

153:                                              ; preds = %2
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 @rgb_matrix_sethsv(i32 168, i32 255, i32 255)
  br label %161

161:                                              ; preds = %159, %153
  store i32 0, i32* %3, align 4
  br label %208

162:                                              ; preds = %2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = call i32 @rgb_matrix_sethsv(i32 128, i32 255, i32 255)
  br label %170

170:                                              ; preds = %168, %162
  store i32 0, i32* %3, align 4
  br label %208

171:                                              ; preds = %2
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = call i32 @rgb_matrix_sethsv(i32 216, i32 255, i32 255)
  br label %179

179:                                              ; preds = %177, %171
  store i32 0, i32* %3, align 4
  br label %208

180:                                              ; preds = %2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = call i32 @rgb_matrix_sethsv(i32 40, i32 255, i32 255)
  br label %188

188:                                              ; preds = %186, %180
  store i32 0, i32* %3, align 4
  br label %208

189:                                              ; preds = %2
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = call i32 @rgb_matrix_sethsv(i32 0, i32 0, i32 0)
  br label %197

197:                                              ; preds = %195, %189
  store i32 0, i32* %3, align 4
  br label %208

198:                                              ; preds = %2
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = call i32 @rgb_matrix_sethsv(i32 128, i32 0, i32 255)
  br label %206

206:                                              ; preds = %204, %198
  store i32 0, i32* %3, align 4
  br label %208

207:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %206, %197, %188, %179, %170, %161, %152, %143, %134, %125, %116, %94, %78, %68, %58, %48, %38, %22
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @TOGGLE_FLAG_AND_PRINT(i32, i8*) #1

declare dso_local i32 @timer_read32(...) #1

declare dso_local i32 @timer_elapsed32(i32) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i32 @rgb_matrix_get_flags(...) #1

declare dso_local i32 @rgb_matrix_set_flags(i32) #1

declare dso_local i32 @rgb_matrix_set_color_all(i32, i32, i32) #1

declare dso_local i32 @rgb_matrix_disable_noeeprom(...) #1

declare dso_local i32 @rgb_matrix_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
