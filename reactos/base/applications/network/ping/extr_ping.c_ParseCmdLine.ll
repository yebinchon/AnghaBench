; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_ParseCmdLine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_ParseCmdLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@PingForever = common dso_local global i8* null, align 8
@ResolveAddress = common dso_local global i8* null, align 8
@PingCount = common dso_local global i8* null, align 8
@StdErr = common dso_local global i32 0, align 4
@IDS_BAD_VALUE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@IDS_MISSING_VALUE = common dso_local global i32 0, align 4
@RequestSize = common dso_local global i8* null, align 8
@MAX_SEND_SIZE = common dso_local global i8* null, align 8
@Family = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IDS_WRONG_FAMILY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 73, i32 80, i32 118, i32 52, i32 0], align 4
@AF_INET = common dso_local global i32 0, align 4
@IP_FLAG_DF = common dso_local global i32 0, align 4
@IpOptions = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UCHAR_MAX = common dso_local global i8* null, align 8
@Timeout = common dso_local global i8* null, align 8
@DEFAULT_TIMEOUT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i32] [i32 73, i32 80, i32 118, i32 54, i32 0], align 4
@IDS_BAD_OPTION = common dso_local global i32 0, align 4
@TargetName = common dso_local global i32* null, align 8
@IDS_BAD_PARAMETER = common dso_local global i32 0, align 4
@IDS_MISSING_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32**)* @ParseCmdLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ParseCmdLine(i32 %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @StdOut, align 4
  %12 = load i32, i32* @IDS_USAGE, align 4
  %13 = call i32 (i32, i32, ...) @ConResPrintf(i32 %11, i32 %12)
  %14 = load i8*, i8** @FALSE, align 8
  store i8* %14, i8** %3, align 8
  br label %358

15:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %345, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %348

20:                                               ; preds = %16
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %325

38:                                               ; preds = %29, %20
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %311 [
    i32 116, label %46
    i32 97, label %48
    i32 110, label %50
    i32 108, label %90
    i32 102, label %130
    i32 105, label %149
    i32 118, label %194
    i32 119, label %228
    i32 82, label %258
    i32 52, label %274
    i32 54, label %290
    i32 63, label %306
  ]

46:                                               ; preds = %38
  %47 = load i8*, i8** @TRUE, align 8
  store i8* %47, i8** @PingForever, align 8
  br label %324

48:                                               ; preds = %38
  %49 = load i8*, i8** @TRUE, align 8
  store i8* %49, i8** @ResolveAddress, align 8
  br label %324

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  %56 = load i8*, i8** @FALSE, align 8
  store i8* %56, i8** @PingForever, align 8
  %57 = load i32**, i32*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i8* @wcstoul(i32* %62, i32* null, i32 0)
  store i8* %63, i8** @PingCount, align 8
  %64 = load i8*, i8** @PingCount, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %55
  %67 = load i32, i32* @StdErr, align 4
  %68 = load i32, i32* @IDS_BAD_VALUE, align 4
  %69 = load i32**, i32*** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @UINT_MAX, align 4
  %76 = call i32 (i32, i32, ...) @ConResPrintf(i32 %67, i32 %68, i32* %74, i32 1, i32 %75)
  %77 = load i8*, i8** @FALSE, align 8
  store i8* %77, i8** %3, align 8
  br label %358

78:                                               ; preds = %55
  br label %89

79:                                               ; preds = %50
  %80 = load i32, i32* @StdErr, align 4
  %81 = load i32, i32* @IDS_MISSING_VALUE, align 4
  %82 = load i32**, i32*** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 (i32, i32, ...) @ConResPrintf(i32 %80, i32 %81, i32* %86)
  %88 = load i8*, i8** @FALSE, align 8
  store i8* %88, i8** %3, align 8
  br label %358

89:                                               ; preds = %78
  br label %324

90:                                               ; preds = %38
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %90
  %96 = load i32**, i32*** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %96, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i8* @wcstoul(i32* %101, i32* null, i32 0)
  store i8* %102, i8** @RequestSize, align 8
  %103 = load i8*, i8** @RequestSize, align 8
  %104 = load i8*, i8** @MAX_SEND_SIZE, align 8
  %105 = icmp ugt i8* %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %95
  %107 = load i32, i32* @StdErr, align 4
  %108 = load i32, i32* @IDS_BAD_VALUE, align 4
  %109 = load i32**, i32*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %109, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i8*, i8** @MAX_SEND_SIZE, align 8
  %116 = call i32 (i32, i32, ...) @ConResPrintf(i32 %107, i32 %108, i32* %114, i32 0, i8* %115)
  %117 = load i8*, i8** @FALSE, align 8
  store i8* %117, i8** %3, align 8
  br label %358

118:                                              ; preds = %95
  br label %129

119:                                              ; preds = %90
  %120 = load i32, i32* @StdErr, align 4
  %121 = load i32, i32* @IDS_MISSING_VALUE, align 4
  %122 = load i32**, i32*** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 (i32, i32, ...) @ConResPrintf(i32 %120, i32 %121, i32* %126)
  %128 = load i8*, i8** @FALSE, align 8
  store i8* %128, i8** %3, align 8
  br label %358

129:                                              ; preds = %118
  br label %324

130:                                              ; preds = %38
  %131 = load i32, i32* @Family, align 4
  %132 = load i32, i32* @AF_INET6, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* @StdErr, align 4
  %136 = load i32, i32* @IDS_WRONG_FAMILY, align 4
  %137 = load i32**, i32*** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 (i32, i32, ...) @ConResPrintf(i32 %135, i32 %136, i32* %141, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str, i64 0, i64 0))
  %143 = load i8*, i8** @FALSE, align 8
  store i8* %143, i8** %3, align 8
  br label %358

