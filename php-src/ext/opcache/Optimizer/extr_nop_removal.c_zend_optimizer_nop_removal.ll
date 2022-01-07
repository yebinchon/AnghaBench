; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_nop_removal.c_zend_optimizer_nop_removal.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_nop_removal.c_zend_optimizer_nop_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_16__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__ }

@use_heap = common dso_local global i32 0, align 4
@ZEND_JMP = common dso_local global i64 0, align 8
@ZEND_NOP = common dso_local global i64 0, align 8
@ZEND_ACC_EARLY_BINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_optimizer_nop_removal(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %15 = load i32, i32* @use_heap, align 4
  %16 = call i32 @ALLOCA_FLAG(i32 %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @use_heap, align 4
  %24 = call i64 @do_alloca(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %11, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i64 %32
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %5, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  store %struct.TYPE_21__* %36, %struct.TYPE_21__** %6, align 8
  br label %37

37:                                               ; preds = %116, %2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = icmp ult %struct.TYPE_21__* %38, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %37
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZEND_JMP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = call %struct.TYPE_21__* @ZEND_OP1_JMP_ADDR(%struct.TYPE_21__* %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i64 %54
  %56 = icmp ugt %struct.TYPE_21__* %49, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %47
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = call %struct.TYPE_21__* @ZEND_OP1_JMP_ADDR(%struct.TYPE_21__* %58)
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i64 -1
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %12, align 8
  br label %61

61:                                               ; preds = %67, %57
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ZEND_NOP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 -1
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %12, align 8
  br label %61

70:                                               ; preds = %61
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = icmp eq %struct.TYPE_21__* %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i64, i64* @ZEND_NOP, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %47, %41
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ZEND_NOP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %115

94:                                               ; preds = %79
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i64 %102
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %13, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %106 = bitcast %struct.TYPE_21__* %104 to i8*
  %107 = bitcast %struct.TYPE_21__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 16, i1 false)
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %111 = call i32 @zend_optimizer_migrate_jump(%struct.TYPE_20__* %108, %struct.TYPE_21__* %109, %struct.TYPE_21__* %110)
  br label %112

112:                                              ; preds = %97, %94
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %91
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 1
  store %struct.TYPE_21__* %118, %struct.TYPE_21__** %6, align 8
  br label %37

119:                                              ; preds = %37
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %300

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i64 %132
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %5, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  store %struct.TYPE_21__* %136, %struct.TYPE_21__** %6, align 8
  br label %137

137:                                              ; preds = %146, %122
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = icmp ult %struct.TYPE_21__* %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @zend_optimizer_shift_jump(%struct.TYPE_20__* %142, %struct.TYPE_21__* %143, i32* %144)
  br label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 1
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %6, align 8
  br label %137

149:                                              ; preds = %137
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %252, %149
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %255

156:                                              ; preds = %150
  %157 = load i32*, i32** %11, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %157, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = sub i64 %176, %168
  store i64 %177, i64* %175, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %178, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = sub i64 %197, %189
  store i64 %198, i64* %196, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %251

208:                                              ; preds = %156
  %209 = load i32*, i32** %11, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %209, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, %220
  store i32 %229, i32* %227, align 8
  %230 = load i32*, i32** %11, align 8
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i32, i32* %230, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = sub i64 %249, %241
  store i64 %250, i64* %248, align 8
  br label %251

251:                                              ; preds = %208, %156
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %10, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %10, align 4
  br label %150

255:                                              ; preds = %150
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @ZEND_ACC_EARLY_BINDING, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %299

262:                                              ; preds = %255
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  store i32* %266, i32** %14, align 8
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = icmp eq %struct.TYPE_20__* %267, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 @ZEND_ASSERT(i32 %273)
  br label %275

275:                                              ; preds = %294, %262
  %276 = load i32*, i32** %11, align 8
  %277 = load i32*, i32** %14, align 8
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %14, align 8
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %283, %281
  store i32 %284, i32* %282, align 4
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %286, align 8
  %288 = load i32*, i32** %14, align 8
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  store i32* %293, i32** %14, align 8
  br label %294

294:                                              ; preds = %275
  %295 = load i32*, i32** %14, align 8
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, -1
  br i1 %297, label %275, label %298

298:                                              ; preds = %294
  br label %299

299:                                              ; preds = %298, %255
  br label %300

300:                                              ; preds = %299, %119
  %301 = load i32*, i32** %11, align 8
  %302 = load i32, i32* @use_heap, align 4
  %303 = call i32 @free_alloca(i32* %301, i32 %302)
  ret void
}

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local i64 @do_alloca(i32, i32) #1

declare dso_local %struct.TYPE_21__* @ZEND_OP1_JMP_ADDR(%struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zend_optimizer_migrate_jump(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @zend_optimizer_shift_jump(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @free_alloca(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
