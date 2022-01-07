; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opimul.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_opimul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, i32 }

@OT_QWORD = common dso_local global i32 0, align 4
@OT_WORD = common dso_local global i32 0, align 4
@OT_BYTE = common dso_local global i32 0, align 4
@OT_MEMORY = common dso_local global i32 0, align 4
@OT_GPREG = common dso_local global i32 0, align 4
@OT_CONSTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: Immediate exceeds max\0A\00", align 1
@UT32_MAX = common dso_local global i32 0, align 4
@X86R_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, %struct.TYPE_9__*)* @opimul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opimul(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = call i32 @is_valid_registers(%struct.TYPE_9__* %11)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OT_QWORD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 72, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %840 [
    i32 1, label %32
    i32 2, label %109
    i32 3, label %561
  ]

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OT_WORD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 102, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %32
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @OT_BYTE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 246, i32* %63, align 4
  br label %70

64:                                               ; preds = %48
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 247, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @OT_MEMORY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %70
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 40, %88
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  br label %108

95:                                               ; preds = %70
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 232, %101
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %95, %80
  br label %841

109:                                              ; preds = %28
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @OT_GPREG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %560

119:                                              ; preds = %109
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @OT_CONSTANT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %268

129:                                              ; preds = %119
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %843

139:                                              ; preds = %129
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %145, %151
  store i32 %152, i32* %10, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @OT_GPREG, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %267

162:                                              ; preds = %139
  %163 = load i32, i32* %10, align 4
  %164 = icmp sge i32 %163, 128
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 105, i32* %170, align 4
  br label %177

171:                                              ; preds = %162
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 107, i32* %176, align 4
  br label %177

177:                                              ; preds = %171, %165
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 %183, 3
  %185 = or i32 192, %184
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %185, %191
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store i32 %198, i32* %203, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp sge i32 %204, 128
  br i1 %205, label %206, label %228

206:                                              ; preds = %177
  %207 = load i32, i32* %10, align 4
  %208 = ashr i32 %207, 8
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  store i32 %208, i32* %213, align 4
  %214 = load i32, i32* %10, align 4
  %215 = ashr i32 %214, 16
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32 %215, i32* %220, align 4
  %221 = load i32, i32* %10, align 4
  %222 = ashr i32 %221, 24
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %222, i32* %227, align 4
  br label %228

228:                                              ; preds = %206, %177
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 64
  br i1 %232, label %233, label %266

233:                                              ; preds = %228
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* @UT32_MAX, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %266

237:                                              ; preds = %233
  %238 = load i32, i32* %10, align 4
  %239 = ashr i32 %238, 32
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 %239, i32* %244, align 4
  %245 = load i32, i32* %10, align 4
  %246 = ashr i32 %245, 40
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %246, i32* %251, align 4
  %252 = load i32, i32* %10, align 4
  %253 = ashr i32 %252, 48
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %253, i32* %258, align 4
  %259 = load i32, i32* %10, align 4
  %260 = ashr i32 %259, 56
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  store i32 %260, i32* %265, align 4
  br label %266

266:                                              ; preds = %237, %233, %228
  br label %267

267:                                              ; preds = %266, %139
  br label %559

268:                                              ; preds = %119
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i64 1
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @OT_MEMORY, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %516

278:                                              ; preds = %268
  %279 = load i32*, i32** %6, align 8
  %280 = load i32, i32* %8, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %8, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  store i32 15, i32* %283, align 4
  %284 = load i32*, i32** %6, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  store i32 175, i32* %288, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i64 1
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @X86R_UNDEFINED, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %461

299:                                              ; preds = %278
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i64 1
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i64 1
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = mul nsw i32 %305, %311
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %9, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %389

315:                                              ; preds = %299
  %316 = load i32, i32* %9, align 4
  %317 = icmp sge i32 %316, 128
  br i1 %317, label %321, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %9, align 4
  %320 = icmp sle i32 %319, -128
  br i1 %320, label %321, label %326

321:                                              ; preds = %318, %315
  %322 = load i32*, i32** %6, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 128, i32* %325, align 4
  br label %331

326:                                              ; preds = %318
  %327 = load i32*, i32** %6, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 64, i32* %330, align 4
  br label %331

331:                                              ; preds = %326, %321
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i64 0
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = shl i32 %337, 3
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i64 1
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %338, %346
  %348 = load i32*, i32** %6, align 8
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %347
  store i32 %354, i32* %352, align 4
  %355 = load i32, i32* %9, align 4
  %356 = load i32*, i32** %6, align 8
  %357 = load i32, i32* %8, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %8, align 4
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  store i32 %355, i32* %360, align 4
  %361 = load i32, i32* %9, align 4
  %362 = icmp sge i32 %361, 128
  br i1 %362, label %366, label %363

363:                                              ; preds = %331
  %364 = load i32, i32* %9, align 4
  %365 = icmp sle i32 %364, -128
  br i1 %365, label %366, label %388

366:                                              ; preds = %363, %331
  %367 = load i32, i32* %9, align 4
  %368 = ashr i32 %367, 8
  %369 = load i32*, i32** %6, align 8
  %370 = load i32, i32* %8, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %8, align 4
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %368, i32* %373, align 4
  %374 = load i32, i32* %9, align 4
  %375 = ashr i32 %374, 16
  %376 = load i32*, i32** %6, align 8
  %377 = load i32, i32* %8, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %8, align 4
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 %375, i32* %380, align 4
  %381 = load i32, i32* %9, align 4
  %382 = ashr i32 %381, 24
  %383 = load i32*, i32** %6, align 8
  %384 = load i32, i32* %8, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %8, align 4
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  store i32 %382, i32* %387, align 4
  br label %388

388:                                              ; preds = %366, %363
  br label %460

389:                                              ; preds = %299
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i64 1
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @X86R_UNDEFINED, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %437

400:                                              ; preds = %389
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = shl i32 %406, 3
  %408 = or i32 4, %407
  %409 = load i32*, i32** %6, align 8
  %410 = load i32, i32* %8, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %8, align 4
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds i32, i32* %409, i64 %412
  store i32 %408, i32* %413, align 4
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i64 1
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 1
  %421 = load i32, i32* %420, align 4
  %422 = shl i32 %421, 3
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i64 1
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 1
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 0
  %430 = load i32, i32* %429, align 4
  %431 = or i32 %422, %430
  %432 = load i32*, i32** %6, align 8
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds i32, i32* %432, i64 %435
  store i32 %431, i32* %436, align 4
  br label %459

437:                                              ; preds = %389
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i64 0
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = shl i32 %443, 3
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 1
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i64 1
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = or i32 %444, %452
  %454 = load i32*, i32** %6, align 8
  %455 = load i32, i32* %8, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %8, align 4
  %457 = sext i32 %455 to i64
  %458 = getelementptr inbounds i32, i32* %454, i64 %457
  store i32 %453, i32* %458, align 4
  br label %459

459:                                              ; preds = %437, %400
  br label %460

460:                                              ; preds = %459, %388
  br label %515

461:                                              ; preds = %278
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 1
  %464 = load %struct.TYPE_7__*, %struct.TYPE_7__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i64 1
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 1
  %470 = load %struct.TYPE_7__*, %struct.TYPE_7__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i64 1
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = mul nsw i32 %467, %473
  store i32 %474, i32* %10, align 4
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 1
  %477 = load %struct.TYPE_7__*, %struct.TYPE_7__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i64 0
  %479 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 8
  %481 = shl i32 %480, 3
  %482 = or i32 %481, 5
  %483 = load i32*, i32** %6, align 8
  %484 = load i32, i32* %8, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %8, align 4
  %486 = sext i32 %484 to i64
  %487 = getelementptr inbounds i32, i32* %483, i64 %486
  store i32 %482, i32* %487, align 4
  %488 = load i32, i32* %10, align 4
  %489 = load i32*, i32** %6, align 8
  %490 = load i32, i32* %8, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %8, align 4
  %492 = sext i32 %490 to i64
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  store i32 %488, i32* %493, align 4
  %494 = load i32, i32* %10, align 4
  %495 = ashr i32 %494, 8
  %496 = load i32*, i32** %6, align 8
  %497 = load i32, i32* %8, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %8, align 4
  %499 = sext i32 %497 to i64
  %500 = getelementptr inbounds i32, i32* %496, i64 %499
  store i32 %495, i32* %500, align 4
  %501 = load i32, i32* %10, align 4
  %502 = ashr i32 %501, 16
  %503 = load i32*, i32** %6, align 8
  %504 = load i32, i32* %8, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %8, align 4
  %506 = sext i32 %504 to i64
  %507 = getelementptr inbounds i32, i32* %503, i64 %506
  store i32 %502, i32* %507, align 4
  %508 = load i32, i32* %10, align 4
  %509 = ashr i32 %508, 24
  %510 = load i32*, i32** %6, align 8
  %511 = load i32, i32* %8, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %8, align 4
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i32, i32* %510, i64 %513
  store i32 %509, i32* %514, align 4
  br label %515

515:                                              ; preds = %461, %460
  br label %558

516:                                              ; preds = %268
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 1
  %519 = load %struct.TYPE_7__*, %struct.TYPE_7__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %519, i64 1
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @OT_GPREG, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %557

526:                                              ; preds = %516
  %527 = load i32*, i32** %6, align 8
  %528 = load i32, i32* %8, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %8, align 4
  %530 = sext i32 %528 to i64
  %531 = getelementptr inbounds i32, i32* %527, i64 %530
  store i32 15, i32* %531, align 4
  %532 = load i32*, i32** %6, align 8
  %533 = load i32, i32* %8, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %8, align 4
  %535 = sext i32 %533 to i64
  %536 = getelementptr inbounds i32, i32* %532, i64 %535
  store i32 175, i32* %536, align 4
  %537 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %537, i32 0, i32 1
  %539 = load %struct.TYPE_7__*, %struct.TYPE_7__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i64 0
  %541 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = shl i32 %542, 3
  %544 = or i32 192, %543
  %545 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %546 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %545, i32 0, i32 1
  %547 = load %struct.TYPE_7__*, %struct.TYPE_7__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %547, i64 1
  %549 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %548, i32 0, i32 2
  %550 = load i32, i32* %549, align 8
  %551 = or i32 %544, %550
  %552 = load i32*, i32** %6, align 8
  %553 = load i32, i32* %8, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %8, align 4
  %555 = sext i32 %553 to i64
  %556 = getelementptr inbounds i32, i32* %552, i64 %555
  store i32 %551, i32* %556, align 4
  br label %557

557:                                              ; preds = %526, %516
  br label %558

558:                                              ; preds = %557, %515
  br label %559

559:                                              ; preds = %558, %267
  br label %560

560:                                              ; preds = %559, %109
  br label %841

561:                                              ; preds = %28
  %562 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %563 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %562, i32 0, i32 1
  %564 = load %struct.TYPE_7__*, %struct.TYPE_7__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %564, i64 0
  %566 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = load i32, i32* @OT_GPREG, align 4
  %569 = and i32 %567, %568
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %839

571:                                              ; preds = %561
  %572 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %573 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %572, i32 0, i32 1
  %574 = load %struct.TYPE_7__*, %struct.TYPE_7__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %574, i64 1
  %576 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @OT_GPREG, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %591, label %581

581:                                              ; preds = %571
  %582 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %583 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %582, i32 0, i32 1
  %584 = load %struct.TYPE_7__*, %struct.TYPE_7__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %584, i64 1
  %586 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = load i32, i32* @OT_MEMORY, align 4
  %589 = and i32 %587, %588
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %839

591:                                              ; preds = %581, %571
  %592 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 1
  %594 = load %struct.TYPE_7__*, %struct.TYPE_7__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i64 2
  %596 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = load i32, i32* @OT_CONSTANT, align 4
  %599 = and i32 %597, %598
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %839

601:                                              ; preds = %591
  %602 = load i32*, i32** %6, align 8
  %603 = load i32, i32* %8, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %8, align 4
  %605 = sext i32 %603 to i64
  %606 = getelementptr inbounds i32, i32* %602, i64 %605
  store i32 107, i32* %606, align 4
  %607 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %608 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %607, i32 0, i32 1
  %609 = load %struct.TYPE_7__*, %struct.TYPE_7__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %609, i64 1
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load i32, i32* @OT_MEMORY, align 4
  %614 = and i32 %612, %613
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %770

616:                                              ; preds = %601
  %617 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %618 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %617, i32 0, i32 1
  %619 = load %struct.TYPE_7__*, %struct.TYPE_7__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %619, i64 1
  %621 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %620, i32 0, i32 1
  %622 = load i32*, i32** %621, align 8
  %623 = getelementptr inbounds i32, i32* %622, i64 1
  %624 = load i32, i32* %623, align 4
  %625 = load i32, i32* @X86R_UNDEFINED, align 4
  %626 = icmp ne i32 %624, %625
  br i1 %626, label %627, label %664

627:                                              ; preds = %616
  %628 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %629 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %628, i32 0, i32 1
  %630 = load %struct.TYPE_7__*, %struct.TYPE_7__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %630, i64 0
  %632 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 8
  %634 = shl i32 %633, 3
  %635 = or i32 4, %634
  %636 = load i32*, i32** %6, align 8
  %637 = load i32, i32* %8, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %8, align 4
  %639 = sext i32 %637 to i64
  %640 = getelementptr inbounds i32, i32* %636, i64 %639
  store i32 %635, i32* %640, align 4
  %641 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %642 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %641, i32 0, i32 1
  %643 = load %struct.TYPE_7__*, %struct.TYPE_7__** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %643, i64 1
  %645 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %644, i32 0, i32 1
  %646 = load i32*, i32** %645, align 8
  %647 = getelementptr inbounds i32, i32* %646, i64 0
  %648 = load i32, i32* %647, align 4
  %649 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %650 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %649, i32 0, i32 1
  %651 = load %struct.TYPE_7__*, %struct.TYPE_7__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %651, i64 1
  %653 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %652, i32 0, i32 1
  %654 = load i32*, i32** %653, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 1
  %656 = load i32, i32* %655, align 4
  %657 = shl i32 %656, 3
  %658 = or i32 %648, %657
  %659 = load i32*, i32** %6, align 8
  %660 = load i32, i32* %8, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %8, align 4
  %662 = sext i32 %660 to i64
  %663 = getelementptr inbounds i32, i32* %659, i64 %662
  store i32 %658, i32* %663, align 4
  br label %769

664:                                              ; preds = %616
  %665 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %666 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %665, i32 0, i32 1
  %667 = load %struct.TYPE_7__*, %struct.TYPE_7__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %667, i64 1
  %669 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %668, i32 0, i32 5
  %670 = load i32, i32* %669, align 4
  %671 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %672 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %671, i32 0, i32 1
  %673 = load %struct.TYPE_7__*, %struct.TYPE_7__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %673, i64 1
  %675 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %674, i32 0, i32 6
  %676 = load i32, i32* %675, align 8
  %677 = mul nsw i32 %670, %676
  store i32 %677, i32* %9, align 4
  %678 = load i32, i32* %9, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %745

680:                                              ; preds = %664
  %681 = load i32, i32* %9, align 4
  %682 = icmp sge i32 %681, 128
  br i1 %682, label %686, label %683

683:                                              ; preds = %680
  %684 = load i32, i32* %9, align 4
  %685 = icmp sle i32 %684, -128
  br i1 %685, label %686, label %691

686:                                              ; preds = %683, %680
  %687 = load i32*, i32** %6, align 8
  %688 = load i32, i32* %8, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i32, i32* %687, i64 %689
  store i32 128, i32* %690, align 4
  br label %696

691:                                              ; preds = %683
  %692 = load i32*, i32** %6, align 8
  %693 = load i32, i32* %8, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32, i32* %692, i64 %694
  store i32 64, i32* %695, align 4
  br label %696

696:                                              ; preds = %691, %686
  %697 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %698 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %697, i32 0, i32 1
  %699 = load %struct.TYPE_7__*, %struct.TYPE_7__** %698, align 8
  %700 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %699, i64 0
  %701 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %700, i32 0, i32 2
  %702 = load i32, i32* %701, align 8
  %703 = shl i32 %702, 3
  %704 = load i32*, i32** %6, align 8
  %705 = load i32, i32* %8, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %8, align 4
  %707 = sext i32 %705 to i64
  %708 = getelementptr inbounds i32, i32* %704, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = or i32 %709, %703
  store i32 %710, i32* %708, align 4
  %711 = load i32, i32* %9, align 4
  %712 = load i32*, i32** %6, align 8
  %713 = load i32, i32* %8, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %8, align 4
  %715 = sext i32 %713 to i64
  %716 = getelementptr inbounds i32, i32* %712, i64 %715
  store i32 %711, i32* %716, align 4
  %717 = load i32, i32* %9, align 4
  %718 = icmp sge i32 %717, 128
  br i1 %718, label %722, label %719

719:                                              ; preds = %696
  %720 = load i32, i32* %9, align 4
  %721 = icmp sle i32 %720, -128
  br i1 %721, label %722, label %744

722:                                              ; preds = %719, %696
  %723 = load i32, i32* %9, align 4
  %724 = ashr i32 %723, 8
  %725 = load i32*, i32** %6, align 8
  %726 = load i32, i32* %8, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %8, align 4
  %728 = sext i32 %726 to i64
  %729 = getelementptr inbounds i32, i32* %725, i64 %728
  store i32 %724, i32* %729, align 4
  %730 = load i32, i32* %9, align 4
  %731 = ashr i32 %730, 16
  %732 = load i32*, i32** %6, align 8
  %733 = load i32, i32* %8, align 4
  %734 = add nsw i32 %733, 1
  store i32 %734, i32* %8, align 4
  %735 = sext i32 %733 to i64
  %736 = getelementptr inbounds i32, i32* %732, i64 %735
  store i32 %731, i32* %736, align 4
  %737 = load i32, i32* %9, align 4
  %738 = ashr i32 %737, 24
  %739 = load i32*, i32** %6, align 8
  %740 = load i32, i32* %8, align 4
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %8, align 4
  %742 = sext i32 %740 to i64
  %743 = getelementptr inbounds i32, i32* %739, i64 %742
  store i32 %738, i32* %743, align 4
  br label %744

744:                                              ; preds = %722, %719
  br label %768

745:                                              ; preds = %664
  %746 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %747 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %746, i32 0, i32 1
  %748 = load %struct.TYPE_7__*, %struct.TYPE_7__** %747, align 8
  %749 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %748, i64 0
  %750 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %749, i32 0, i32 2
  %751 = load i32, i32* %750, align 8
  %752 = shl i32 %751, 3
  %753 = or i32 0, %752
  %754 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %755 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %754, i32 0, i32 1
  %756 = load %struct.TYPE_7__*, %struct.TYPE_7__** %755, align 8
  %757 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %756, i64 1
  %758 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %757, i32 0, i32 1
  %759 = load i32*, i32** %758, align 8
  %760 = getelementptr inbounds i32, i32* %759, i64 0
  %761 = load i32, i32* %760, align 4
  %762 = or i32 %753, %761
  %763 = load i32*, i32** %6, align 8
  %764 = load i32, i32* %8, align 4
  %765 = add nsw i32 %764, 1
  store i32 %765, i32* %8, align 4
  %766 = sext i32 %764 to i64
  %767 = getelementptr inbounds i32, i32* %763, i64 %766
  store i32 %762, i32* %767, align 4
  br label %768

768:                                              ; preds = %745, %744
  br label %769

769:                                              ; preds = %768, %627
  br label %791

770:                                              ; preds = %601
  %771 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %772 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %771, i32 0, i32 1
  %773 = load %struct.TYPE_7__*, %struct.TYPE_7__** %772, align 8
  %774 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %773, i64 0
  %775 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %774, i32 0, i32 2
  %776 = load i32, i32* %775, align 8
  %777 = shl i32 %776, 3
  %778 = or i32 192, %777
  %779 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %780 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %779, i32 0, i32 1
  %781 = load %struct.TYPE_7__*, %struct.TYPE_7__** %780, align 8
  %782 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %781, i64 1
  %783 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %782, i32 0, i32 2
  %784 = load i32, i32* %783, align 8
  %785 = or i32 %778, %784
  %786 = load i32*, i32** %6, align 8
  %787 = load i32, i32* %8, align 4
  %788 = add nsw i32 %787, 1
  store i32 %788, i32* %8, align 4
  %789 = sext i32 %787 to i64
  %790 = getelementptr inbounds i32, i32* %786, i64 %789
  store i32 %785, i32* %790, align 4
  br label %791

791:                                              ; preds = %770, %769
  %792 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %793 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %792, i32 0, i32 1
  %794 = load %struct.TYPE_7__*, %struct.TYPE_7__** %793, align 8
  %795 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %794, i64 2
  %796 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %795, i32 0, i32 3
  %797 = load i32, i32* %796, align 4
  %798 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %799 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %798, i32 0, i32 1
  %800 = load %struct.TYPE_7__*, %struct.TYPE_7__** %799, align 8
  %801 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %800, i64 2
  %802 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %801, i32 0, i32 4
  %803 = load i32, i32* %802, align 8
  %804 = mul nsw i32 %797, %803
  store i32 %804, i32* %10, align 4
  %805 = load i32, i32* %10, align 4
  %806 = load i32*, i32** %6, align 8
  %807 = load i32, i32* %8, align 4
  %808 = add nsw i32 %807, 1
  store i32 %808, i32* %8, align 4
  %809 = sext i32 %807 to i64
  %810 = getelementptr inbounds i32, i32* %806, i64 %809
  store i32 %805, i32* %810, align 4
  %811 = load i32, i32* %10, align 4
  %812 = icmp sge i32 %811, 128
  br i1 %812, label %816, label %813

813:                                              ; preds = %791
  %814 = load i32, i32* %10, align 4
  %815 = icmp sle i32 %814, -128
  br i1 %815, label %816, label %838

816:                                              ; preds = %813, %791
  %817 = load i32, i32* %10, align 4
  %818 = ashr i32 %817, 8
  %819 = load i32*, i32** %6, align 8
  %820 = load i32, i32* %8, align 4
  %821 = add nsw i32 %820, 1
  store i32 %821, i32* %8, align 4
  %822 = sext i32 %820 to i64
  %823 = getelementptr inbounds i32, i32* %819, i64 %822
  store i32 %818, i32* %823, align 4
  %824 = load i32, i32* %10, align 4
  %825 = ashr i32 %824, 16
  %826 = load i32*, i32** %6, align 8
  %827 = load i32, i32* %8, align 4
  %828 = add nsw i32 %827, 1
  store i32 %828, i32* %8, align 4
  %829 = sext i32 %827 to i64
  %830 = getelementptr inbounds i32, i32* %826, i64 %829
  store i32 %825, i32* %830, align 4
  %831 = load i32, i32* %10, align 4
  %832 = ashr i32 %831, 24
  %833 = load i32*, i32** %6, align 8
  %834 = load i32, i32* %8, align 4
  %835 = add nsw i32 %834, 1
  store i32 %835, i32* %8, align 4
  %836 = sext i32 %834 to i64
  %837 = getelementptr inbounds i32, i32* %833, i64 %836
  store i32 %832, i32* %837, align 4
  br label %838

838:                                              ; preds = %816, %813
  br label %839

839:                                              ; preds = %838, %591, %581, %561
  br label %841

840:                                              ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %843

841:                                              ; preds = %839, %560, %108
  %842 = load i32, i32* %8, align 4
  store i32 %842, i32* %4, align 4
  br label %843

843:                                              ; preds = %841, %840, %137
  %844 = load i32, i32* %4, align 4
  ret i32 %844
}

declare dso_local i32 @is_valid_registers(%struct.TYPE_9__*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
