; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_calculate_param_values_size.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_calculate_param_values_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"mysqlnd_stmt_execute_calculate_param_values_size\00", align 1
@IS_NULL = common dso_local global i64 0, align 8
@PASS = common dso_local global i64 0, align 8
@IS_DOUBLE = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@MYSQLND_PARAM_BIND_BLOB_USED = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i64*)* @mysqlnd_stmt_execute_calculate_param_values_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_stmt_execute_calculate_param_values_size(%struct.TYPE_5__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %278, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %281

21:                                               ; preds = %15
  store i16 0, i16* %9, align 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @ZVAL_DEREF(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 129
  br i1 %40, label %41, label %47

41:                                               ; preds = %21
  %42 = load i32*, i32** %12, align 8
  %43 = call i64 @Z_TYPE_P(i32* %42)
  %44 = load i64, i64* @IS_NULL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %278

47:                                               ; preds = %41, %21
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 @Z_ISREF_P(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %118

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %114, %51
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %117

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @Z_ISREF(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %113

71:                                               ; preds = %60
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @Z_REFVAL(i32 %79)
  %81 = load i32*, i32** %12, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %71
  %84 = load i32**, i32*** %6, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32**, i32*** %6, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @Z_ISUNDEF(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %87, %83
  %97 = load i64, i64* @PASS, align 8
  %98 = load i32**, i32*** %6, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @mysqlnd_stmt_copy_it(i32** %98, i32* %99, i32 %102, i32 %103)
  %105 = icmp ne i64 %97, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @SET_OOM_ERROR(i32 %109)
  br label %284

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %87
  br label %117

113:                                              ; preds = %71, %60
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %54

117:                                              ; preds = %112, %54
  br label %118

118:                                              ; preds = %117, %47
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %277 [
    i32 132, label %127
    i32 130, label %166
    i32 131, label %167
    i32 129, label %205
    i32 128, label %222
  ]

127:                                              ; preds = %118
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 8
  store i64 %130, i64* %128, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i64 @Z_TYPE_P(i32* %131)
  %133 = load i64, i64* @IS_DOUBLE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %127
  %136 = load i32**, i32*** %6, align 8
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load i32**, i32*** %6, align 8
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @Z_ISUNDEF(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %139, %135
  %149 = load i64, i64* @PASS, align 8
  %150 = load i32**, i32*** %6, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i64 @mysqlnd_stmt_copy_it(i32** %150, i32* %151, i32 %154, i32 %155)
  %157 = icmp ne i64 %149, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @SET_OOM_ERROR(i32 %161)
  br label %284

163:                                              ; preds = %148
  br label %164

164:                                              ; preds = %163, %139
  br label %165

165:                                              ; preds = %164, %127
  br label %277

166:                                              ; preds = %118
  store i16 4, i16* %9, align 2
  br label %167

167:                                              ; preds = %118, %166
  %168 = load i32**, i32*** %6, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %186

171:                                              ; preds = %167
  %172 = load i32**, i32*** %6, align 8
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @Z_ISUNDEF(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %171
  %181 = load i32**, i32*** %6, align 8
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  br label %188

186:                                              ; preds = %171, %167
  %187 = load i32*, i32** %12, align 8
  br label %188

188:                                              ; preds = %186, %180
  %189 = phi i32* [ %185, %180 ], [ %187, %186 ]
  store i32* %189, i32** %13, align 8
  %190 = load i32*, i32** %13, align 8
  %191 = call i64 @Z_TYPE_P(i32* %190)
  %192 = load i64, i64* @IS_STRING, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %223

195:                                              ; preds = %188
  %196 = load i32*, i32** %13, align 8
  %197 = call i32 @convert_to_long_ex(i32* %196)
  %198 = load i16, i16* %9, align 2
  %199 = zext i16 %198 to i32
  %200 = add nsw i32 4, %199
  %201 = sext i32 %200 to i64
  %202 = load i64*, i64** %7, align 8
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, %201
  store i64 %204, i64* %202, align 8
  br label %277

205:                                              ; preds = %118
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @MYSQLND_PARAM_BIND_BLOB_USED, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %205
  %218 = load i64*, i64** %7, align 8
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %217, %205
  br label %277

222:                                              ; preds = %118
  br label %223

223:                                              ; preds = %222, %194
  %224 = load i64*, i64** %7, align 8
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 8
  store i64 %226, i64* %224, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = call i64 @Z_TYPE_P(i32* %227)
  %229 = load i64, i64* @IS_STRING, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %266

231:                                              ; preds = %223
  %232 = load i32**, i32*** %6, align 8
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %231
  %236 = load i32**, i32*** %6, align 8
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @Z_ISUNDEF(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %235, %231
  %245 = load i64, i64* @PASS, align 8
  %246 = load i32**, i32*** %6, align 8
  %247 = load i32*, i32** %12, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = call i64 @mysqlnd_stmt_copy_it(i32** %246, i32* %247, i32 %250, i32 %251)
  %253 = icmp ne i64 %245, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %244
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @SET_OOM_ERROR(i32 %257)
  br label %284

259:                                              ; preds = %244
  br label %260

260:                                              ; preds = %259, %235
  %261 = load i32**, i32*** %6, align 8
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32* %265, i32** %12, align 8
  br label %266

266:                                              ; preds = %260, %223
  %267 = load i32*, i32** %12, align 8
  %268 = call i32 @try_convert_to_string(i32* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %266
  br label %284

271:                                              ; preds = %266
  %272 = load i32*, i32** %12, align 8
  %273 = call i64 @Z_STRLEN_P(i32* %272)
  %274 = load i64*, i64** %7, align 8
  %275 = load i64, i64* %274, align 8
  %276 = add i64 %275, %273
  store i64 %276, i64* %274, align 8
  br label %277

277:                                              ; preds = %118, %271, %221, %195, %165
  br label %278

278:                                              ; preds = %277, %46
  %279 = load i32, i32* %8, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %8, align 4
  br label %15

281:                                              ; preds = %15
  %282 = load i64, i64* @PASS, align 8
  %283 = call i32 @DBG_RETURN(i64 %282)
  br label %284

284:                                              ; preds = %281, %270, %254, %158, %106
  %285 = load i64, i64* @FAIL, align 8
  %286 = call i32 @DBG_RETURN(i64 %285)
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_ISREF_P(i32*) #1

declare dso_local i64 @Z_ISREF(i32) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i64 @Z_ISUNDEF(i32) #1

declare dso_local i64 @mysqlnd_stmt_copy_it(i32**, i32*, i32, i32) #1

declare dso_local i32 @SET_OOM_ERROR(i32) #1

declare dso_local i32 @convert_to_long_ex(i32*) #1

declare dso_local i32 @try_convert_to_string(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
