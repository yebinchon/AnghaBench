; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pic_load_core.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pic_load_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"bad format\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"too many packets\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bad file\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"file too short (reading packets)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"packet isn't 8bpp\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"packet has bad compression type\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"file too short (pure read count)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"file too short (mixed read count)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"scanline overrun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32*, i32*)* @stbi__pic_load_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__pic_load_core(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [10 x %struct.TYPE_2__], align 16
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_2__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [4 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %77, %5
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %32, 10
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %6, align 8
  br label %287

36:                                               ; preds = %30
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* %16, i64 0, i64 %39
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %17, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @stbi__get8(i32* %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @stbi__get8(i32* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @stbi__get8(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @stbi__get8(i32* %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @stbi__at_eof(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %36
  %68 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32* %68, i32** %6, align 8
  br label %287

69:                                               ; preds = %36
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 8
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32* %75, i32** %6, align 8
  br label %287

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %30, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 16
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 4, i32 3
  %86 = load i32*, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %282, %80
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %285

91:                                               ; preds = %87
  store i32 0, i32* %18, align 4
  br label %92

92:                                               ; preds = %278, %91
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %281

96:                                               ; preds = %92
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* %16, i64 0, i64 %98
  store %struct.TYPE_2__* %99, %struct.TYPE_2__** %19, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = mul nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  store i32* %106, i32** %20, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %110 [
    i32 0, label %112
    i32 1, label %133
    i32 2, label %184
  ]

110:                                              ; preds = %96
  %111 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32* %111, i32** %6, align 8
  br label %287

112:                                              ; preds = %96
  store i32 0, i32* %21, align 4
  br label %113

113:                                              ; preds = %127, %112
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @stbi__readval(i32* %118, i32 %121, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  store i32* null, i32** %6, align 8
  br label %287

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %21, align 4
  %130 = load i32*, i32** %20, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32* %131, i32** %20, align 8
  br label %113

132:                                              ; preds = %113
  br label %277

133:                                              ; preds = %96
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %22, align 4
  br label %135

135:                                              ; preds = %179, %133
  %136 = load i32, i32* %22, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %183

138:                                              ; preds = %135
  %139 = load i32*, i32** %7, align 8
  %140 = call i8* @stbi__get8(i32* %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %24, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = call i64 @stbi__at_eof(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32* %146, i32** %6, align 8
  br label %287

147:                                              ; preds = %138
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %22, align 4
  store i32 %152, i32* %24, align 4
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %159 = call i32 @stbi__readval(i32* %154, i32 %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %153
  store i32* null, i32** %6, align 8
  br label %287

162:                                              ; preds = %153
  store i32 0, i32* %23, align 4
  br label %163

163:                                              ; preds = %174, %162
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %24, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %20, align 8
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %173 = call i32 @stbi__copyval(i32 %170, i32* %171, i32* %172)
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %23, align 4
  %177 = load i32*, i32** %20, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 4
  store i32* %178, i32** %20, align 8
  br label %163

179:                                              ; preds = %163
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %22, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %22, align 4
  br label %135

183:                                              ; preds = %135
  br label %277

184:                                              ; preds = %96
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %26, align 4
  br label %186

186:                                              ; preds = %272, %184
  %187 = load i32, i32* %26, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %276

189:                                              ; preds = %186
  %190 = load i32*, i32** %7, align 8
  %191 = call i8* @stbi__get8(i32* %190)
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %27, align 4
  %193 = load i32*, i32** %7, align 8
  %194 = call i64 @stbi__at_eof(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32* %197, i32** %6, align 8
  br label %287

198:                                              ; preds = %189
  %199 = load i32, i32* %27, align 4
  %200 = icmp sge i32 %199, 128
  br i1 %200, label %201, label %243

201:                                              ; preds = %198
  %202 = load i32, i32* %27, align 4
  %203 = icmp eq i32 %202, 128
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 @stbi__get16be(i32* %205)
  store i32 %206, i32* %27, align 4
  br label %210

207:                                              ; preds = %201
  %208 = load i32, i32* %27, align 4
  %209 = sub nsw i32 %208, 127
  store i32 %209, i32* %27, align 4
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %26, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32* %215, i32** %6, align 8
  br label %287

216:                                              ; preds = %210
  %217 = load i32*, i32** %7, align 8
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %222 = call i32 @stbi__readval(i32* %217, i32 %220, i32* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %216
  store i32* null, i32** %6, align 8
  br label %287

225:                                              ; preds = %216
  store i32 0, i32* %28, align 4
  br label %226

226:                                              ; preds = %237, %225
  %227 = load i32, i32* %28, align 4
  %228 = load i32, i32* %27, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %20, align 8
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %236 = call i32 @stbi__copyval(i32 %233, i32* %234, i32* %235)
  br label %237

237:                                              ; preds = %230
  %238 = load i32, i32* %28, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %28, align 4
  %240 = load i32*, i32** %20, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 4
  store i32* %241, i32** %20, align 8
  br label %226

242:                                              ; preds = %226
  br label %272

243:                                              ; preds = %198
  %244 = load i32, i32* %27, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %27, align 4
  %246 = load i32, i32* %27, align 4
  %247 = load i32, i32* %26, align 4
  %248 = icmp sgt i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32* %250, i32** %6, align 8
  br label %287

251:                                              ; preds = %243
  store i32 0, i32* %28, align 4
  br label %252

252:                                              ; preds = %266, %251
  %253 = load i32, i32* %28, align 4
  %254 = load i32, i32* %27, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %271

256:                                              ; preds = %252
  %257 = load i32*, i32** %7, align 8
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %20, align 8
  %262 = call i32 @stbi__readval(i32* %257, i32 %260, i32* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %256
  store i32* null, i32** %6, align 8
  br label %287

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %28, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %28, align 4
  %269 = load i32*, i32** %20, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 4
  store i32* %270, i32** %20, align 8
  br label %252

271:                                              ; preds = %252
  br label %272

272:                                              ; preds = %271, %242
  %273 = load i32, i32* %27, align 4
  %274 = load i32, i32* %26, align 4
  %275 = sub nsw i32 %274, %273
  store i32 %275, i32* %26, align 4
  br label %186

276:                                              ; preds = %186
  br label %277

277:                                              ; preds = %276, %183, %132
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %18, align 4
  br label %92

281:                                              ; preds = %92
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %14, align 4
  br label %87

285:                                              ; preds = %87
  %286 = load i32*, i32** %11, align 8
  store i32* %286, i32** %6, align 8
  br label %287

287:                                              ; preds = %285, %264, %249, %224, %214, %196, %161, %145, %125, %110, %74, %67, %34
  %288 = load i32*, i32** %6, align 8
  ret i32* %288
}

declare dso_local i32* @stbi__errpuc(i8*, i8*) #1

declare dso_local i8* @stbi__get8(i32*) #1

declare dso_local i64 @stbi__at_eof(i32*) #1

declare dso_local i32 @stbi__readval(i32*, i32, i32*) #1

declare dso_local i32 @stbi__copyval(i32, i32*, i32*) #1

declare dso_local i32 @stbi__get16be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
