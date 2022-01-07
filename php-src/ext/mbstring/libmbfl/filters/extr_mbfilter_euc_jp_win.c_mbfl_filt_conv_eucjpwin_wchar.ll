; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp_win.c_mbfl_filt_conv_eucjpwin_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp_win.c_mbfl_filt_conv_eucjpwin_wchar.c"
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
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP932 = common dso_local global i32 0, align 4
@jisx0212_ucs_table_size = common dso_local global i32 0, align 4
@jisx0212_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_eucjp_table_size = common dso_local global i32 0, align 4
@cp932ext3_eucjp_table = common dso_local global i32* null, align 8
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_eucjpwin_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %487 [
    i32 0, label %12
    i32 1, label %72
    i32 2, label %236
    i32 3, label %295
    i32 4, label %325
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i32 %22, i32 %25)
  %27 = call i32 @CK(i32 %26)
  br label %71

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 160
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 255
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %70

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 142
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  br label %69

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 143
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 3, i32* %51, align 8
  br label %68

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %61(i32 %62, i32 %65)
  %67 = call i32 @CK(i32 %66)
  br label %68

68:                                               ; preds = %52, %49
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69, %34
  br label %71

71:                                               ; preds = %70, %18
  br label %490

72:                                               ; preds = %2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp sgt i32 %78, 160
  br i1 %79, label %80, label %195

80:                                               ; preds = %72
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %81, 255
  br i1 %82, label %83, label %195

83:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %84, 161
  %86 = mul nsw i32 %85, 94
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %86, %87
  %89 = sub nsw i32 %88, 161
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %90, 137
  br i1 %91, label %92, label %127

92:                                               ; preds = %83
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 31
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 65340, i32* %7, align 4
  br label %126

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 65374, i32* %7, align 4
  br label %125

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 33
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 8741, i32* %7, align 4
  br label %124

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 60
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 65293, i32* %7, align 4
  br label %123

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 80
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 65504, i32* %7, align 4
  br label %122

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 81
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 65505, i32* %7, align 4
  br label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 137
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 65506, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %116
  br label %121

121:                                              ; preds = %120, %115
  br label %122

122:                                              ; preds = %121, %111
  br label %123

123:                                              ; preds = %122, %107
  br label %124

124:                                              ; preds = %123, %103
  br label %125

125:                                              ; preds = %124, %99
  br label %126

126:                                              ; preds = %125, %95
  br label %127

127:                                              ; preds = %126, %83
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %169

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %7, align 4
  br label %168

146:                                              ; preds = %134, %130
  %147 = load i32, i32* %6, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32*, i32** @jisx0208_ucs_table, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %7, align 4
  br label %167

159:                                              ; preds = %149, %146
  %160 = load i32, i32* %6, align 4
  %161 = icmp sge i32 %160, 7896
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %6, align 4
  %164 = sub nsw i32 %163, 7896
  %165 = add nsw i32 %164, 57344
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %159
  br label %167

167:                                              ; preds = %166, %153
  br label %168

168:                                              ; preds = %167, %138
  br label %169

169:                                              ; preds = %168, %127
  %170 = load i32, i32* %7, align 4
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %173, 127
  %175 = shl i32 %174, 8
  %176 = load i32, i32* %3, align 4
  %177 = and i32 %176, 127
  %178 = or i32 %175, %177
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %183 = load i32, i32* %7, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %172, %169
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  %188 = load i32 (i32, i32)*, i32 (i32, i32)** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 %188(i32 %189, i32 %192)
  %194 = call i32 @CK(i32 %193)
  br label %235

195:                                              ; preds = %80, %72
  %196 = load i32, i32* %3, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* %3, align 4
  %200 = icmp slt i32 %199, 33
  br i1 %200, label %204, label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* %3, align 4
  %203 = icmp eq i32 %202, 127
  br i1 %203, label %204, label %214

204:                                              ; preds = %201, %198
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32 (i32, i32)*, i32 (i32, i32)** %206, align 8
  %208 = load i32, i32* %3, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %207(i32 %208, i32 %211)
  %213 = call i32 @CK(i32 %212)
  br label %234

214:                                              ; preds = %201
  %215 = load i32, i32* %5, align 4
  %216 = shl i32 %215, 8
  %217 = load i32, i32* %3, align 4
  %218 = or i32 %216, %217
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %220 = load i32, i32* %7, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %223 = load i32, i32* %7, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %7, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  %227 = load i32 (i32, i32)*, i32 (i32, i32)** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 %227(i32 %228, i32 %231)
  %233 = call i32 @CK(i32 %232)
  br label %234

234:                                              ; preds = %214, %204
  br label %235

235:                                              ; preds = %234, %185
  br label %490

