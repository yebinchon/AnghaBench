; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_reset_dependent_vars.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_reset_dependent_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64 }

@ZEND_OP_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32)* @reset_dependent_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_dependent_vars(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %9, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %11, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %12, align 8
  br label %29

29:                                               ; preds = %60, %4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %31 = icmp ne %struct.TYPE_17__* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %32
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @zend_bitset_incl(i32 %48, i64 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  call void @reset_dependent_vars(%struct.TYPE_20__* %53, %struct.TYPE_19__* %54, i32 %55, i32 %59)
  br label %60

60:                                               ; preds = %41, %32
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %64 = call %struct.TYPE_17__* @zend_ssa_next_use_phi(%struct.TYPE_19__* %61, i32 %62, %struct.TYPE_17__* %63)
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %12, align 8
  br label %29

65:                                               ; preds = %29
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %391, %65
  %73 = load i32, i32* %13, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %396

75:                                               ; preds = %72
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp uge i64 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %75
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %83
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @zend_bitset_incl(i32 %105, i64 %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  call void @reset_dependent_vars(%struct.TYPE_20__* %113, %struct.TYPE_19__* %114, i32 %115, i32 %122)
  br label %123

123:                                              ; preds = %95, %83, %75
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp uge i64 %129, 0
  br i1 %130, label %131, label %171

131:                                              ; preds = %123
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %171

143:                                              ; preds = %131
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @zend_bitset_incl(i32 %153, i64 %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  call void @reset_dependent_vars(%struct.TYPE_20__* %161, %struct.TYPE_19__* %162, i32 %163, i32 %170)
  br label %171

171:                                              ; preds = %143, %131, %123
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp uge i64 %177, 0
  br i1 %178, label %179, label %219

179:                                              ; preds = %171
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %219

191:                                              ; preds = %179
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @zend_bitset_incl(i32 %201, i64 %207)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  call void @reset_dependent_vars(%struct.TYPE_20__* %209, %struct.TYPE_19__* %210, i32 %211, i32 %218)
  br label %219

219:                                              ; preds = %191, %179, %171
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @ZEND_OP_DATA, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %391

231:                                              ; preds = %219
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp uge i64 %238, 0
  br i1 %239, label %240, label %284

240:                                              ; preds = %231
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %284

253:                                              ; preds = %240
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  store i64 0, i64* %263, align 8
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @zend_bitset_incl(i32 %264, i64 %271)
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %275 = load i32, i32* %7, align 4
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = trunc i64 %282 to i32
  call void @reset_dependent_vars(%struct.TYPE_20__* %273, %struct.TYPE_19__* %274, i32 %275, i32 %283)
  br label %284

284:                                              ; preds = %253, %240, %231
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %286 = load i32, i32* %13, align 4
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = icmp uge i64 %291, 0
  br i1 %292, label %293, label %337

293:                                              ; preds = %284
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %296 = load i32, i32* %13, align 4
  %297 = add nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %337

306:                                              ; preds = %293
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %309 = load i32, i32* %13, align 4
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 0
  store i64 0, i64* %316, align 8
  %317 = load i32, i32* %7, align 4
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @zend_bitset_incl(i32 %317, i64 %324)
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %328 = load i32, i32* %7, align 4
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %330 = load i32, i32* %13, align 4
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = trunc i64 %335 to i32
  call void @reset_dependent_vars(%struct.TYPE_20__* %326, %struct.TYPE_19__* %327, i32 %328, i32 %336)
  br label %337

337:                                              ; preds = %306, %293, %284
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %339 = load i32, i32* %13, align 4
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = icmp uge i64 %344, 0
  br i1 %345, label %346, label %390

346:                                              ; preds = %337
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %390

359:                                              ; preds = %346
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %362 = load i32, i32* %13, align 4
  %363 = add nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  store i64 0, i64* %369, align 8
  %370 = load i32, i32* %7, align 4
  %371 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %372 = load i32, i32* %13, align 4
  %373 = add nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = call i32 @zend_bitset_incl(i32 %370, i64 %377)
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %381 = load i32, i32* %7, align 4
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %383 = load i32, i32* %13, align 4
  %384 = add nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = trunc i64 %388 to i32
  call void @reset_dependent_vars(%struct.TYPE_20__* %379, %struct.TYPE_19__* %380, i32 %381, i32 %389)
  br label %390

390:                                              ; preds = %359, %346, %337
  br label %391

391:                                              ; preds = %390, %219
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %393 = load i32, i32* %8, align 4
  %394 = load i32, i32* %13, align 4
  %395 = call i32 @zend_ssa_next_use(%struct.TYPE_18__* %392, i32 %393, i32 %394)
  store i32 %395, i32* %13, align 4
  br label %72

396:                                              ; preds = %72
  ret void
}

declare dso_local i32 @zend_bitset_incl(i32, i64) #1

declare dso_local %struct.TYPE_17__* @zend_ssa_next_use_phi(%struct.TYPE_19__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @zend_ssa_next_use(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
