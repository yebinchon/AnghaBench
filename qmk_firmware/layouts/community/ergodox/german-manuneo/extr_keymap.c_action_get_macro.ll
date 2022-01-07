; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/german-manuneo/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/german-manuneo/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MACRO_NONE = common dso_local global i32* null, align 8
@unicode_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %14, i32** %4, align 8
  br label %212

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %209 [
    i32 128, label %17
    i32 178, label %21
    i32 166, label %23
    i32 199, label %25
    i32 153, label %27
    i32 136, label %29
    i32 182, label %31
    i32 131, label %33
    i32 169, label %35
    i32 139, label %37
    i32 145, label %39
    i32 191, label %41
    i32 159, label %43
    i32 209, label %45
    i32 135, label %47
    i32 175, label %49
    i32 157, label %51
    i32 148, label %53
    i32 161, label %55
    i32 143, label %57
    i32 220, label %59
    i32 176, label %61
    i32 141, label %63
    i32 204, label %65
    i32 200, label %67
    i32 158, label %69
    i32 205, label %71
    i32 221, label %73
    i32 173, label %75
    i32 174, label %77
    i32 132, label %79
    i32 185, label %81
    i32 129, label %83
    i32 180, label %85
    i32 168, label %87
    i32 188, label %89
    i32 183, label %91
    i32 144, label %93
    i32 201, label %95
    i32 186, label %97
    i32 194, label %99
    i32 171, label %101
    i32 187, label %103
    i32 152, label %105
    i32 222, label %107
    i32 192, label %109
    i32 202, label %111
    i32 177, label %113
    i32 167, label %115
    i32 203, label %117
    i32 219, label %119
    i32 165, label %121
    i32 151, label %123
    i32 198, label %125
    i32 179, label %127
    i32 156, label %129
    i32 193, label %131
    i32 172, label %133
    i32 149, label %135
    i32 138, label %137
    i32 162, label %139
    i32 130, label %141
    i32 142, label %143
    i32 218, label %145
    i32 137, label %147
    i32 146, label %149
    i32 189, label %151
    i32 181, label %153
    i32 208, label %155
    i32 160, label %157
    i32 216, label %159
    i32 155, label %161
    i32 215, label %163
    i32 211, label %165
    i32 150, label %167
    i32 140, label %169
    i32 164, label %171
    i32 170, label %173
    i32 163, label %175
    i32 214, label %177
    i32 217, label %179
    i32 197, label %181
    i32 133, label %183
    i32 190, label %185
    i32 196, label %187
    i32 184, label %189
    i32 207, label %191
    i32 147, label %193
    i32 195, label %195
    i32 206, label %197
    i32 212, label %199
    i32 210, label %201
    i32 154, label %203
    i32 213, label %205
    i32 134, label %207
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @unicode_mode, align 4
  %19 = add nsw i32 %18, 1
  %20 = srem i32 %19, 2
  store i32 %20, i32* @unicode_mode, align 4
  br label %210

21:                                               ; preds = %15
  %22 = call i32 @unicode_action_function(i32 3, i32 191)
  br label %210

23:                                               ; preds = %15
  %24 = call i32 @unicode_action_function(i32 33, i32 144)
  br label %210

25:                                               ; preds = %15
  %26 = call i32 @unicode_action_function(i32 3, i32 161)
  br label %210

27:                                               ; preds = %15
  %28 = call i32 @unicode_action_function(i32 32, i32 131)
  br label %210

29:                                               ; preds = %15
  %30 = call i32 @unicode_action_function(i32 33, i32 91)
  br label %210

31:                                               ; preds = %15
  %32 = call i32 @unicode_action_function(i32 3, i32 187)
  br label %210

33:                                               ; preds = %15
  %34 = call i32 @unicode_action_function(i32 33, i32 83)
  br label %210

35:                                               ; preds = %15
  %36 = call i32 @unicode_action_function(i32 3, i32 190)
  br label %210

37:                                               ; preds = %15
  %38 = call i32 @unicode_action_function(i32 34, i32 4)
  br label %210

39:                                               ; preds = %15
  %40 = call i32 @unicode_action_function(i32 0, i32 185)
  br label %210

41:                                               ; preds = %15
  %42 = call i32 @unicode_action_function(i32 3, i32 178)
  br label %210

43:                                               ; preds = %15
  %44 = call i32 @unicode_action_function(i32 32, i32 133)
  br label %210

45:                                               ; preds = %15
  %46 = call i32 @unicode_action_function(i32 3, i32 153)
  br label %210

47:                                               ; preds = %15
  %48 = call i32 @unicode_action_function(i32 33, i32 85)
  br label %210

49:                                               ; preds = %15
  %50 = call i32 @unicode_action_function(i32 3, i32 200)
  br label %210

51:                                               ; preds = %15
  %52 = call i32 @unicode_action_function(i32 32, i32 137)
  br label %210

53:                                               ; preds = %15
  %54 = call i32 @unicode_action_function(i32 32, i32 116)
  br label %210

55:                                               ; preds = %15
  %56 = call i32 @unicode_action_function(i32 33, i32 146)
  br label %210

57:                                               ; preds = %15
  %58 = call i32 @unicode_action_function(i32 32, i32 118)
  br label %210

59:                                               ; preds = %15
  %60 = call i32 @unicode_action_function(i32 33, i32 147)
  br label %210

61:                                               ; preds = %15
  %62 = call i32 @unicode_action_function(i32 3, i32 192)
  br label %210

63:                                               ; preds = %15
  %64 = call i32 @unicode_action_function(i32 0, i32 178)
  br label %210

65:                                               ; preds = %15
  %66 = call i32 @unicode_action_function(i32 3, i32 169)
  br label %210

67:                                               ; preds = %15
  %68 = call i32 @unicode_action_function(i32 3, i32 168)
  br label %210

69:                                               ; preds = %15
  %70 = call i32 @unicode_action_function(i32 32, i32 132)
  br label %210

71:                                               ; preds = %15
  %72 = call i32 @unicode_action_function(i32 3, i32 157)
  br label %210

73:                                               ; preds = %15
  %74 = call i32 @unicode_action_function(i32 0, i32 247)
  br label %210

75:                                               ; preds = %15
  %76 = call i32 @unicode_action_function(i32 3, i32 195)
  br label %210

77:                                               ; preds = %15
  %78 = call i32 @unicode_action_function(i32 3, i32 193)
  br label %210

79:                                               ; preds = %15
  %80 = call i32 @unicode_action_function(i32 33, i32 89)
  br label %210

81:                                               ; preds = %15
  %82 = call i32 @unicode_action_function(i32 3, i32 179)
  br label %210

83:                                               ; preds = %15
  %84 = call i32 @unicode_action_function(i32 33, i32 84)
  br label %210

85:                                               ; preds = %15
  %86 = call i32 @unicode_action_function(i32 3, i32 189)
  br label %210

87:                                               ; preds = %15
  %88 = call i32 @unicode_action_function(i32 3, i32 182)
  br label %210

89:                                               ; preds = %15
  %90 = call i32 @unicode_action_function(i32 3, i32 181)
  br label %210

91:                                               ; preds = %15
  %92 = call i32 @unicode_action_function(i32 3, i32 186)
  br label %210

93:                                               ; preds = %15
  %94 = call i32 @unicode_action_function(i32 32, i32 119)
  br label %210

95:                                               ; preds = %15
  %96 = call i32 @unicode_action_function(i32 3, i32 160)
  br label %210

97:                                               ; preds = %15
  %98 = call i32 @unicode_action_function(i32 3, i32 194)
  br label %210

99:                                               ; preds = %15
  %100 = call i32 @unicode_action_function(i32 3, i32 158)
  br label %210

101:                                              ; preds = %15
  %102 = call i32 @unicode_action_function(i32 3, i32 184)
  br label %210

103:                                              ; preds = %15
  %104 = call i32 @unicode_action_function(i32 3, i32 183)
  br label %210

105:                                              ; preds = %15
  %106 = call i32 @unicode_action_function(i32 32, i32 130)
  br label %210

107:                                              ; preds = %15
  %108 = call i32 @unicode_action_function(i32 34, i32 67)
  br label %210

109:                                              ; preds = %15
  %110 = call i32 @unicode_action_function(i32 3, i32 177)
  br label %210

111:                                              ; preds = %15
  %112 = call i32 @unicode_action_function(i32 3, i32 166)
  br label %210

113:                                              ; preds = %15
  %114 = call i32 @unicode_action_function(i32 3, i32 198)
  br label %210

115:                                              ; preds = %15
  %116 = call i32 @unicode_action_function(i32 34, i32 30)
  br label %210

117:                                              ; preds = %15
  %118 = call i32 @unicode_action_function(i32 3, i32 159)
  br label %210

119:                                              ; preds = %15
  %120 = call i32 @unicode_action_function(i32 34, i32 8)
  br label %210

121:                                              ; preds = %15
  %122 = call i32 @unicode_action_function(i32 0, i32 215)
  br label %210

123:                                              ; preds = %15
  %124 = call i32 @unicode_action_function(i32 32, i32 128)
  br label %210

125:                                              ; preds = %15
  %126 = call i32 @unicode_action_function(i32 3, i32 163)
  br label %210

127:                                              ; preds = %15
  %128 = call i32 @unicode_action_function(i32 3, i32 201)
  br label %210

129:                                              ; preds = %15
  %130 = call i32 @unicode_action_function(i32 32, i32 129)
  br label %210

131:                                              ; preds = %15
  %132 = call i32 @unicode_action_function(i32 3, i32 150)
  br label %210

133:                                              ; preds = %15
  %134 = call i32 @unicode_action_function(i32 3, i32 196)
  br label %210

135:                                              ; preds = %15
  %136 = call i32 @unicode_action_function(i32 32, i32 117)
  br label %210

137:                                              ; preds = %15
  %138 = call i32 @unicode_action_function(i32 34, i32 3)
  br label %210

139:                                              ; preds = %15
  %140 = call i32 @unicode_action_function(i32 0, i32 177)
  br label %210

141:                                              ; preds = %15
  %142 = call i32 @unicode_action_function(i32 0, i32 190)
  br label %210

143:                                              ; preds = %15
  %144 = call i32 @unicode_action_function(i32 0, i32 179)
  br label %210

145:                                              ; preds = %15
  %146 = call i32 @unicode_action_function(i32 34, i32 5)
  br label %210

147:                                              ; preds = %15
  %148 = call i32 @unicode_action_function(i32 33, i32 145)
  br label %210

149:                                              ; preds = %15
  %150 = call i32 @unicode_action_function(i32 32, i32 121)
  br label %210

151:                                              ; preds = %15
  %152 = call i32 @unicode_action_function(i32 3, i32 180)
  br label %210

153:                                              ; preds = %15
  %154 = call i32 @unicode_action_function(i32 3, i32 188)
  br label %210

155:                                              ; preds = %15
  %156 = call i32 @unicode_action_function(i32 3, i32 154)
  br label %210

157:                                              ; preds = %15
  %158 = call i32 @unicode_action_function(i32 32, i32 136)
  br label %210

159:                                              ; preds = %15
  %160 = call i32 @unicode_action_function(i32 3, i32 145)
  br label %210

161:                                              ; preds = %15
  %162 = call i32 @unicode_action_function(i32 32, i32 135)
  br label %210

163:                                              ; preds = %15
  %164 = call i32 @unicode_action_function(i32 3, i32 146)
  br label %210

165:                                              ; preds = %15
  %166 = call i32 @unicode_action_function(i32 3, i32 151)
  br label %210

167:                                              ; preds = %15
  %168 = call i32 @unicode_action_function(i32 32, i32 120)
  br label %210

169:                                              ; preds = %15
  %170 = call i32 @unicode_action_function(i32 32, i32 112)
  br label %210

171:                                              ; preds = %15
  %172 = call i32 @unicode_action_function(i32 34, i32 9)
  br label %210

173:                                              ; preds = %15
  %174 = call i32 @unicode_action_function(i32 3, i32 197)
  br label %210

175:                                              ; preds = %15
  %176 = call i32 @unicode_action_function(i32 34, i32 96)
  br label %210

177:                                              ; preds = %15
  %178 = call i32 @unicode_action_function(i32 3, i32 167)
  br label %210

179:                                              ; preds = %15
  %180 = call i32 @unicode_action_function(i32 34, i32 0)
  br label %210

181:                                              ; preds = %15
  %182 = call i32 @unicode_action_function(i32 3, i32 164)
  br label %210

183:                                              ; preds = %15
  %184 = call i32 @unicode_action_function(i32 0, i32 188)
  br label %210

185:                                              ; preds = %15
  %186 = call i32 @unicode_action_function(i32 3, i32 199)
  br label %210

187:                                              ; preds = %15
  %188 = call i32 @unicode_action_function(i32 3, i32 152)
  br label %210

189:                                              ; preds = %15
  %190 = call i32 @unicode_action_function(i32 3, i32 185)
  br label %210

191:                                              ; preds = %15
  %192 = call i32 @unicode_action_function(i32 3, i32 155)
  br label %210

193:                                              ; preds = %15
  %194 = call i32 @unicode_action_function(i32 32, i32 127)
  br label %210

195:                                              ; preds = %15
  %196 = call i32 @unicode_action_function(i32 3, i32 165)
  br label %210

197:                                              ; preds = %15
  %198 = call i32 @unicode_action_function(i32 3, i32 156)
  br label %210

199:                                              ; preds = %15
  %200 = call i32 @unicode_action_function(i32 3, i32 149)
  br label %210

201:                                              ; preds = %15
  %202 = call i32 @unicode_action_function(i32 3, i32 147)
  br label %210

203:                                              ; preds = %15
  %204 = call i32 @unicode_action_function(i32 32, i32 134)
  br label %210

205:                                              ; preds = %15
  %206 = call i32 @unicode_action_function(i32 3, i32 148)
  br label %210

207:                                              ; preds = %15
  %208 = call i32 @unicode_action_function(i32 0, i32 189)
  br label %210

209:                                              ; preds = %15
  br label %210

210:                                              ; preds = %209, %207, %205, %203, %201, %199, %197, %195, %193, %191, %189, %187, %185, %183, %181, %179, %177, %175, %173, %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %17
  %211 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %211, i32** %4, align 8
  br label %212

212:                                              ; preds = %210, %13
  %213 = load i32*, i32** %4, align 8
  ret i32* %213
}

declare dso_local i32 @unicode_action_function(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
