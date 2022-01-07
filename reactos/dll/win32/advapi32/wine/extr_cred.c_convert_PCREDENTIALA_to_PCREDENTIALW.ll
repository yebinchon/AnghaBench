; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_convert_PCREDENTIALA_to_PCREDENTIALW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_cred.c_convert_PCREDENTIALA_to_PCREDENTIALW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i64, i32, i32*, i64, i32, i32*, i32*, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @convert_PCREDENTIALA_to_PCREDENTIALW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_PCREDENTIALA_to_PCREDENTIALW(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %10, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %90, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* @CP_ACP, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @MultiByteToWideChar(i32 %19, i32 0, i64 %22, i32 -1, i32* null, i32 0)
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %18, %13
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* @CP_ACP, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @MultiByteToWideChar(i32 %36, i32 0, i64 %39, i32 -1, i32* null, i32 0)
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %47
  %60 = load i32, i32* @CP_ACP, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @MultiByteToWideChar(i32 %60, i32 0, i64 %63, i32 -1, i32* null, i32 0)
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %59, %47
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load i32, i32* @CP_ACP, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @MultiByteToWideChar(i32 %77, i32 0, i64 %80, i32 -1, i32* null, i32 0)
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %76, %71
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %334

90:                                               ; preds = %3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = bitcast %struct.TYPE_5__* %91 to i8*
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %90
  %113 = load i8*, i8** %8, align 8
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 9
  store i32* %114, i32** %116, align 8
  %117 = load i32, i32* @CP_ACP, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 9
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = udiv i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @MultiByteToWideChar(i32 %117, i32 0, i64 %120, i32 -1, i32* %123, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 4, %130
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 %131
  store i8* %133, i8** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 4, %142
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %7, align 4
  br label %151

148:                                              ; preds = %90
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 9
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %148, %112
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %192

156:                                              ; preds = %151
  %157 = load i8*, i8** %8, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 8
  store i32* %158, i32** %160, align 8
  %161 = load i32, i32* @CP_ACP, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = udiv i64 %169, 4
  %171 = trunc i64 %170 to i32
  %172 = call i32 @MultiByteToWideChar(i32 %161, i32 0, i64 %164, i32 -1, i32* %167, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 4, %174
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 %175
  store i8* %177, i8** %8, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 4, %179
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 4, %186
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = sub i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %7, align 4
  br label %195

192:                                              ; preds = %151
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 8
  store i32* null, i32** %194, align 8
  br label %195

195:                                              ; preds = %192, %156
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 6
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %244

210:                                              ; preds = %195
  %211 = load i8*, i8** %8, align 8
  %212 = bitcast i8* %211 to i32*
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 5
  store i32* %212, i32** %214, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 5
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @memcpy(i32* %217, i32 %220, i64 %223)
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i8*, i8** %8, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 %227
  store i8* %229, i8** %8, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %10, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = sub nsw i64 %241, %239
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %7, align 4
  br label %247

244:                                              ; preds = %195
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 5
  store i32* null, i32** %246, align 8
  br label %247

247:                                              ; preds = %244, %210
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 3
  store i64 0, i64* %254, align 8
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 2
  store i32* null, i32** %256, align 8
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %297

261:                                              ; preds = %247
  %262 = load i8*, i8** %8, align 8
  %263 = bitcast i8* %262 to i32*
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  store i32* %263, i32** %265, align 8
  %266 = load i32, i32* @CP_ACP, align 4
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = udiv i64 %274, 4
  %276 = trunc i64 %275 to i32
  %277 = call i32 @MultiByteToWideChar(i32 %266, i32 0, i64 %269, i32 -1, i32* %272, i32 %276)
  store i32 %277, i32* %9, align 4
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = mul i64 4, %279
  %281 = load i8*, i8** %8, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 %280
  store i8* %282, i8** %8, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = mul i64 4, %284
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = add i64 %287, %285
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = mul i64 4, %291
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = sub i64 %294, %292
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %7, align 4
  br label %300

297:                                              ; preds = %247
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 1
  store i32* null, i32** %299, align 8
  br label %300

300:                                              ; preds = %297, %261
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %329

305:                                              ; preds = %300
  %306 = load i8*, i8** %8, align 8
  %307 = bitcast i8* %306 to i32*
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  store i32* %307, i32** %309, align 8
  %310 = load i32, i32* @CP_ACP, align 4
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = udiv i64 %318, 4
  %320 = trunc i64 %319 to i32
  %321 = call i32 @MultiByteToWideChar(i32 %310, i32 0, i64 %313, i32 -1, i32* %316, i32 %320)
  store i32 %321, i32* %9, align 4
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = mul i64 4, %323
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = add i64 %326, %324
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %10, align 4
  br label %332

329:                                              ; preds = %300
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  store i32* null, i32** %331, align 8
  br label %332

332:                                              ; preds = %329, %305
  %333 = load i32, i32* %10, align 4
  store i32 %333, i32* %4, align 4
  br label %334

334:                                              ; preds = %332, %88
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