144:                                              ; preds = %130
  %145 = load i32, i32* @AF_INET, align 4
  store i32 %145, i32* @Family, align 4
  %146 = load i32, i32* @IP_FLAG_DF, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @IpOptions, i32 0, i32 1), align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @IpOptions, i32 0, i32 1), align 4
  br label %324

149:                                              ; preds = %38
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %183

154:                                              ; preds = %149
  %155 = load i32**, i32*** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %155, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = call i8* @wcstoul(i32* %160, i32* null, i32 0)
  store i8* %161, i8** %7, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %154
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** @UCHAR_MAX, align 8
  %167 = icmp ugt i8* %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %164, %154
  %169 = load i32, i32* @StdErr, align 4
  %170 = load i32, i32* @IDS_BAD_VALUE, align 4
  %171 = load i32**, i32*** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %171, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i8*, i8** @UCHAR_MAX, align 8
  %178 = call i32 (i32, i32, ...) @ConResPrintf(i32 %169, i32 %170, i32* %176, i32 1, i8* %177)
  %179 = load i8*, i8** @FALSE, align 8
  store i8* %179, i8** %3, align 8
  br label %358

180:                                              ; preds = %164
  %181 = load i8*, i8** %7, align 8
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @IpOptions, i32 0, i32 0), align 4
  br label %193

183:                                              ; preds = %149
  %184 = load i32, i32* @StdErr, align 4
  %185 = load i32, i32* @IDS_MISSING_VALUE, align 4
  %186 = load i32**, i32*** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 (i32, i32, ...) @ConResPrintf(i32 %184, i32 %185, i32* %190)
  %192 = load i8*, i8** @FALSE, align 8
  store i8* %192, i8** %3, align 8
  br label %358

193:                                              ; preds = %180
  br label %324

194:                                              ; preds = %38
  %195 = load i32, i32* @Family, align 4
  %196 = load i32, i32* @AF_INET6, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load i32, i32* @StdErr, align 4
  %200 = load i32, i32* @IDS_WRONG_FAMILY, align 4
  %201 = load i32**, i32*** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 (i32, i32, ...) @ConResPrintf(i32 %199, i32 %200, i32* %205, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str, i64 0, i64 0))
  %207 = load i8*, i8** @FALSE, align 8
  store i8* %207, i8** %3, align 8
  br label %358

208:                                              ; preds = %194
  %209 = load i32, i32* @AF_INET, align 4
  store i32 %209, i32* @Family, align 4
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %4, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %227

217:                                              ; preds = %208
  %218 = load i32, i32* @StdErr, align 4
  %219 = load i32, i32* @IDS_MISSING_VALUE, align 4
  %220 = load i32**, i32*** %5, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 (i32, i32, ...) @ConResPrintf(i32 %218, i32 %219, i32* %224)
  %226 = load i8*, i8** @FALSE, align 8
  store i8* %226, i8** %3, align 8
  br label %358

227:                                              ; preds = %214
  br label %324

228:                                              ; preds = %38
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  %231 = load i32, i32* %4, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %228
  %234 = load i32**, i32*** %5, align 8
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %234, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = call i8* @wcstoul(i32* %239, i32* null, i32 0)
  store i8* %240, i8** @Timeout, align 8
  %241 = load i8*, i8** @Timeout, align 8
  %242 = load i8*, i8** @DEFAULT_TIMEOUT, align 8
  %243 = icmp ult i8* %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %233
  %245 = load i8*, i8** @DEFAULT_TIMEOUT, align 8
  store i8* %245, i8** @Timeout, align 8
  br label %246

246:                                              ; preds = %244, %233
  br label %257

247:                                              ; preds = %228
  %248 = load i32, i32* @StdErr, align 4
  %249 = load i32, i32* @IDS_MISSING_VALUE, align 4
  %250 = load i32**, i32*** %5, align 8
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %250, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 (i32, i32, ...) @ConResPrintf(i32 %248, i32 %249, i32* %254)
  %256 = load i8*, i8** @FALSE, align 8
  store i8* %256, i8** %3, align 8
  br label %358

257:                                              ; preds = %246
  br label %324

