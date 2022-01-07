; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_cidr_ntop.c_inet_cidr_ntop_ipv6.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_cidr_ntop.c_inet_cidr_ntop_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*, i64)* @inet_cidr_ntop_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_cidr_ntop_ipv6(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [16 x i8], align 16
  %20 = alloca [50 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 128
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %4
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %303

31:                                               ; preds = %26
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  store i8* %32, i8** %21, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %21, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %21, align 8
  store i8 58, i8* %36, align 1
  %38 = load i8*, i8** %21, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %21, align 8
  store i8 58, i8* %38, align 1
  %40 = load i8*, i8** %21, align 8
  store i8 0, i8* %40, align 1
  br label %283

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 7
  %44 = sdiv i32 %43, 8
  store i32 %44, i32* %12, align 4
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @memcpy(i8* %45, i32* %46, i32 %47)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 16, %53
  %55 = call i32 @memset(i8* %52, i32 0, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %56, 8
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %41
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 8, %61
  %63 = shl i32 -1, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, %64
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  br label %73

73:                                               ; preds = %60, %41
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %23, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 15
  %78 = sdiv i32 %77, 16
  store i32 %78, i32* %22, align 4
  %79 = load i32, i32* %22, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 2, i32* %22, align 4
  br label %82

82:                                               ; preds = %81, %73
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %123, %82
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %22, align 4
  %86 = mul nsw i32 %85, 2
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %83
  %89 = load i32*, i32** %23, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %23, align 8
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %93, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %88
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %17, align 4
  %107 = sdiv i32 %106, 2
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %122

111:                                              ; preds = %88
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %118, %114, %111
  br label %122

122:                                              ; preds = %121, %108
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %17, align 4
  br label %83

126:                                              ; preds = %83
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %129, %126
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %22, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %173

140:                                              ; preds = %136
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %144, 6
  br i1 %145, label %172, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %147, 5
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32*, i32** %23, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 10
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 255
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32*, i32** %23, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 11
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 255
  br i1 %158, label %172, label %159

159:                                              ; preds = %154, %149, %146
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, 7
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i32*, i32** %23, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 14
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load i32*, i32** %23, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 15
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %173

172:                                              ; preds = %167, %154, %143
  store i32 1, i32* %18, align 4
  br label %173

173:                                              ; preds = %172, %167, %162, %159, %140, %136
  store i32 0, i32* %12, align 4
  br label %174

174:                                              ; preds = %279, %173
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %22, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %282

178:                                              ; preds = %174
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %211

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %181
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %187, %188
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %211

191:                                              ; preds = %185
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i8*, i8** %21, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %21, align 8
  store i8 58, i8* %196, align 1
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %22, align 4
  %201 = sub nsw i32 %200, 1
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i8*, i8** %21, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %21, align 8
  store i8 58, i8* %204, align 1
  br label %206

206:                                              ; preds = %203, %198
  %207 = load i32*, i32** %23, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %23, align 8
  %209 = load i32*, i32** %23, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %23, align 8
  br label %279

211:                                              ; preds = %185, %181, %178
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %254

214:                                              ; preds = %211
  %215 = load i32, i32* %12, align 4
  %216 = icmp sgt i32 %215, 5
  br i1 %216, label %217, label %254

217:                                              ; preds = %214
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 6
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 58, i32 46
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %21, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %21, align 8
  store i8 %222, i8* %223, align 1
  %225 = load i8*, i8** %21, align 8
  %226 = load i32*, i32** %23, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %23, align 8
  %228 = load i32, i32* %226, align 4
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @SPRINTF(i8* %230)
  %232 = load i8*, i8** %21, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8* %234, i8** %21, align 8
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 7
  br i1 %236, label %240, label %237

237:                                              ; preds = %217
  %238 = load i32, i32* %7, align 4
  %239 = icmp sgt i32 %238, 120
  br i1 %239, label %240, label %253

240:                                              ; preds = %237, %217
  %241 = load i8*, i8** %21, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %21, align 8
  store i8 46, i8* %241, align 1
  %243 = load i8*, i8** %21, align 8
  %244 = load i32*, i32** %23, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %23, align 8
  %246 = load i32, i32* %244, align 4
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = call i32 @SPRINTF(i8* %248)
  %250 = load i8*, i8** %21, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %21, align 8
  br label %253

253:                                              ; preds = %240, %237
  br label %278

254:                                              ; preds = %214, %211
  %255 = load i8*, i8** %21, align 8
  %256 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %257 = icmp ne i8* %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i8*, i8** %21, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %21, align 8
  store i8 58, i8* %259, align 1
  br label %261

261:                                              ; preds = %258, %254
  %262 = load i8*, i8** %21, align 8
  %263 = load i32*, i32** %23, align 8
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %264, 256
  %266 = load i32*, i32** %23, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %265, %268
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to i8*
  %272 = call i32 @SPRINTF(i8* %271)
  %273 = load i8*, i8** %21, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8* %275, i8** %21, align 8
  %276 = load i32*, i32** %23, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  store i32* %277, i32** %23, align 8
  br label %278

278:                                              ; preds = %261, %253
  br label %279

279:                                              ; preds = %278, %206
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %12, align 4
  br label %174

282:                                              ; preds = %174
  br label %283

283:                                              ; preds = %282, %35
  %284 = load i8*, i8** %21, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = call i32 @SPRINTF(i8* %287)
  %289 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %290 = call i32 @strlen(i8* %289)
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* %9, align 8
  %294 = icmp ugt i64 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %283
  br label %301

296:                                              ; preds = %283
  %297 = load i8*, i8** %8, align 8
  %298 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %299 = call i32 @strcpy(i8* %297, i8* %298)
  %300 = load i8*, i8** %8, align 8
  store i8* %300, i8** %5, align 8
  br label %303

301:                                              ; preds = %295
  %302 = load i32, i32* @EMSGSIZE, align 4
  store i32 %302, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %303

303:                                              ; preds = %301, %296, %29
  %304 = load i8*, i8** %5, align 8
  ret i8* %304
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SPRINTF(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
