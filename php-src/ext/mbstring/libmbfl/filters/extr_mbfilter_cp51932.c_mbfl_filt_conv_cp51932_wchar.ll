; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp51932.c_mbfl_filt_conv_cp51932_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp51932.c_mbfl_filt_conv_cp51932_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@cp932ext2_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext2_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext2_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP932 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_cp51932_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %296 [
    i32 0, label %11
    i32 1, label %64
    i32 2, label %237
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(i32 %21, i32 %24)
  %26 = call i32 @CK(i32 %25)
  br label %63

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 160
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 255
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %62

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 142
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 2, i32* %44, align 8
  br label %61

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %54(i32 %55, i32 %58)
  %60 = call i32 @CK(i32 %59)
  br label %61

61:                                               ; preds = %45, %42
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %17
  br label %299

64:                                               ; preds = %2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp sgt i32 %70, 160
  br i1 %71, label %72, label %196

72:                                               ; preds = %64
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 255
  br i1 %74, label %75, label %196

75:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 161
  %78 = mul nsw i32 %77, 94
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 161
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp sle i32 %82, 137
  br i1 %83, label %84, label %119

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 31
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 65340, i32* %7, align 4
  br label %118

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 65374, i32* %7, align 4
  br label %117

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 33
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 8741, i32* %7, align 4
  br label %116

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 60
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 65293, i32* %7, align 4
  br label %115

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 80
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 65504, i32* %7, align 4
  br label %114

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 81
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 65505, i32* %7, align 4
  br label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 137
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 65506, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %108
  br label %113

113:                                              ; preds = %112, %107
  br label %114

114:                                              ; preds = %113, %103
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %91
  br label %118

118:                                              ; preds = %117, %87
  br label %119

119:                                              ; preds = %118, %75
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %170

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %7, align 4
  br label %169

138:                                              ; preds = %126, %122
  %139 = load i32, i32* %6, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32*, i32** @jisx0208_ucs_table, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %7, align 4
  br label %168

151:                                              ; preds = %141, %138
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %159, %155, %151
  br label %168

168:                                              ; preds = %167, %145
  br label %169

169:                                              ; preds = %168, %130
  br label %170

170:                                              ; preds = %169, %119
  %171 = load i32, i32* %7, align 4
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, 127
  %176 = shl i32 %175, 8
  %177 = load i32, i32* %3, align 4
  %178 = and i32 %177, 127
  %179 = or i32 %176, %178
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %181 = load i32, i32* %7, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %184 = load i32, i32* %7, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %173, %170
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  %189 = load i32 (i32, i32)*, i32 (i32, i32)** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 %189(i32 %190, i32 %193)
  %195 = call i32 @CK(i32 %194)
  br label %236

196:                                              ; preds = %72, %64
  %197 = load i32, i32* %3, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %3, align 4
  %201 = icmp slt i32 %200, 33
  br i1 %201, label %205, label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %3, align 4
  %204 = icmp eq i32 %203, 127
  br i1 %204, label %205, label %215

205:                                              ; preds = %202, %199
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 3
  %208 = load i32 (i32, i32)*, i32 (i32, i32)** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 %208(i32 %209, i32 %212)
  %214 = call i32 @CK(i32 %213)
  br label %235

215:                                              ; preds = %202
  %216 = load i32, i32* %5, align 4
  %217 = shl i32 %216, 8
  %218 = load i32, i32* %3, align 4
  %219 = or i32 %217, %218
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %221 = load i32, i32* %7, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %224 = load i32, i32* %7, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %7, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  %228 = load i32 (i32, i32)*, i32 (i32, i32)** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 %228(i32 %229, i32 %232)
  %234 = call i32 @CK(i32 %233)
  br label %235

235:                                              ; preds = %215, %205
  br label %236

236:                                              ; preds = %235, %186
  br label %299

237:                                              ; preds = %2
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load i32, i32* %3, align 4
  %241 = icmp sgt i32 %240, 160
  br i1 %241, label %242, label %257

242:                                              ; preds = %237
  %243 = load i32, i32* %3, align 4
  %244 = icmp slt i32 %243, 224
  br i1 %244, label %245, label %257

245:                                              ; preds = %242
  %246 = load i32, i32* %3, align 4
  %247 = add nsw i32 65216, %246
  store i32 %247, i32* %7, align 4
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 3
  %250 = load i32 (i32, i32)*, i32 (i32, i32)** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 %250(i32 %251, i32 %254)
  %256 = call i32 @CK(i32 %255)
  br label %295

257:                                              ; preds = %242, %237
  %258 = load i32, i32* %3, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32, i32* %3, align 4
  %262 = icmp slt i32 %261, 33
  br i1 %262, label %266, label %263

263:                                              ; preds = %260, %257
  %264 = load i32, i32* %3, align 4
  %265 = icmp eq i32 %264, 127
  br i1 %265, label %266, label %276

266:                                              ; preds = %263, %260
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 3
  %269 = load i32 (i32, i32)*, i32 (i32, i32)** %268, align 8
  %270 = load i32, i32* %3, align 4
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i32 %269(i32 %270, i32 %273)
  %275 = call i32 @CK(i32 %274)
  br label %294

276:                                              ; preds = %263
  %277 = load i32, i32* %3, align 4
  %278 = or i32 36352, %277
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %280 = load i32, i32* %7, align 4
  %281 = and i32 %280, %279
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %283 = load i32, i32* %7, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %7, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 3
  %287 = load i32 (i32, i32)*, i32 (i32, i32)** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 %287(i32 %288, i32 %291)
  %293 = call i32 @CK(i32 %292)
  br label %294

294:                                              ; preds = %276, %266
  br label %295

295:                                              ; preds = %294, %245
  br label %299

296:                                              ; preds = %2
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  store i32 0, i32* %298, align 8
  br label %299

299:                                              ; preds = %296, %295, %236, %63
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
