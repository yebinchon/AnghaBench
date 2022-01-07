; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_remove_block.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_remove_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, i32*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32*, i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }

@ZEND_BB_REACHABLE = common dso_local global i32 0, align 4
@ZEND_NOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ssa_remove_block(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i64 %19
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i64 %25
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %8, align 8
  %27 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %10, align 8
  br label %36

36:                                               ; preds = %48, %3
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @zend_ssa_remove_uses_of_var(%struct.TYPE_20__* %40, i32 %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = call i32 @zend_ssa_remove_phi(%struct.TYPE_20__* %45, %struct.TYPE_18__* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %10, align 8
  br label %36

52:                                               ; preds = %36
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %101, %52
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = icmp slt i32 %57, %64
  br i1 %65, label %66, label %104

66:                                               ; preds = %56
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ZEND_NOP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %101

78:                                               ; preds = %66
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @zend_ssa_remove_defs_of_instr(%struct.TYPE_20__* %79, i32* %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 %92
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @zend_ssa_remove_instr(%struct.TYPE_20__* %87, %struct.TYPE_16__* %93, i32* %99)
  br label %101

101:                                              ; preds = %78, %77
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %56

104:                                              ; preds = %56
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %122, %104
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @zend_ssa_remove_predecessor(%struct.TYPE_20__* %112, i32 %113, i32 %120)
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %105

125:                                              ; preds = %105
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32* %133, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %211, %125
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %214

140:                                              ; preds = %134
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %210

147:                                              ; preds = %140
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %150, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i64 %157
  store %struct.TYPE_22__* %158, %struct.TYPE_22__** %13, align 8
  store i32 0, i32* %12, align 4
  br label %159

159:                                              ; preds = %206, %147
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %209

165:                                              ; preds = %159
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %205

175:                                              ; preds = %165
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sub nsw i32 %191, %192
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = mul i64 4, %195
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memmove(i32* %181, i32* %188, i32 %197)
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %12, align 4
  br label %205

205:                                              ; preds = %175, %165
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %12, align 4
  br label %159

209:                                              ; preds = %159
  br label %210

210:                                              ; preds = %209, %140
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %134

214:                                              ; preds = %134
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 2
  store i32 0, i32* %216, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 5
  store i32 0, i32* %218, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = icmp uge i64 %221, 0
  br i1 %222, label %223, label %302

223:                                              ; preds = %214
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 6
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %250

237:                                              ; preds = %223
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %243, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 6
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 7
  store i32 %240, i32* %249, align 8
  br label %301

250:                                              ; preds = %223
  %251 = load i32, i32* %11, align 4
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %300

253:                                              ; preds = %250
  br label %254

254:                                              ; preds = %289, %253
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %257, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %265, label %299

265:                                              ; preds = %254
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %268, align 8
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %6, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %289

277:                                              ; preds = %265
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %283, align 8
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 8
  store i32 %280, i32* %288, align 4
  br label %299

289:                                              ; preds = %265
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %11, align 4
  br label %254

299:                                              ; preds = %277, %254
  br label %300

300:                                              ; preds = %299, %250
  br label %301

301:                                              ; preds = %300, %237
  br label %302

302:                                              ; preds = %301, %214
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 6
  store i64 -1, i64* %304, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 9
  store i32 -1, i32* %306, align 8
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 7
  store i32 -1, i32* %308, align 8
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 8
  store i32 -1, i32* %310, align 4
  ret void
}

declare dso_local i32 @zend_ssa_remove_uses_of_var(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @zend_ssa_remove_phi(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @zend_ssa_remove_defs_of_instr(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @zend_ssa_remove_instr(%struct.TYPE_20__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @zend_ssa_remove_predecessor(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