236:                                              ; preds = %2
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 8
  %239 = load i32, i32* %3, align 4
  %240 = icmp sgt i32 %239, 160
  br i1 %240, label %241, label %256

241:                                              ; preds = %236
  %242 = load i32, i32* %3, align 4
  %243 = icmp slt i32 %242, 224
  br i1 %243, label %244, label %256

244:                                              ; preds = %241
  %245 = load i32, i32* %3, align 4
  %246 = add nsw i32 65216, %245
  store i32 %246, i32* %7, align 4
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 3
  %249 = load i32 (i32, i32)*, i32 (i32, i32)** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 %249(i32 %250, i32 %253)
  %255 = call i32 @CK(i32 %254)
  br label %294

256:                                              ; preds = %241, %236
  %257 = load i32, i32* %3, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* %3, align 4
  %261 = icmp slt i32 %260, 33
  br i1 %261, label %265, label %262

262:                                              ; preds = %259, %256
  %263 = load i32, i32* %3, align 4
  %264 = icmp eq i32 %263, 127
  br i1 %264, label %265, label %275

265:                                              ; preds = %262, %259
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 3
  %268 = load i32 (i32, i32)*, i32 (i32, i32)** %267, align 8
  %269 = load i32, i32* %3, align 4
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 %268(i32 %269, i32 %272)
  %274 = call i32 @CK(i32 %273)
  br label %293

275:                                              ; preds = %262
  %276 = load i32, i32* %3, align 4
  %277 = or i32 36352, %276
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %279 = load i32, i32* %7, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %282 = load i32, i32* %7, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %7, align 4
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 3
  %286 = load i32 (i32, i32)*, i32 (i32, i32)** %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = call i32 %286(i32 %287, i32 %290)
  %292 = call i32 @CK(i32 %291)
  br label %293

293:                                              ; preds = %275, %265
  br label %294

294:                                              ; preds = %293, %244
  br label %490

295:                                              ; preds = %2
  %296 = load i32, i32* %3, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* %3, align 4
  %300 = icmp slt i32 %299, 33
  br i1 %300, label %304, label %301

301:                                              ; preds = %298, %295
  %302 = load i32, i32* %3, align 4
  %303 = icmp eq i32 %302, 127
  br i1 %303, label %304, label %316

304:                                              ; preds = %301, %298
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 3
  %307 = load i32 (i32, i32)*, i32 (i32, i32)** %306, align 8
  %308 = load i32, i32* %3, align 4
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = call i32 %307(i32 %308, i32 %311)
  %313 = call i32 @CK(i32 %312)
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 0
  store i32 0, i32* %315, align 8
  br label %324

316:                                              ; preds = %301
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 8
  %321 = load i32, i32* %3, align 4
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %316, %304
  br label %490

325:                                              ; preds = %2
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  store i32 0, i32* %327, align 8
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %5, align 4
  %331 = load i32, i32* %5, align 4
  %332 = icmp sgt i32 %331, 160
  br i1 %332, label %333, label %445

333:                                              ; preds = %325
  %334 = load i32, i32* %5, align 4
  %335 = icmp slt i32 %334, 255
  br i1 %335, label %336, label %445

336:                                              ; preds = %333
  %337 = load i32, i32* %3, align 4
  %338 = icmp sgt i32 %337, 160
  br i1 %338, label %339, label %445

339:                                              ; preds = %336
  %340 = load i32, i32* %3, align 4
  %341 = icmp slt i32 %340, 255
  br i1 %341, label %342, label %445

342:                                              ; preds = %339
  %343 = load i32, i32* %5, align 4
  %344 = sub nsw i32 %343, 161
  %345 = mul nsw i32 %344, 94
  %346 = load i32, i32* %3, align 4
  %347 = add nsw i32 %345, %346
  %348 = sub nsw i32 %347, 161
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* %6, align 4
  %350 = icmp sge i32 %349, 0
  br i1 %350, label %351, label %365

351:                                              ; preds = %342
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* @jisx0212_ucs_table_size, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %365

355:                                              ; preds = %351
  %356 = load i32*, i32** @jisx0212_ucs_table, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %7, align 4
  %361 = load i32, i32* %7, align 4
  %362 = icmp eq i32 %361, 126
  br i1 %362, label %363, label %364

363:                                              ; preds = %355
  store i32 65374, i32* %7, align 4
  br label %364

364:                                              ; preds = %363, %355
  br label %415

365:                                              ; preds = %351, %342
  %366 = load i32, i32* %6, align 4
  %367 = icmp sge i32 %366, 7708
  br i1 %367, label %368, label %405

368:                                              ; preds = %365
  %369 = load i32, i32* %6, align 4
  %370 = icmp slt i32 %369, 7896
  br i1 %370, label %371, label %405

