; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_entry_visitor.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_entry_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_VIS_NO_WRAP = common dso_local global i32 0, align 4
@SPIFFS_VIS_END = common dso_local global i64 0, align 8
@SPIFFS_OP_T_OBJ_LU = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_VIS_CHECK_ID = common dso_local global i32 0, align 4
@SPIFFS_VIS_CHECK_PH = common dso_local global i32 0, align 4
@SPIFFS_VIS_COUNTINUE = common dso_local global i64 0, align 8
@SPIFFS_VIS_COUNTINUE_RELOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spiffs_obj_lu_find_entry_visitor(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)* %5, i8* %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)* %5, i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %31 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %31, i64* %22, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %36 = call i64 @SPIFFS_OBJ_LOOKUP_MAX_ENTRIES(%struct.TYPE_11__* %35)
  %37 = mul nsw i64 %34, %36
  store i64 %37, i64* %23, align 8
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = call i32 @SPIFFS_CFG_LOG_BLOCK_SZ(%struct.TYPE_11__* %40)
  %42 = mul nsw i32 %39, %41
  store i32 %42, i32* %25, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %26, align 8
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %27, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %49 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_11__* %48)
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %28, align 4
  %53 = load i32, i32* %27, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = call i64 @SPIFFS_OBJ_LOOKUP_MAX_ENTRIES(%struct.TYPE_11__* %54)
  %56 = trunc i64 %55 to i32
  %57 = sub nsw i32 %56, 1
  %58 = icmp sgt i32 %53, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %10
  store i32 0, i32* %27, align 4
  %60 = load i32, i32* %24, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = call i32 @SPIFFS_CFG_LOG_BLOCK_SZ(%struct.TYPE_11__* %63)
  %65 = mul nsw i32 %62, %64
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %59
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @SPIFFS_VIS_NO_WRAP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64, i64* @SPIFFS_VIS_END, align 8
  store i64 %78, i64* %11, align 8
  br label %275

79:                                               ; preds = %72
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %10
  br label %83

83:                                               ; preds = %270, %82
  %84 = load i64, i64* %22, align 8
  %85 = load i64, i64* @SPIFFS_OK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, i64* %23, align 8
  %89 = icmp sgt i64 %88, 0
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i1 [ false, %83 ], [ %89, %87 ]
  br i1 %91, label %92, label %271

92:                                               ; preds = %90
  %93 = load i32, i32* %27, align 4
  %94 = load i32, i32* %28, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %29, align 4
  br label %96

96:                                               ; preds = %245, %92
  %97 = load i64, i64* %22, align 8
  %98 = load i64, i64* @SPIFFS_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %29, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = call i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_11__* %102)
  %104 = trunc i64 %103 to i32
  %105 = icmp slt i32 %101, %104
  br label %106

106:                                              ; preds = %100, %96
  %107 = phi i1 [ false, %96 ], [ %105, %100 ]
  br i1 %107, label %108, label %248

108:                                              ; preds = %106
  %109 = load i32, i32* %29, align 4
  %110 = load i32, i32* %28, align 4
  %111 = mul nsw i32 %109, %110
  store i32 %111, i32* %30, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %113 = load i32, i32* @SPIFFS_OP_T_OBJ_LU, align 4
  %114 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %25, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %119 = load i32, i32* %29, align 4
  %120 = call i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_11__* %118, i32 %119)
  %121 = add nsw i64 %117, %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %123 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_11__* %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @_spiffs_rd(%struct.TYPE_11__* %112, i32 %115, i32 0, i64 %121, i32 %123, i64 %126)
  store i64 %127, i64* %22, align 8
  br label %128

128:                                              ; preds = %240, %230, %108
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* @SPIFFS_OK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %30, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %28, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32, i32* %27, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = call i64 @SPIFFS_OBJ_LOOKUP_MAX_ENTRIES(%struct.TYPE_11__* %140)
  %142 = trunc i64 %141 to i32
  %143 = icmp slt i32 %139, %142
  br label %144

144:                                              ; preds = %138, %132, %128
  %145 = phi i1 [ false, %132 ], [ false, %128 ], [ %143, %138 ]
  br i1 %145, label %146, label %245

146:                                              ; preds = %144
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @SPIFFS_VIS_CHECK_ID, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %146
  %152 = load i64*, i64** %26, align 8
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %30, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %152, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %16, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %240

161:                                              ; preds = %151, %146
  %162 = load i32*, i32** %20, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %24, align 4
  %166 = load i32*, i32** %20, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %21, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* %27, align 4
  %172 = load i32*, i32** %21, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)*, i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)** %17, align 8
  %175 = icmp ne i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)* %174, null
  br i1 %175, label %176, label %238

