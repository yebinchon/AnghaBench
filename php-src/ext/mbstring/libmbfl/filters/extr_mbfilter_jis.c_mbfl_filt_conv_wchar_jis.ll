; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_conv_wchar_jis.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_conv_wchar_jis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (i32, i32)* }

@ucs_a1_jis_table_min = common dso_local global i32 0, align 4
@ucs_a1_jis_table_max = common dso_local global i32 0, align 4
@ucs_a1_jis_table = common dso_local global i32* null, align 8
@ucs_a2_jis_table_min = common dso_local global i32 0, align 4
@ucs_a2_jis_table_max = common dso_local global i32 0, align 4
@ucs_a2_jis_table = common dso_local global i32* null, align 8
@ucs_i_jis_table_min = common dso_local global i32 0, align 4
@ucs_i_jis_table_max = common dso_local global i32 0, align 4
@ucs_i_jis_table = common dso_local global i32* null, align 8
@ucs_r_jis_table_min = common dso_local global i32 0, align 4
@ucs_r_jis_table_max = common dso_local global i32 0, align 4
@ucs_r_jis_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_jis(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** @ucs_a1_jis_table, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %73

22:                                               ; preds = %10, %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** @ucs_a2_jis_table, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %72

38:                                               ; preds = %26, %22
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ucs_i_jis_table_min, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ucs_i_jis_table_max, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** @ucs_i_jis_table, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ucs_i_jis_table_min, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %71

54:                                               ; preds = %42, %38
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @ucs_r_jis_table_min, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @ucs_r_jis_table_max, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32*, i32** @ucs_r_jis_table, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @ucs_r_jis_table_min, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %62, %58, %54
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %30
  br label %73

73:                                               ; preds = %72, %14
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %154

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %6, align 4
  br label %144

88:                                               ; preds = %76
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 32896
  store i32 %97, i32* %6, align 4
  br label %143

98:                                               ; preds = %88
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 165
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 65628, i32* %6, align 4
  br label %142

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 8254
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 65662, i32* %6, align 4
  br label %141

106:                                              ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 65340
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 8512, i32* %6, align 4
  br label %140

110:                                              ; preds = %106
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 %111, 65374
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 8513, i32* %6, align 4
  br label %139

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = icmp eq i32 %115, 8741
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 8514, i32* %6, align 4
  br label %138

118:                                              ; preds = %114
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 65293
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 8541, i32* %6, align 4
  br label %137

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = icmp eq i32 %123, 65504
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 8561, i32* %6, align 4
  br label %136

126:                                              ; preds = %122
  %127 = load i32, i32* %3, align 4
  %128 = icmp eq i32 %127, 65505
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 8562, i32* %6, align 4
  br label %135

130:                                              ; preds = %126
  %131 = load i32, i32* %3, align 4
  %132 = icmp eq i32 %131, 65506
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 8780, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %130
  br label %135

135:                                              ; preds = %134, %129
  br label %136

136:                                              ; preds = %135, %125
  br label %137

137:                                              ; preds = %136, %121
  br label %138

138:                                              ; preds = %137, %117
  br label %139

139:                                              ; preds = %138, %113
  br label %140

140:                                              ; preds = %139, %109
  br label %141

141:                                              ; preds = %140, %105
  br label %142

142:                                              ; preds = %141, %101
  br label %143

143:                                              ; preds = %142, %92
  br label %144

144:                                              ; preds = %143, %84
  %145 = load i32, i32* %3, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %6, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 -1, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %148
  br label %153

153:                                              ; preds = %152, %147
  br label %154

154:                                              ; preds = %153, %73
  %155 = load i32, i32* %6, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %422

157:                                              ; preds = %154
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 128
  br i1 %159, label %160, label %203

160:                                              ; preds = %157
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 65280
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %160
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32 (i32, i32)*, i32 (i32, i32)** %168, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 %169(i32 27, i32 %172)
  %174 = call i32 @CK(i32 %173)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i32 (i32, i32)*, i32 (i32, i32)** %176, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 %177(i32 40, i32 %180)
  %182 = call i32 @CK(i32 %181)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i32 (i32, i32)*, i32 (i32, i32)** %184, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 %185(i32 66, i32 %188)
  %190 = call i32 @CK(i32 %189)
  br label %191

191:                                              ; preds = %166, %160
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  %196 = load i32 (i32, i32)*, i32 (i32, i32)** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 %196(i32 %197, i32 %200)
  %202 = call i32 @CK(i32 %201)
  br label %421

203:                                              ; preds = %157
  %204 = load i32, i32* %6, align 4
  %205 = icmp slt i32 %204, 256
  br i1 %205, label %206, label %250

206:                                              ; preds = %203
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, 65280
  %211 = icmp ne i32 %210, 256
  br i1 %211, label %212, label %237

212:                                              ; preds = %206
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32 (i32, i32)*, i32 (i32, i32)** %214, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 %215(i32 27, i32 %218)
  %220 = call i32 @CK(i32 %219)
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  %223 = load i32 (i32, i32)*, i32 (i32, i32)** %222, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 %223(i32 40, i32 %226)
  %228 = call i32 @CK(i32 %227)
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 2
  %231 = load i32 (i32, i32)*, i32 (i32, i32)** %230, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 %231(i32 73, i32 %234)
  %236 = call i32 @CK(i32 %235)
  br label %237

237:                                              ; preds = %212, %206
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  store i32 256, i32* %239, align 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = load i32 (i32, i32)*, i32 (i32, i32)** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = and i32 %243, 127
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 %242(i32 %244, i32 %247)
  %249 = call i32 @CK(i32 %248)
  br label %420

250:                                              ; preds = %203
  %251 = load i32, i32* %6, align 4
  %252 = icmp slt i32 %251, 32896
  br i1 %252, label %253, label %308

253:                                              ; preds = %250
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, 65280
  %258 = icmp ne i32 %257, 512
  br i1 %258, label %259, label %284

259:                                              ; preds = %253
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 2
  %262 = load i32 (i32, i32)*, i32 (i32, i32)** %261, align 8
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 %262(i32 27, i32 %265)
  %267 = call i32 @CK(i32 %266)
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  %270 = load i32 (i32, i32)*, i32 (i32, i32)** %269, align 8
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 %270(i32 36, i32 %273)
  %275 = call i32 @CK(i32 %274)
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  %278 = load i32 (i32, i32)*, i32 (i32, i32)** %277, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 %278(i32 66, i32 %281)
  %283 = call i32 @CK(i32 %282)
  br label %284

284:                                              ; preds = %259, %253
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  store i32 512, i32* %286, align 8
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 2
  %289 = load i32 (i32, i32)*, i32 (i32, i32)** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = ashr i32 %290, 8
  %292 = and i32 %291, 127
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 %289(i32 %292, i32 %295)
  %297 = call i32 @CK(i32 %296)
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 2
  %300 = load i32 (i32, i32)*, i32 (i32, i32)** %299, align 8
  %301 = load i32, i32* %6, align 4
  %302 = and i32 %301, 127
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 %300(i32 %302, i32 %305)
  %307 = call i32 @CK(i32 %306)
  br label %419

308:                                              ; preds = %250
  %309 = load i32, i32* %6, align 4
  %310 = icmp slt i32 %309, 65536
  br i1 %310, label %311, label %374

311:                                              ; preds = %308
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = and i32 %314, 65280
  %316 = icmp ne i32 %315, 768
  br i1 %316, label %317, label %350

317:                                              ; preds = %311
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 2
  %320 = load i32 (i32, i32)*, i32 (i32, i32)** %319, align 8
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 %320(i32 27, i32 %323)
  %325 = call i32 @CK(i32 %324)
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 2
  %328 = load i32 (i32, i32)*, i32 (i32, i32)** %327, align 8
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 %328(i32 36, i32 %331)
  %333 = call i32 @CK(i32 %332)
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 2
  %336 = load i32 (i32, i32)*, i32 (i32, i32)** %335, align 8
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = call i32 %336(i32 40, i32 %339)
  %341 = call i32 @CK(i32 %340)
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 2
  %344 = load i32 (i32, i32)*, i32 (i32, i32)** %343, align 8
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 %344(i32 68, i32 %347)
  %349 = call i32 @CK(i32 %348)
  br label %350

350:                                              ; preds = %317, %311
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  store i32 768, i32* %352, align 8
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 2
  %355 = load i32 (i32, i32)*, i32 (i32, i32)** %354, align 8
  %356 = load i32, i32* %6, align 4
  %357 = ashr i32 %356, 8
  %358 = and i32 %357, 127
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 %355(i32 %358, i32 %361)
  %363 = call i32 @CK(i32 %362)
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 2
  %366 = load i32 (i32, i32)*, i32 (i32, i32)** %365, align 8
  %367 = load i32, i32* %6, align 4
  %368 = and i32 %367, 127
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 %366(i32 %368, i32 %371)
  %373 = call i32 @CK(i32 %372)
  br label %418

374:                                              ; preds = %308
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = and i32 %377, 65280
  %379 = icmp ne i32 %378, 1024
  br i1 %379, label %380, label %405

380:                                              ; preds = %374
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 2
  %383 = load i32 (i32, i32)*, i32 (i32, i32)** %382, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 %383(i32 27, i32 %386)
  %388 = call i32 @CK(i32 %387)
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 2
  %391 = load i32 (i32, i32)*, i32 (i32, i32)** %390, align 8
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 %391(i32 40, i32 %394)
  %396 = call i32 @CK(i32 %395)
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  %399 = load i32 (i32, i32)*, i32 (i32, i32)** %398, align 8
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call i32 %399(i32 74, i32 %402)
  %404 = call i32 @CK(i32 %403)
  br label %405

405:                                              ; preds = %380, %374
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 0
  store i32 1024, i32* %407, align 8
  %408 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 2
  %410 = load i32 (i32, i32)*, i32 (i32, i32)** %409, align 8
  %411 = load i32, i32* %6, align 4
  %412 = and i32 %411, 127
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = call i32 %410(i32 %412, i32 %415)
  %417 = call i32 @CK(i32 %416)
  br label %418

418:                                              ; preds = %405, %350
  br label %419

419:                                              ; preds = %418, %284
  br label %420

420:                                              ; preds = %419, %237
  br label %421

421:                                              ; preds = %420, %191
  br label %427

422:                                              ; preds = %154
  %423 = load i32, i32* %3, align 4
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %425 = call i32 @mbfl_filt_conv_illegal_output(i32 %423, %struct.TYPE_4__* %424)
  %426 = call i32 @CK(i32 %425)
  br label %427

427:                                              ; preds = %422, %421
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
