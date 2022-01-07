; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_conv_wchar_2022jp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_conv_wchar_2022jp.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_2022jp(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32*, i32** @ucs_a1_jis_table, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %72

21:                                               ; preds = %9, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32*, i32** @ucs_a2_jis_table, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %71

37:                                               ; preds = %25, %21
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ucs_i_jis_table_min, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ucs_i_jis_table_max, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32*, i32** @ucs_i_jis_table, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ucs_i_jis_table_min, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %70

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @ucs_r_jis_table_min, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @ucs_r_jis_table_max, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32*, i32** @ucs_r_jis_table, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @ucs_r_jis_table_min, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %61, %57, %53
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %29
  br label %72

72:                                               ; preds = %71, %13
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %129

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 165
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 65628, i32* %5, align 4
  br label %119

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 8254
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 65662, i32* %5, align 4
  br label %118

83:                                               ; preds = %79
  %84 = load i32, i32* %3, align 4
  %85 = icmp eq i32 %84, 65340
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 8512, i32* %5, align 4
  br label %117

87:                                               ; preds = %83
  %88 = load i32, i32* %3, align 4
  %89 = icmp eq i32 %88, 65374
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 8513, i32* %5, align 4
  br label %116

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %92, 8741
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 8514, i32* %5, align 4
  br label %115

95:                                               ; preds = %91
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 65293
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 8541, i32* %5, align 4
  br label %114

99:                                               ; preds = %95
  %100 = load i32, i32* %3, align 4
  %101 = icmp eq i32 %100, 65504
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 8561, i32* %5, align 4
  br label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %104, 65505
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 8562, i32* %5, align 4
  br label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %3, align 4
  %109 = icmp eq i32 %108, 65506
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 8780, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111, %106
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %82
  br label %119

119:                                              ; preds = %118, %78
  %120 = load i32, i32* %3, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 -1, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %123
  br label %128

128:                                              ; preds = %127, %122
  br label %140

129:                                              ; preds = %72
  %130 = load i32, i32* %5, align 4
  %131 = icmp sge i32 %130, 128
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %133, 8481
  br i1 %134, label %138, label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %5, align 4
  %137 = icmp sgt i32 %136, 32896
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %132
  store i32 -1, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %135
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32, i32* %5, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %293

143:                                              ; preds = %140
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 %144, 128
  br i1 %145, label %146, label %189

146:                                              ; preds = %143
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 65280
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %146
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32 (i32, i32)*, i32 (i32, i32)** %154, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 %155(i32 27, i32 %158)
  %160 = call i32 @CK(i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32 (i32, i32)*, i32 (i32, i32)** %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 %163(i32 40, i32 %166)
  %168 = call i32 @CK(i32 %167)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32 (i32, i32)*, i32 (i32, i32)** %170, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 %171(i32 66, i32 %174)
  %176 = call i32 @CK(i32 %175)
  br label %177

177:                                              ; preds = %152, %146
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i32 (i32, i32)*, i32 (i32, i32)** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 %182(i32 %183, i32 %186)
  %188 = call i32 @CK(i32 %187)
  br label %292

189:                                              ; preds = %143
  %190 = load i32, i32* %5, align 4
  %191 = icmp slt i32 %190, 65536
  br i1 %191, label %192, label %247

192:                                              ; preds = %189
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 65280
  %197 = icmp ne i32 %196, 512
  br i1 %197, label %198, label %223

198:                                              ; preds = %192
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32 (i32, i32)*, i32 (i32, i32)** %200, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 %201(i32 27, i32 %204)
  %206 = call i32 @CK(i32 %205)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32 (i32, i32)*, i32 (i32, i32)** %208, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 %209(i32 36, i32 %212)
  %214 = call i32 @CK(i32 %213)
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32 (i32, i32)*, i32 (i32, i32)** %216, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 %217(i32 66, i32 %220)
  %222 = call i32 @CK(i32 %221)
  br label %223

223:                                              ; preds = %198, %192
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  store i32 512, i32* %225, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load i32 (i32, i32)*, i32 (i32, i32)** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = ashr i32 %229, 8
  %231 = and i32 %230, 127
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 %228(i32 %231, i32 %234)
  %236 = call i32 @CK(i32 %235)
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32 (i32, i32)*, i32 (i32, i32)** %238, align 8
  %240 = load i32, i32* %5, align 4
  %241 = and i32 %240, 127
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 %239(i32 %241, i32 %244)
  %246 = call i32 @CK(i32 %245)
  br label %291

247:                                              ; preds = %189
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, 65280
  %252 = icmp ne i32 %251, 1024
  br i1 %252, label %253, label %278

253:                                              ; preds = %247
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 2
  %256 = load i32 (i32, i32)*, i32 (i32, i32)** %255, align 8
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 %256(i32 27, i32 %259)
  %261 = call i32 @CK(i32 %260)
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  %264 = load i32 (i32, i32)*, i32 (i32, i32)** %263, align 8
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 %264(i32 40, i32 %267)
  %269 = call i32 @CK(i32 %268)
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = load i32 (i32, i32)*, i32 (i32, i32)** %271, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 %272(i32 74, i32 %275)
  %277 = call i32 @CK(i32 %276)
  br label %278

278:                                              ; preds = %253, %247
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  store i32 1024, i32* %280, align 8
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 2
  %283 = load i32 (i32, i32)*, i32 (i32, i32)** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = and i32 %284, 127
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 %283(i32 %285, i32 %288)
  %290 = call i32 @CK(i32 %289)
  br label %291

291:                                              ; preds = %278, %223
  br label %292

292:                                              ; preds = %291, %177
  br label %298

293:                                              ; preds = %140
  %294 = load i32, i32* %3, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %296 = call i32 @mbfl_filt_conv_illegal_output(i32 %294, %struct.TYPE_4__* %295)
  %297 = call i32 @CK(i32 %296)
  br label %298

298:                                              ; preds = %293, %292
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