371:                                              ; preds = %368
  %372 = load i32, i32* %5, align 4
  %373 = shl i32 %372, 8
  %374 = load i32, i32* %3, align 4
  %375 = or i32 %373, %374
  store i32 %375, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %376

376:                                              ; preds = %401, %371
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* @cp932ext3_eucjp_table_size, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %404

380:                                              ; preds = %376
  %381 = load i32, i32* %6, align 4
  %382 = load i32*, i32** @cp932ext3_eucjp_table, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %381, %386
  br i1 %387, label %388, label %401

388:                                              ; preds = %380
  %389 = load i32, i32* %8, align 4
  %390 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %391 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %392 = sub nsw i32 %390, %391
  %393 = icmp slt i32 %389, %392
  br i1 %393, label %394, label %400

394:                                              ; preds = %388
  %395 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %7, align 4
  br label %400

400:                                              ; preds = %394, %388
  br label %404

401:                                              ; preds = %380
  %402 = load i32, i32* %8, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %8, align 4
  br label %376

404:                                              ; preds = %400, %376
  br label %414

405:                                              ; preds = %368, %365
  %406 = load i32, i32* %6, align 4
  %407 = icmp sge i32 %406, 7896
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load i32, i32* %6, align 4
  %410 = sub nsw i32 %409, 7896
  %411 = add nsw i32 %410, 58284
  store i32 %411, i32* %7, align 4
  br label %413

412:                                              ; preds = %405
  store i32 0, i32* %7, align 4
  br label %413

413:                                              ; preds = %412, %408
  br label %414

414:                                              ; preds = %413, %404
  br label %415

415:                                              ; preds = %414, %364
  %416 = load i32, i32* %7, align 4
  %417 = icmp eq i32 %416, 166
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  store i32 65508, i32* %7, align 4
  br label %419

419:                                              ; preds = %418, %415
  %420 = load i32, i32* %7, align 4
  %421 = icmp sle i32 %420, 0
  br i1 %421, label %422, label %435

422:                                              ; preds = %419
  %423 = load i32, i32* %5, align 4
  %424 = and i32 %423, 127
  %425 = shl i32 %424, 8
  %426 = load i32, i32* %3, align 4
  %427 = and i32 %426, 127
  %428 = or i32 %425, %427
  store i32 %428, i32* %7, align 4
  %429 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %430 = load i32, i32* %7, align 4
  %431 = and i32 %430, %429
  store i32 %431, i32* %7, align 4
  %432 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %433 = load i32, i32* %7, align 4
  %434 = or i32 %433, %432
  store i32 %434, i32* %7, align 4
  br label %435

435:                                              ; preds = %422, %419
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 3
  %438 = load i32 (i32, i32)*, i32 (i32, i32)** %437, align 8
  %439 = load i32, i32* %7, align 4
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = call i32 %438(i32 %439, i32 %442)
  %444 = call i32 @CK(i32 %443)
  br label %486

445:                                              ; preds = %339, %336, %333, %325
  %446 = load i32, i32* %3, align 4
  %447 = icmp sge i32 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load i32, i32* %3, align 4
  %450 = icmp slt i32 %449, 33
  br i1 %450, label %454, label %451

451:                                              ; preds = %448, %445
  %452 = load i32, i32* %3, align 4
  %453 = icmp eq i32 %452, 127
  br i1 %453, label %454, label %464

454:                                              ; preds = %451, %448
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 3
  %457 = load i32 (i32, i32)*, i32 (i32, i32)** %456, align 8
  %458 = load i32, i32* %3, align 4
  %459 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = call i32 %457(i32 %458, i32 %461)
  %463 = call i32 @CK(i32 %462)
  br label %485

464:                                              ; preds = %451
  %465 = load i32, i32* %5, align 4
  %466 = shl i32 %465, 8
  %467 = load i32, i32* %3, align 4
  %468 = or i32 %466, %467
  %469 = or i32 %468, 9371648
  store i32 %469, i32* %7, align 4
  %470 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %471 = load i32, i32* %7, align 4
  %472 = and i32 %471, %470
  store i32 %472, i32* %7, align 4
  %473 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %474 = load i32, i32* %7, align 4
  %475 = or i32 %474, %473
  store i32 %475, i32* %7, align 4
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 3
  %478 = load i32 (i32, i32)*, i32 (i32, i32)** %477, align 8
  %479 = load i32, i32* %7, align 4
  %480 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = call i32 %478(i32 %479, i32 %482)
  %484 = call i32 @CK(i32 %483)
  br label %485

485:                                              ; preds = %464, %454
  br label %486

486:                                              ; preds = %485, %435
  br label %490

487:                                              ; preds = %2
  %488 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 0
  store i32 0, i32* %489, align 8
  br label %490

490:                                              ; preds = %487, %486, %324, %294, %235, %71
  %491 = load i32, i32* %3, align 4
  ret i32 %491
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
