; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_tw.c_mbfl_filt_conv_euctw_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_tw.c_mbfl_filt_conv_euctw_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@cns11643_1_ucs_table_size = common dso_local global i32 0, align 4
@cns11643_1_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_CNS11643 = common dso_local global i32 0, align 4
@cns11643_2_ucs_table_size = common dso_local global i32 0, align 4
@cns11643_2_ucs_table = common dso_local global i32* null, align 8
@cns11643_14_ucs_table_size = common dso_local global i32 0, align 4
@cns11643_14_ucs_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_euctw_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
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
  switch i32 %11, label %411 [
    i32 0, label %12
    i32 1, label %68
    i32 2, label %164
    i32 3, label %223
    i32 4, label %287
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
  br label %67

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
  br label %66

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 142
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %65

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %58(i32 %59, i32 %62)
  %64 = call i32 @CK(i32 %63)
  br label %65

65:                                               ; preds = %49, %43
  br label %66

66:                                               ; preds = %65, %34
  br label %67

67:                                               ; preds = %66, %18
  br label %414

68:                                               ; preds = %2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp sgt i32 %74, 160
  br i1 %75, label %76, label %123

76:                                               ; preds = %68
  %77 = load i32, i32* %3, align 4
  %78 = icmp slt i32 %77, 255
  br i1 %78, label %79, label %123

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 161
  %82 = mul nsw i32 %81, 94
  %83 = load i32, i32* %3, align 4
  %84 = sub nsw i32 %83, 161
  %85 = add nsw i32 %82, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @cns11643_1_ucs_table_size, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32*, i32** @cns11643_1_ucs_table, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %7, align 4
  br label %99

98:                                               ; preds = %88, %79
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @MBFL_WCSPLANE_CNS11643, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %102, %99
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32 (i32, i32)*, i32 (i32, i32)** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %116(i32 %117, i32 %120)
  %122 = call i32 @CK(i32 %121)
  br label %163

123:                                              ; preds = %76, %68
  %124 = load i32, i32* %3, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %3, align 4
  %128 = icmp slt i32 %127, 33
  br i1 %128, label %132, label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %3, align 4
  %131 = icmp eq i32 %130, 127
  br i1 %131, label %132, label %142

132:                                              ; preds = %129, %126
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32 (i32, i32)*, i32 (i32, i32)** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 %135(i32 %136, i32 %139)
  %141 = call i32 @CK(i32 %140)
  br label %162

142:                                              ; preds = %129
  %143 = load i32, i32* %5, align 4
  %144 = shl i32 %143, 8
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32 (i32, i32)*, i32 (i32, i32)** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 %155(i32 %156, i32 %159)
  %161 = call i32 @CK(i32 %160)
  br label %162

162:                                              ; preds = %142, %132
  br label %163

163:                                              ; preds = %162, %113
  br label %414

164:                                              ; preds = %2
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %3, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, i32* %3, align 4
  %172 = icmp slt i32 %171, 33
  br i1 %172, label %176, label %173

173:                                              ; preds = %170, %164
  %174 = load i32, i32* %3, align 4
  %175 = icmp eq i32 %174, 127
  br i1 %175, label %176, label %188

176:                                              ; preds = %173, %170
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load i32 (i32, i32)*, i32 (i32, i32)** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 %179(i32 %180, i32 %183)
  %185 = call i32 @CK(i32 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  br label %222

188:                                              ; preds = %173
  %189 = load i32, i32* %3, align 4
  %190 = icmp sgt i32 %189, 160
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load i32, i32* %3, align 4
  %193 = icmp slt i32 %192, 175
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  store i32 3, i32* %196, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sub nsw i32 %197, 161
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  br label %221

201:                                              ; preds = %191, %188
  %202 = load i32, i32* %5, align 4
  %203 = shl i32 %202, 8
  %204 = load i32, i32* %3, align 4
  %205 = or i32 %203, %204
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %207 = load i32, i32* %7, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %210 = load i32, i32* %7, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %7, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 3
  %214 = load i32 (i32, i32)*, i32 (i32, i32)** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 %214(i32 %215, i32 %218)
  %220 = call i32 @CK(i32 %219)
  br label %221

221:                                              ; preds = %201, %194
  br label %222

222:                                              ; preds = %221, %176
  br label %414

223:                                              ; preds = %2
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  store i32 0, i32* %225, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* %3, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %223
  %232 = load i32, i32* %3, align 4
  %233 = icmp slt i32 %232, 33
  br i1 %233, label %237, label %234

234:                                              ; preds = %231, %223
  %235 = load i32, i32* %3, align 4
  %236 = icmp eq i32 %235, 127
  br i1 %236, label %237, label %249

237:                                              ; preds = %234, %231
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 3
  %240 = load i32 (i32, i32)*, i32 (i32, i32)** %239, align 8
  %241 = load i32, i32* %3, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 %240(i32 %241, i32 %244)
  %246 = call i32 @CK(i32 %245)
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  store i32 0, i32* %248, align 8
  br label %286

249:                                              ; preds = %234
  %250 = load i32, i32* %3, align 4
  %251 = icmp sgt i32 %250, 160
  br i1 %251, label %252, label %265

252:                                              ; preds = %249
  %253 = load i32, i32* %3, align 4
  %254 = icmp slt i32 %253, 255
  br i1 %254, label %255, label %265

255:                                              ; preds = %252
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  store i32 4, i32* %257, align 8
  %258 = load i32, i32* %5, align 4
  %259 = shl i32 %258, 8
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %259, %260
  %262 = sub nsw i32 %261, 161
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  br label %285

265:                                              ; preds = %252, %249
  %266 = load i32, i32* %5, align 4
  %267 = shl i32 %266, 8
  %268 = load i32, i32* %3, align 4
  %269 = or i32 %267, %268
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %271 = load i32, i32* %7, align 4
  %272 = and i32 %271, %270
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %274 = load i32, i32* %7, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %7, align 4
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 3
  %278 = load i32 (i32, i32)*, i32 (i32, i32)** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i32 %278(i32 %279, i32 %282)
  %284 = call i32 @CK(i32 %283)
  br label %285

285:                                              ; preds = %265, %255
  br label %286

286:                                              ; preds = %285, %237
  br label %414

287:                                              ; preds = %2
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 0
  store i32 0, i32* %289, align 8
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = icmp sge i32 %293, 256
  br i1 %294, label %295, label %369

295:                                              ; preds = %287
  %296 = load i32, i32* %5, align 4
  %297 = icmp sle i32 %296, 3583
  br i1 %297, label %298, label %369

298:                                              ; preds = %295
  %299 = load i32, i32* %3, align 4
  %300 = icmp sgt i32 %299, 160
  br i1 %300, label %301, label %369

301:                                              ; preds = %298
  %302 = load i32, i32* %3, align 4
  %303 = icmp slt i32 %302, 255
  br i1 %303, label %304, label %369

304:                                              ; preds = %301
  %305 = load i32, i32* %5, align 4
  %306 = and i32 %305, 3840
  %307 = ashr i32 %306, 8
  store i32 %307, i32* %8, align 4
  %308 = load i32, i32* %5, align 4
  %309 = and i32 %308, 255
  %310 = mul nsw i32 %309, 94
  %311 = load i32, i32* %3, align 4
  %312 = add nsw i32 %310, %311
  %313 = sub nsw i32 %312, 161
  store i32 %313, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %314 = load i32, i32* %6, align 4
  %315 = icmp sge i32 %314, 0
  br i1 %315, label %316, label %343

316:                                              ; preds = %304
  %317 = load i32, i32* %8, align 4
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %329

319:                                              ; preds = %316
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* @cns11643_2_ucs_table_size, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %319
  %324 = load i32*, i32** @cns11643_2_ucs_table, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %7, align 4
  br label %329

329:                                              ; preds = %323, %319, %316
  %330 = load i32, i32* %8, align 4
  %331 = icmp eq i32 %330, 13
  br i1 %331, label %332, label %342

332:                                              ; preds = %329
  %333 = load i32, i32* %6, align 4
  %334 = load i32, i32* @cns11643_14_ucs_table_size, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %332
  %337 = load i32*, i32** @cns11643_14_ucs_table, align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %336, %332, %329
  br label %343

343:                                              ; preds = %342, %304
  %344 = load i32, i32* %7, align 4
  %345 = icmp sle i32 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %343
  %347 = load i32, i32* %5, align 4
  %348 = and i32 %347, 127
  %349 = shl i32 %348, 8
  %350 = load i32, i32* %3, align 4
  %351 = and i32 %350, 127
  %352 = or i32 %349, %351
  store i32 %352, i32* %7, align 4
  %353 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %354 = load i32, i32* %7, align 4
  %355 = and i32 %354, %353
  store i32 %355, i32* %7, align 4
  %356 = load i32, i32* @MBFL_WCSPLANE_CNS11643, align 4
  %357 = load i32, i32* %7, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %7, align 4
  br label %359

359:                                              ; preds = %346, %343
  %360 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 3
  %362 = load i32 (i32, i32)*, i32 (i32, i32)** %361, align 8
  %363 = load i32, i32* %7, align 4
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = call i32 %362(i32 %363, i32 %366)
  %368 = call i32 @CK(i32 %367)
  br label %410

369:                                              ; preds = %301, %298, %295, %287
  %370 = load i32, i32* %3, align 4
  %371 = icmp sge i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load i32, i32* %3, align 4
  %374 = icmp slt i32 %373, 33
  br i1 %374, label %378, label %375

375:                                              ; preds = %372, %369
  %376 = load i32, i32* %3, align 4
  %377 = icmp eq i32 %376, 127
  br i1 %377, label %378, label %388

378:                                              ; preds = %375, %372
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 3
  %381 = load i32 (i32, i32)*, i32 (i32, i32)** %380, align 8
  %382 = load i32, i32* %3, align 4
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = call i32 %381(i32 %382, i32 %385)
  %387 = call i32 @CK(i32 %386)
  br label %409

388:                                              ; preds = %375
  %389 = load i32, i32* %5, align 4
  %390 = shl i32 %389, 8
  %391 = load i32, i32* %3, align 4
  %392 = or i32 %390, %391
  %393 = or i32 %392, 9306112
  store i32 %393, i32* %7, align 4
  %394 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %395 = load i32, i32* %7, align 4
  %396 = and i32 %395, %394
  store i32 %396, i32* %7, align 4
  %397 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %398 = load i32, i32* %7, align 4
  %399 = or i32 %398, %397
  store i32 %399, i32* %7, align 4
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 3
  %402 = load i32 (i32, i32)*, i32 (i32, i32)** %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = call i32 %402(i32 %403, i32 %406)
  %408 = call i32 @CK(i32 %407)
  br label %409

409:                                              ; preds = %388, %378
  br label %410

410:                                              ; preds = %409, %359
  br label %414

411:                                              ; preds = %2
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 0
  store i32 0, i32* %413, align 8
  br label %414

414:                                              ; preds = %411, %410, %286, %222, %163, %67
  %415 = load i32, i32* %3, align 4
  ret i32 %415
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