258:                                              ; preds = %38
  %259 = load i32, i32* @Family, align 4
  %260 = load i32, i32* @AF_INET, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = load i32, i32* @StdErr, align 4
  %264 = load i32, i32* @IDS_WRONG_FAMILY, align 4
  %265 = load i32**, i32*** %5, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32*, i32** %265, i64 %267
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 (i32, i32, ...) @ConResPrintf(i32 %263, i32 %264, i32* %269, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.1, i64 0, i64 0))
  %271 = load i8*, i8** @FALSE, align 8
  store i8* %271, i8** %3, align 8
  br label %358

272:                                              ; preds = %258
  %273 = load i32, i32* @AF_INET6, align 4
  store i32 %273, i32* @Family, align 4
  br label %324

274:                                              ; preds = %38
  %275 = load i32, i32* @Family, align 4
  %276 = load i32, i32* @AF_INET6, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = load i32, i32* @StdErr, align 4
  %280 = load i32, i32* @IDS_WRONG_FAMILY, align 4
  %281 = load i32**, i32*** %5, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32*, i32** %281, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 (i32, i32, ...) @ConResPrintf(i32 %279, i32 %280, i32* %285, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str, i64 0, i64 0))
  %287 = load i8*, i8** @FALSE, align 8
  store i8* %287, i8** %3, align 8
  br label %358

288:                                              ; preds = %274
  %289 = load i32, i32* @AF_INET, align 4
  store i32 %289, i32* @Family, align 4
  br label %324

290:                                              ; preds = %38
  %291 = load i32, i32* @Family, align 4
  %292 = load i32, i32* @AF_INET, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %290
  %295 = load i32, i32* @StdErr, align 4
  %296 = load i32, i32* @IDS_WRONG_FAMILY, align 4
  %297 = load i32**, i32*** %5, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 (i32, i32, ...) @ConResPrintf(i32 %295, i32 %296, i32* %301, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.1, i64 0, i64 0))
  %303 = load i8*, i8** @FALSE, align 8
  store i8* %303, i8** %3, align 8
  br label %358

304:                                              ; preds = %290
  %305 = load i32, i32* @AF_INET6, align 4
  store i32 %305, i32* @Family, align 4
  br label %324

306:                                              ; preds = %38
  %307 = load i32, i32* @StdOut, align 4
  %308 = load i32, i32* @IDS_USAGE, align 4
  %309 = call i32 (i32, i32, ...) @ConResPrintf(i32 %307, i32 %308)
  %310 = load i8*, i8** @FALSE, align 8
  store i8* %310, i8** %3, align 8
  br label %358

311:                                              ; preds = %38
  %312 = load i32, i32* @StdErr, align 4
  %313 = load i32, i32* @IDS_BAD_OPTION, align 4
  %314 = load i32**, i32*** %5, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32*, i32** %314, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 (i32, i32, ...) @ConResPrintf(i32 %312, i32 %313, i32* %318)
  %320 = load i32, i32* @StdErr, align 4
  %321 = load i32, i32* @IDS_USAGE, align 4
  %322 = call i32 (i32, i32, ...) @ConResPrintf(i32 %320, i32 %321)
  %323 = load i8*, i8** @FALSE, align 8
  store i8* %323, i8** %3, align 8
  br label %358

324:                                              ; preds = %304, %288, %272, %257, %227, %193, %144, %129, %89, %48, %46
  br label %344

325:                                              ; preds = %29
  %326 = load i32*, i32** @TargetName, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %328, label %338

328:                                              ; preds = %325
  %329 = load i32, i32* @StdErr, align 4
  %330 = load i32, i32* @IDS_BAD_PARAMETER, align 4
  %331 = load i32**, i32*** %5, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %331, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 (i32, i32, ...) @ConResPrintf(i32 %329, i32 %330, i32* %335)
  %337 = load i8*, i8** @FALSE, align 8
  store i8* %337, i8** %3, align 8
  br label %358

338:                                              ; preds = %325
  %339 = load i32**, i32*** %5, align 8
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %339, i64 %341
  %343 = load i32*, i32** %342, align 8
  store i32* %343, i32** @TargetName, align 8
  br label %344

344:                                              ; preds = %338, %324
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %6, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %6, align 4
  br label %16

348:                                              ; preds = %16
  %349 = load i32*, i32** @TargetName, align 8
  %350 = icmp eq i32* %349, null
  br i1 %350, label %351, label %356

351:                                              ; preds = %348
  %352 = load i32, i32* @StdErr, align 4
  %353 = load i32, i32* @IDS_MISSING_ADDRESS, align 4
  %354 = call i32 (i32, i32, ...) @ConResPrintf(i32 %352, i32 %353)
  %355 = load i8*, i8** @FALSE, align 8
  store i8* %355, i8** %3, align 8
  br label %358

356:                                              ; preds = %348
  %357 = load i8*, i8** @TRUE, align 8
  store i8* %357, i8** %3, align 8
  br label %358

358:                                              ; preds = %356, %351, %328, %311, %306, %294, %278, %262, %247, %217, %198, %183, %168, %134, %119, %106, %79, %66, %10
  %359 = load i8*, i8** %3, align 8
  ret i8* %359
}

declare dso_local i32 @ConResPrintf(i32, i32, ...) #1

declare dso_local i8* @wcstoul(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
