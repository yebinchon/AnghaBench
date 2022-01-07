; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/lovelive9/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/lovelive9/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@long_tap_timer = common dso_local global i32 0, align 4
@_DIA = common dso_local global i32 0, align 4
@SEND_DIA = common dso_local global i32 0, align 4
@_YOU = common dso_local global i32 0, align 4
@SEND_YOU = common dso_local global i32 0, align 4
@_CHIKA = common dso_local global i32 0, align 4
@SEND_CHIKA = common dso_local global i32 0, align 4
@_ZURA = common dso_local global i32 0, align 4
@SEND_ZURA = common dso_local global i32 0, align 4
@_RUBY = common dso_local global i32 0, align 4
@SEND_RUBY = common dso_local global i32 0, align 4
@_RUBY_SUB1 = common dso_local global i32 0, align 4
@_RUBY_SUB2 = common dso_local global i32 0, align 4
@_RUBY_SUB3 = common dso_local global i32 0, align 4
@_YOHANE = common dso_local global i32 0, align 4
@SEND_YOHANE = common dso_local global i32 0, align 4
@_RIKO = common dso_local global i32 0, align 4
@SEND_RIKO = common dso_local global i32 0, align 4
@_MARI = common dso_local global i32 0, align 4
@SEND_MARI = common dso_local global i32 0, align 4
@_KANAN = common dso_local global i32 0, align 4
@SEND_KANAN = common dso_local global i32 0, align 4
@_SCHOOL_IDOL_FESTIVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %234 [
    i32 139, label %6
    i32 129, label %23
    i32 140, label %40
    i32 128, label %57
    i32 134, label %74
    i32 133, label %91
    i32 132, label %118
    i32 130, label %145
    i32 135, label %162
    i32 137, label %179
    i32 138, label %196
    i32 131, label %213
    i32 136, label %224
  ]

6:                                                ; preds = %2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  store i32 1, i32* @long_tap_timer, align 4
  %13 = load i32, i32* @_DIA, align 4
  %14 = call i32 @layer_on(i32 %13)
  %15 = call i32 @LED_layer_set(i32 3)
  br label %22

16:                                               ; preds = %6
  %17 = load i32, i32* @SEND_DIA, align 4
  %18 = call i32 @check_tap_and_send_key(i32 %17)
  %19 = load i32, i32* @_DIA, align 4
  %20 = call i32 @layer_off(i32 %19)
  %21 = call i32 (...) @LED_default_set()
  br label %22

22:                                               ; preds = %16, %12
  br label %234

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  store i32 1, i32* @long_tap_timer, align 4
  %30 = load i32, i32* @_YOU, align 4
  %31 = call i32 @layer_on(i32 %30)
  %32 = call i32 @LED_layer_set(i32 4)
  br label %39

33:                                               ; preds = %23
  %34 = load i32, i32* @SEND_YOU, align 4
  %35 = call i32 @check_tap_and_send_key(i32 %34)
  %36 = load i32, i32* @_YOU, align 4
  %37 = call i32 @layer_off(i32 %36)
  %38 = call i32 (...) @LED_default_set()
  br label %39

39:                                               ; preds = %33, %29
  br label %234

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  store i32 1, i32* @long_tap_timer, align 4
  %47 = load i32, i32* @_CHIKA, align 4
  %48 = call i32 @layer_on(i32 %47)
  %49 = call i32 @LED_layer_set(i32 0)
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* @SEND_CHIKA, align 4
  %52 = call i32 @check_tap_and_send_key(i32 %51)
  %53 = load i32, i32* @_CHIKA, align 4
  %54 = call i32 @layer_off(i32 %53)
  %55 = call i32 (...) @LED_default_set()
  br label %56

56:                                               ; preds = %50, %46
  br label %234

57:                                               ; preds = %2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  store i32 1, i32* @long_tap_timer, align 4
  %64 = load i32, i32* @_ZURA, align 4
  %65 = call i32 @layer_on(i32 %64)
  %66 = call i32 @LED_layer_set(i32 6)
  br label %73

67:                                               ; preds = %57
  %68 = load i32, i32* @SEND_ZURA, align 4
  %69 = call i32 @check_tap_and_send_key(i32 %68)
  %70 = load i32, i32* @_ZURA, align 4
  %71 = call i32 @layer_off(i32 %70)
  %72 = call i32 (...) @LED_default_set()
  br label %73

73:                                               ; preds = %67, %63
  br label %234

74:                                               ; preds = %2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  store i32 1, i32* @long_tap_timer, align 4
  %81 = load i32, i32* @_RUBY, align 4
  %82 = call i32 @layer_on(i32 %81)
  %83 = call i32 @LED_layer_set(i32 8)
  br label %90

84:                                               ; preds = %74
  %85 = load i32, i32* @SEND_RUBY, align 4
  %86 = call i32 @check_tap_and_send_key(i32 %85)
  %87 = load i32, i32* @_RUBY, align 4
  %88 = call i32 @layer_off(i32 %87)
  %89 = call i32 (...) @LED_default_set()
  br label %90

90:                                               ; preds = %84, %80
  br label %234