176:                                              ; preds = %173
  %177 = load i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)*, i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)** %17, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @SPIFFS_VIS_CHECK_PH, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i64, i64* %16, align 8
  br label %193

185:                                              ; preds = %176
  %186 = load i64*, i64** %26, align 8
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %30, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %186, i64 %190
  %192 = load i64, i64* %191, align 8
  br label %193

193:                                              ; preds = %185, %183
  %194 = phi i64 [ %184, %183 ], [ %192, %185 ]
  %195 = load i32, i32* %24, align 4
  %196 = load i32, i32* %27, align 4
  %197 = load i8*, i8** %18, align 8
  %198 = load i8*, i8** %19, align 8
  %199 = call i64 %177(%struct.TYPE_11__* %178, i64 %194, i32 %195, i32 %196, i8* %197, i8* %198)
  store i64 %199, i64* %22, align 8
  %200 = load i64, i64* %22, align 8
  %201 = load i64, i64* @SPIFFS_VIS_COUNTINUE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %207, label %203

203:                                              ; preds = %193
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* @SPIFFS_VIS_COUNTINUE_RELOAD, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %236

207:                                              ; preds = %203, %193
  %208 = load i64, i64* %22, align 8
  %209 = load i64, i64* @SPIFFS_VIS_COUNTINUE_RELOAD, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %207
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %213 = load i32, i32* @SPIFFS_OP_T_OBJ_LU, align 4
  %214 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %25, align 4
  %217 = sext i32 %216 to i64
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %219 = load i32, i32* %29, align 4
  %220 = call i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_11__* %218, i32 %219)
  %221 = add nsw i64 %217, %220
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %223 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_11__* %222)
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @_spiffs_rd(%struct.TYPE_11__* %212, i32 %215, i32 0, i64 %221, i32 %223, i64 %226)
  store i64 %227, i64* %22, align 8
  %228 = load i64, i64* %22, align 8
  %229 = call i32 @SPIFFS_CHECK_RES(i64 %228)
  br label %230

230:                                              ; preds = %211, %207
  %231 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %231, i64* %22, align 8
  %232 = load i32, i32* %27, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %27, align 4
  %234 = load i64, i64* %23, align 8
  %235 = add nsw i64 %234, -1
  store i64 %235, i64* %23, align 8
  br label %128

236:                                              ; preds = %203
  %237 = load i64, i64* %22, align 8
  store i64 %237, i64* %11, align 8
  br label %275

238:                                              ; preds = %173
  %239 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %239, i64* %11, align 8
  br label %275

240:                                              ; preds = %151
  %241 = load i64, i64* %23, align 8
  %242 = add nsw i64 %241, -1
  store i64 %242, i64* %23, align 8
  %243 = load i32, i32* %27, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %27, align 4
  br label %128

245:                                              ; preds = %144
  %246 = load i32, i32* %29, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %29, align 4
  br label %96

248:                                              ; preds = %106
  store i32 0, i32* %27, align 4
  %249 = load i32, i32* %24, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %24, align 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %252 = call i32 @SPIFFS_CFG_LOG_BLOCK_SZ(%struct.TYPE_11__* %251)
  %253 = load i32, i32* %25, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %25, align 4
  %255 = load i32, i32* %24, align 4
  %256 = sext i32 %255 to i64
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp sge i64 %256, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %248
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* @SPIFFS_VIS_NO_WRAP, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i64, i64* @SPIFFS_VIS_END, align 8
  store i64 %267, i64* %11, align 8
  br label %275

268:                                              ; preds = %261
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269, %248
  br label %83

271:                                              ; preds = %90
  %272 = load i64, i64* %22, align 8
  %273 = call i32 @SPIFFS_CHECK_RES(i64 %272)
  %274 = load i64, i64* @SPIFFS_VIS_END, align 8
  store i64 %274, i64* %11, align 8
  br label %275

275:                                              ; preds = %271, %266, %238, %236, %77
  %276 = load i64, i64* %11, align 8
  ret i64 %276
}

declare dso_local i64 @SPIFFS_OBJ_LOOKUP_MAX_ENTRIES(%struct.TYPE_11__*) #1

declare dso_local i32 @SPIFFS_CFG_LOG_BLOCK_SZ(%struct.TYPE_11__*) #1

declare dso_local i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_11__*) #1

declare dso_local i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_11__*) #1

declare dso_local i64 @_spiffs_rd(%struct.TYPE_11__*, i32, i32, i64, i32, i64) #1

declare dso_local i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
