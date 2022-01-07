; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_fill_DataFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_fill_DataFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Copying (c) to %d from %d (value %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Copying (s) to %d from %d (value %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Copying (i) to %d from %d (value %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Copying (c) to %d default value %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Copying (s) to %d default value %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Copying (i) to %d default value %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_DataFormat(i8* %0, i32 %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @min(i32 %24, i32 %27)
  %29 = call i32 @memcpy(i8* %22, i8* %23, i32 %28)
  br label %403

30:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %399, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %402

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %252

47:                                               ; preds = %37
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %220 [
    i32 1, label %56
    i32 2, label %109
    i32 4, label %165
  ]

56:                                               ; preds = %47
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i8, i8* %74, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %73, i32 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8, i8* %87, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %98, i64 %107
  store i8 %97, i8* %108, align 1
  br label %251

109:                                              ; preds = %47
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i8*, i8** %10, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i8, i8* %127, i64 %135
  %137 = bitcast i8* %136 to i16*
  %138 = load i16, i16* %137, align 2
  %139 = sext i16 %138 to i32
  %140 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %126, i32 %139)
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i8, i8* %141, i64 %149
  %151 = bitcast i8* %150 to i16*
  %152 = load i16, i16* %151, align 2
  %153 = load i8*, i8** %11, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %153, i64 %162
  %164 = bitcast i8* %163 to i16*
  store i16 %152, i16* %164, align 2
  br label %251

165:                                              ; preds = %47
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i8*, i8** %10, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i8, i8* %183, i64 %191
  %193 = bitcast i8* %192 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %182, i32 %194)
  %196 = load i8*, i8** %10, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i8, i8* %196, i64 %204
  %206 = bitcast i8* %205 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %11, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %208, i64 %217
  %219 = bitcast i8* %218 to i32*
  store i32 %207, i32* %219, align 4
  br label %251

220:                                              ; preds = %47
  %221 = load i8*, i8** %11, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %221, i64 %230
  %232 = load i8*, i8** %10, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds i8, i8* %232, i64 %240
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @memcpy(i8* %231, i8* %241, i32 %249)
  br label %251

251:                                              ; preds = %220, %165, %109, %56
  br label %398

252:                                              ; preds = %37
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  switch i32 %260, label %376 [
    i32 1, label %261
    i32 2, label %299
    i32 4, label %338
  ]

261:                                              ; preds = %252
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %269, i32 %277)
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = trunc i32 %286 to i8
  %288 = load i8*, i8** %11, align 8
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %288, i64 %297
  store i8 %287, i8* %298, align 1
  br label %397

299:                                              ; preds = %252
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %309, align 8
  %311 = load i32, i32* %9, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %307, i32 %315)
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = trunc i32 %324 to i16
  %326 = load i8*, i8** %11, align 8
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %326, i64 %335
  %337 = bitcast i8* %336 to i16*
  store i16 %325, i16* %337, align 2
  br label %397

338:                                              ; preds = %252
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %340, align 8
  %342 = load i32, i32* %9, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %348, align 8
  %350 = load i32, i32* %9, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %346, i32 %354)
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load i8*, i8** %11, align 8
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %364, i64 %373
  %375 = bitcast i8* %374 to i32*
  store i32 %363, i32* %375, align 4
  br label %397

376:                                              ; preds = %252
  %377 = load i8*, i8** %11, align 8
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = load i32, i32* %9, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %377, i64 %386
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @memset(i8* %387, i32 0, i32 %395)
  br label %397

397:                                              ; preds = %376, %338, %299, %261
  br label %398

398:                                              ; preds = %397, %251
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %9, align 4
  br label %31

402:                                              ; preds = %31
  br label %403

403:                                              ; preds = %402, %21
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