91:                                               ; preds = %2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  %98 = load i32, i32* @_RUBY_SUB1, align 4
  %99 = call i32 @layer_on(i32 %98)
  %100 = load i32, i32* @_RUBY_SUB1, align 4
  %101 = call i32 @IS_LAYER_ON(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32, i32* @_RUBY_SUB2, align 4
  %105 = call i32 @IS_LAYER_ON(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @_RUBY_SUB3, align 4
  %109 = call i32 @layer_on(i32 %108)
  br label %113

110:                                              ; preds = %103, %97
  %111 = load i32, i32* @_RUBY_SUB3, align 4
  %112 = call i32 @layer_off(i32 %111)
  br label %113

113:                                              ; preds = %110, %107
  br label %117

114:                                              ; preds = %91
  %115 = load i32, i32* @_RUBY_SUB1, align 4
  %116 = call i32 @layer_off(i32 %115)
  br label %117

117:                                              ; preds = %114, %113
  br label %234

118:                                              ; preds = %2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %118
  %125 = load i32, i32* @_RUBY_SUB2, align 4
  %126 = call i32 @layer_on(i32 %125)
  %127 = load i32, i32* @_RUBY_SUB1, align 4
  %128 = call i32 @IS_LAYER_ON(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i32, i32* @_RUBY_SUB2, align 4
  %132 = call i32 @IS_LAYER_ON(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @_RUBY_SUB3, align 4
  %136 = call i32 @layer_on(i32 %135)
  br label %140

137:                                              ; preds = %130, %124
  %138 = load i32, i32* @_RUBY_SUB3, align 4
  %139 = call i32 @layer_off(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %144

141:                                              ; preds = %118
  %142 = load i32, i32* @_RUBY_SUB2, align 4
  %143 = call i32 @layer_off(i32 %142)
  br label %144

144:                                              ; preds = %141, %140
  br label %234

145:                                              ; preds = %2
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  store i32 1, i32* @long_tap_timer, align 4
  %152 = load i32, i32* @_YOHANE, align 4
  %153 = call i32 @layer_on(i32 %152)
  %154 = call i32 @LED_layer_set(i32 5)
  br label %161

155:                                              ; preds = %145
  %156 = load i32, i32* @SEND_YOHANE, align 4
  %157 = call i32 @check_tap_and_send_key(i32 %156)
  %158 = load i32, i32* @_YOHANE, align 4
  %159 = call i32 @layer_off(i32 %158)
  %160 = call i32 (...) @LED_default_set()
  br label %161

161:                                              ; preds = %155, %151
  br label %234

162:                                              ; preds = %2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  store i32 1, i32* @long_tap_timer, align 4
  %169 = load i32, i32* @_RIKO, align 4
  %170 = call i32 @layer_on(i32 %169)
  %171 = call i32 @LED_layer_set(i32 1)
  br label %178

172:                                              ; preds = %162
  %173 = load i32, i32* @SEND_RIKO, align 4
  %174 = call i32 @check_tap_and_send_key(i32 %173)
  %175 = load i32, i32* @_RIKO, align 4
  %176 = call i32 @layer_off(i32 %175)
  %177 = call i32 (...) @LED_default_set()
  br label %178

178:                                              ; preds = %172, %168
  br label %234

179:                                              ; preds = %2
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  store i32 1, i32* @long_tap_timer, align 4
  %186 = load i32, i32* @_MARI, align 4
  %187 = call i32 @layer_on(i32 %186)
  %188 = call i32 @LED_layer_set(i32 7)
  br label %195

189:                                              ; preds = %179
  %190 = load i32, i32* @SEND_MARI, align 4
  %191 = call i32 @check_tap_and_send_key(i32 %190)
  %192 = load i32, i32* @_MARI, align 4
  %193 = call i32 @layer_off(i32 %192)
  %194 = call i32 (...) @LED_default_set()
  br label %195

195:                                              ; preds = %189, %185
  br label %234

196:                                              ; preds = %2
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  store i32 1, i32* @long_tap_timer, align 4
  %203 = load i32, i32* @_KANAN, align 4
  %204 = call i32 @layer_on(i32 %203)
  %205 = call i32 @LED_layer_set(i32 2)
  br label %212

206:                                              ; preds = %196
  %207 = load i32, i32* @SEND_KANAN, align 4
  %208 = call i32 @check_tap_and_send_key(i32 %207)
  %209 = load i32, i32* @_KANAN, align 4
  %210 = call i32 @layer_off(i32 %209)
  %211 = call i32 (...) @LED_default_set()
  br label %212

212:                                              ; preds = %206, %202
  br label %234

213:                                              ; preds = %2
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = call i32 (...) @LED_default_set()
  %221 = load i32, i32* @_SCHOOL_IDOL_FESTIVAL, align 4
  %222 = call i32 @layer_on(i32 %221)
  br label %223

223:                                              ; preds = %219, %213
  br label %234

224:                                              ; preds = %2
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i32, i32* @_SCHOOL_IDOL_FESTIVAL, align 4
  %232 = call i32 @layer_off(i32 %231)
  br label %233

233:                                              ; preds = %230, %224
  br label %234

234:                                              ; preds = %2, %233, %223, %212, %195, %178, %161, %144, %117, %90, %73, %56, %39, %22
  ret i32 1
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @LED_layer_set(i32) #1

declare dso_local i32 @check_tap_and_send_key(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @LED_default_set(...) #1

declare dso_local i32 @IS_LAYER_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
