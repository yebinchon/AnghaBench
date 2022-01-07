; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opxchg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opxchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32 }

@OT_MEMORY = common dso_local global i32 0, align 4
@ST8_MIN = common dso_local global i32 0, align 4
@ST8_MAX = common dso_local global i32 0, align 4
@X86R_EAX = common dso_local global i32 0, align 4
@OT_GPREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*)* @opxchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opxchg(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = call i32 @is_valid_registers(%struct.TYPE_6__* %13)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @OT_MEMORY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OT_MEMORY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %130

34:                                               ; preds = %24, %3
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 135, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OT_MEMORY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %34
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %63, %69
  store i32 %70, i32* %12, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %10, align 4
  br label %116

77:                                               ; preds = %34
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @OT_MEMORY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %77
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %101, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %87, %77
  br label %116

116:                                              ; preds = %115, %49
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  store i32 1, i32* %9, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @ST8_MIN, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @ST8_MAX, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %119
  store i32 2, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %123
  br label %129

129:                                              ; preds = %128, %116
  br label %237

130:                                              ; preds = %24
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @X86R_EAX, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %130
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @OT_GPREG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %139
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 144, %155
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %4, align 4
  br label %289

163:                                              ; preds = %139, %130
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @X86R_EAX, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %196

172:                                              ; preds = %163
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @OT_GPREG, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %172
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 144, %188
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  br label %289

196:                                              ; preds = %172, %163
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @OT_GPREG, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %234

206:                                              ; preds = %196
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @OT_GPREG, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %206
  store i32 3, i32* %9, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 135, i32* %221, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %10, align 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %11, align 4
  br label %234

234:                                              ; preds = %216, %206, %196
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236, %129
  %238 = load i32, i32* %9, align 4
  %239 = shl i32 %238, 6
  %240 = load i32, i32* %10, align 4
  %241 = shl i32 %240, 3
  %242 = or i32 %239, %241
  %243 = load i32, i32* %11, align 4
  %244 = or i32 %242, %243
  %245 = load i32*, i32** %6, align 8
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %287

252:                                              ; preds = %237
  %253 = load i32, i32* %9, align 4
  %254 = icmp slt i32 %253, 3
  br i1 %254, label %255, label %287

255:                                              ; preds = %252
  %256 = load i32, i32* %12, align 4
  %257 = load i32*, i32** %6, align 8
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %8, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  store i32 %256, i32* %261, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %286

264:                                              ; preds = %255
  %265 = load i32, i32* %12, align 4
  %266 = ashr i32 %265, 8
  %267 = load i32*, i32** %6, align 8
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %8, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 %266, i32* %271, align 4
  %272 = load i32, i32* %12, align 4
  %273 = ashr i32 %272, 16
  %274 = load i32*, i32** %6, align 8
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %8, align 4
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  store i32 %273, i32* %278, align 4
  %279 = load i32, i32* %12, align 4
  %280 = ashr i32 %279, 24
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %8, align 4
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 %280, i32* %285, align 4
  br label %286

286:                                              ; preds = %264, %255
  br label %287

287:                                              ; preds = %286, %252, %237
  %288 = load i32, i32* %8, align 4
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %287, %182, %149
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @is_valid_registers(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
