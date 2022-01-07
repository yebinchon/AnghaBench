; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_ParseText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_syslink.c_SYSLINK_ParseText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32*, i32 }

@SYSLINK_ParseText.SL_LINKOPEN = internal constant [2 x i8] c"<a", align 1
@SYSLINK_ParseText.SL_HREF = internal constant [6 x i8] c"href=\22", align 1
@SYSLINK_ParseText.SL_ID = internal constant [4 x i8] c"id=\22", align 1
@SYSLINK_ParseText.SL_LINKCLOSE = internal constant [4 x i8] c"</a>", align 1
@slText = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"(%p %s)\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@slLink = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to create new document item!\0A\00", align 1
@WS_DISABLED = common dso_local global i32 0, align 4
@LIS_ENABLED = common dso_local global i32 0, align 4
@MAX_LINKID_TEXT = common dso_local global i64 0, align 8
@L_MAX_URL_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @SYSLINK_ParseText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYSLINK_ParseText(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  %27 = load i64, i64* @slText, align 8
  store i64 %27, i64* %15, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @debugstr_w(i8* %29)
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %28, i32 %30)
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %401, %362, %2
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %402

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 60
  br i1 %42, label %43, label %385

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @SYSLINK_ParseText.SL_LINKOPEN, i64 0, i64 0))
  %46 = call i32 @strncmpiW(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @SYSLINK_ParseText.SL_LINKOPEN, i64 0, i64 0), i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %187, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @slText, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %187

52:                                               ; preds = %48
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %20, align 8
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %21, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 62
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  store i32 3, i32* %10, align 4
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %21, align 8
  %62 = load i64, i64* @TRUE, align 8
  store i64 %62, i64* %20, align 8
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  br label %167

64:                                               ; preds = %52
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 4
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %68, %72
  br i1 %73, label %74, label %166

74:                                               ; preds = %64
  store i8** null, i8*** %22, align 8
  store i32* null, i32** %24, align 8
  store i32 3, i32* %10, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8* %78, i8** %23, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  br label %79

79:                                               ; preds = %149, %74
  %80 = load i8*, i8** %23, align 8
  %81 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @SYSLINK_ParseText.SL_HREF, i64 0, i64 0))
  %82 = call i32 @strncmpiW(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @SYSLINK_ParseText.SL_HREF, i64 0, i64 0), i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 6
  store i32 %86, i32* %10, align 4
  %87 = load i64, i64* @TRUE, align 8
  store i64 %87, i64* %20, align 8
  store i8** %17, i8*** %22, align 8
  store i32* %19, i32** %24, align 8
  br label %100

88:                                               ; preds = %79
  %89 = load i8*, i8** %23, align 8
  %90 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @SYSLINK_ParseText.SL_ID, i64 0, i64 0))
  %91 = call i32 @strncmpiW(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @SYSLINK_ParseText.SL_ID, i64 0, i64 0), i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %10, align 4
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %20, align 8
  store i8** %16, i8*** %22, align 8
  store i32* %18, i32** %24, align 8
  br label %99

97:                                               ; preds = %88
  %98 = load i64, i64* @FALSE, align 8
  store i64 %98, i64* %20, align 8
  br label %99

99:                                               ; preds = %97, %93
  br label %100

100:                                              ; preds = %99, %84
  %101 = load i64, i64* %20, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %100
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %20, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8**, i8*** %22, align 8
  store i8* %108, i8** %109, align 8
  %110 = load i32*, i32** %24, align 8
  store i32 0, i32* %110, align 4
  %111 = load i8**, i8*** %22, align 8
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %23, align 8
  br label %113

113:                                              ; preds = %133, %103
  %114 = load i8*, i8** %23, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  %121 = load i8*, i8** %23, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 34
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %20, align 8
  %127 = load i8*, i8** %23, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %23, align 8
  br label %136

129:                                              ; preds = %118
  %130 = load i32*, i32** %24, align 8
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %23, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %23, align 8
  br label %113

136:                                              ; preds = %125, %113
  br label %137

137:                                              ; preds = %136, %100
  %138 = load i64, i64* %20, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %137
  %141 = load i8*, i8** %23, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i8, i8* %145, align 4
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %143, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  %152 = load i8*, i8** %23, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %23, align 8
  br label %79

154:                                              ; preds = %140
  %155 = load i8*, i8** %23, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 62
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i64, i64* @TRUE, align 8
  store i64 %160, i64* %21, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %159, %154
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %137
  br label %166

166:                                              ; preds = %165, %64
  br label %167

167:                                              ; preds = %166, %60
  %168 = load i64, i64* %21, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i64, i64* %20, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i64, i64* @slLink, align 8
  store i64 %174, i64* %15, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8* %178, i8** %8, align 8
  store i32 0, i32* %12, align 4
  %179 = load i8*, i8** %6, align 8
  store i8* %179, i8** %9, align 8
  br label %186

180:                                              ; preds = %170, %167
  store i32 1, i32* %10, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i8*, i8** %6, align 8
  store i8* %184, i8** %7, align 8
  br label %185

185:                                              ; preds = %183, %180
  br label %186

186:                                              ; preds = %185, %173
  br label %377

187:                                              ; preds = %48, %43
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @SYSLINK_ParseText.SL_LINKCLOSE, i64 0, i64 0))
  %190 = call i32 @strncmpiW(i8* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @SYSLINK_ParseText.SL_LINKCLOSE, i64 0, i64 0), i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %364, label %192

192:                                              ; preds = %187
  %193 = load i64, i64* %15, align 8
  %194 = load i64, i64* @slLink, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %364

196:                                              ; preds = %192
  %197 = load i8*, i8** %9, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %364

199:                                              ; preds = %196
  %200 = load i8*, i8** %7, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %229

202:                                              ; preds = %199
  %203 = load i32, i32* %11, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %229

205:                                              ; preds = %202
  %206 = load i8*, i8** %9, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = icmp ugt i8* %206, %207
  br i1 %208, label %209, label %229

209:                                              ; preds = %205
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  %218 = load i64, i64* @slText, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %220 = call %struct.TYPE_13__* @SYSLINK_AppendDocItem(%struct.TYPE_12__* %210, i8* %211, i32 %217, i64 %218, %struct.TYPE_13__* %219)
  store %struct.TYPE_13__* %220, %struct.TYPE_13__** %14, align 8
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %222 = icmp eq %struct.TYPE_13__* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %209
  %224 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %3, align 4
  br label %556

226:                                              ; preds = %209
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %11, align 4
  br label %229

229:                                              ; preds = %226, %205, %202, %199
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 4
  store i8* %231, i8** %6, align 8
  %232 = load i8*, i8** %8, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %362

234:                                              ; preds = %229
  %235 = load i32, i32* %12, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %362

237:                                              ; preds = %234
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i64, i64* @slLink, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %243 = call %struct.TYPE_13__* @SYSLINK_AppendDocItem(%struct.TYPE_12__* %238, i8* %239, i32 %240, i64 %241, %struct.TYPE_13__* %242)
  store %struct.TYPE_13__* %243, %struct.TYPE_13__** %14, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %245 = icmp eq %struct.TYPE_13__* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %237
  %247 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %248 = load i32, i32* %13, align 4
  store i32 %248, i32* %3, align 4
  br label %556

249:                                              ; preds = %237
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  %252 = load i64, i64* %15, align 8
  %253 = load i64, i64* @slLink, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %361

255:                                              ; preds = %249
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @WS_DISABLED, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %255
  %263 = load i32, i32* @LIS_ENABLED, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %263
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %262, %255
  %271 = load i8*, i8** %16, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %310

273:                                              ; preds = %270
  %274 = load i32, i32* %18, align 4
  %275 = load i8*, i8** %16, align 8
  %276 = call i64 @strlenW(i8* %275)
  %277 = call i32 @min(i32 %274, i64 %276)
  store i32 %277, i32* %25, align 4
  %278 = load i32, i32* %25, align 4
  %279 = load i64, i64* @MAX_LINKID_TEXT, align 8
  %280 = sub nsw i64 %279, 1
  %281 = call i32 @min(i32 %278, i64 %280)
  store i32 %281, i32* %25, align 4
  %282 = load i32, i32* %25, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = mul i64 %284, 1
  %286 = trunc i64 %285 to i32
  %287 = call i8* @Alloc(i32 %286)
  %288 = bitcast i8* %287 to i32*
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  store i32* %288, i32** %292, align 8
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %309

299:                                              ; preds = %273
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i8*, i8** %16, align 8
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, 1
  %308 = call i32 @lstrcpynW(i32* %304, i8* %305, i32 %307)
  br label %309

309:                                              ; preds = %299, %273
  br label %315

310:                                              ; preds = %270
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 1
  store i32* null, i32** %314, align 8
  br label %315

315:                                              ; preds = %310, %309
  %316 = load i8*, i8** %17, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %355

318:                                              ; preds = %315
  %319 = load i32, i32* %19, align 4
  %320 = load i8*, i8** %17, align 8
  %321 = call i64 @strlenW(i8* %320)
  %322 = call i32 @min(i32 %319, i64 %321)
  store i32 %322, i32* %25, align 4
  %323 = load i32, i32* %25, align 4
  %324 = load i64, i64* @L_MAX_URL_LENGTH, align 8
  %325 = sub nsw i64 %324, 1
  %326 = call i32 @min(i32 %323, i64 %325)
  store i32 %326, i32* %25, align 4
  %327 = load i32, i32* %25, align 4
  %328 = add nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = mul i64 %329, 1
  %331 = trunc i64 %330 to i32
  %332 = call i8* @Alloc(i32 %331)
  %333 = bitcast i8* %332 to i32*
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  store i32* %333, i32** %337, align 8
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = icmp ne i32* %342, null
  br i1 %343, label %344, label %354

344:                                              ; preds = %318
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i8*, i8** %17, align 8
  %351 = load i32, i32* %25, align 4
  %352 = add nsw i32 %351, 1
  %353 = call i32 @lstrcpynW(i32* %349, i8* %350, i32 %352)
  br label %354

354:                                              ; preds = %344, %318
  br label %360

355:                                              ; preds = %315
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  store i32* null, i32** %359, align 8
  br label %360

360:                                              ; preds = %355, %354
  br label %361

361:                                              ; preds = %360, %249
  store i8* null, i8** %8, align 8
  br label %362

362:                                              ; preds = %361, %234, %229
  %363 = load i64, i64* @slText, align 8
  store i64 %363, i64* %15, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %7, align 8
  br label %33

364:                                              ; preds = %196, %192, %187
  store i32 1, i32* %10, align 4
  %365 = load i32, i32* %12, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %12, align 4
  %367 = load i64, i64* %15, align 8
  %368 = load i64, i64* @slText, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %364
  %371 = load i8*, i8** %7, align 8
  %372 = icmp eq i8* %371, null
  br i1 %372, label %373, label %375

373:                                              ; preds = %370
  %374 = load i8*, i8** %6, align 8
  store i8* %374, i8** %7, align 8
  br label %375

375:                                              ; preds = %373, %370, %364
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376, %186
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* %11, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* %11, align 4
  %381 = load i32, i32* %10, align 4
  %382 = load i8*, i8** %6, align 8
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8* %384, i8** %6, align 8
  br label %401

385:                                              ; preds = %38
  %386 = load i32, i32* %11, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %11, align 4
  %388 = load i32, i32* %12, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %12, align 4
  %390 = load i8*, i8** %7, align 8
  %391 = icmp eq i8* %390, null
  br i1 %391, label %392, label %398

392:                                              ; preds = %385
  %393 = load i64, i64* %15, align 8
  %394 = load i64, i64* @slText, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = load i8*, i8** %6, align 8
  store i8* %397, i8** %7, align 8
  br label %398

398:                                              ; preds = %396, %392, %385
  %399 = load i8*, i8** %6, align 8
  %400 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %400, i8** %6, align 8
  br label %401

401:                                              ; preds = %398, %377
  br label %33

402:                                              ; preds = %33
  %403 = load i8*, i8** %7, align 8
  %404 = icmp ne i8* %403, null
  br i1 %404, label %405, label %533

405:                                              ; preds = %402
  %406 = load i32, i32* %11, align 4
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %533

408:                                              ; preds = %405
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %410 = load i8*, i8** %7, align 8
  %411 = load i32, i32* %11, align 4
  %412 = load i64, i64* %15, align 8
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %414 = call %struct.TYPE_13__* @SYSLINK_AppendDocItem(%struct.TYPE_12__* %409, i8* %410, i32 %411, i64 %412, %struct.TYPE_13__* %413)
  store %struct.TYPE_13__* %414, %struct.TYPE_13__** %14, align 8
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %416 = icmp eq %struct.TYPE_13__* %415, null
  br i1 %416, label %417, label %420

417:                                              ; preds = %408
  %418 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %419 = load i32, i32* %13, align 4
  store i32 %419, i32* %3, align 4
  br label %556

420:                                              ; preds = %408
  %421 = load i64, i64* %15, align 8
  %422 = load i64, i64* @slLink, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %530

424:                                              ; preds = %420
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @WS_DISABLED, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %439, label %431

431:                                              ; preds = %424
  %432 = load i32, i32* @LIS_ENABLED, align 4
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = or i32 %437, %432
  store i32 %438, i32* %436, align 8
  br label %439

439:                                              ; preds = %431, %424
  %440 = load i8*, i8** %16, align 8
  %441 = icmp ne i8* %440, null
  br i1 %441, label %442, label %479

442:                                              ; preds = %439
  %443 = load i32, i32* %18, align 4
  %444 = load i8*, i8** %16, align 8
  %445 = call i64 @strlenW(i8* %444)
  %446 = call i32 @min(i32 %443, i64 %445)
  store i32 %446, i32* %26, align 4
  %447 = load i32, i32* %26, align 4
  %448 = load i64, i64* @MAX_LINKID_TEXT, align 8
  %449 = sub nsw i64 %448, 1
  %450 = call i32 @min(i32 %447, i64 %449)
  store i32 %450, i32* %26, align 4
  %451 = load i32, i32* %26, align 4
  %452 = add nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = mul i64 %453, 1
  %455 = trunc i64 %454 to i32
  %456 = call i8* @Alloc(i32 %455)
  %457 = bitcast i8* %456 to i32*
  %458 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 1
  store i32* %457, i32** %461, align 8
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 1
  %466 = load i32*, i32** %465, align 8
  %467 = icmp ne i32* %466, null
  br i1 %467, label %468, label %478

468:                                              ; preds = %442
  %469 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %470 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 1
  %473 = load i32*, i32** %472, align 8
  %474 = load i8*, i8** %16, align 8
  %475 = load i32, i32* %26, align 4
  %476 = add nsw i32 %475, 1
  %477 = call i32 @lstrcpynW(i32* %473, i8* %474, i32 %476)
  br label %478

478:                                              ; preds = %468, %442
  br label %484

479:                                              ; preds = %439
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 1
  store i32* null, i32** %483, align 8
  br label %484

484:                                              ; preds = %479, %478
  %485 = load i8*, i8** %17, align 8
  %486 = icmp ne i8* %485, null
  br i1 %486, label %487, label %524

487:                                              ; preds = %484
  %488 = load i32, i32* %19, align 4
  %489 = load i8*, i8** %17, align 8
  %490 = call i64 @strlenW(i8* %489)
  %491 = call i32 @min(i32 %488, i64 %490)
  store i32 %491, i32* %26, align 4
  %492 = load i32, i32* %26, align 4
  %493 = load i64, i64* @L_MAX_URL_LENGTH, align 8
  %494 = sub nsw i64 %493, 1
  %495 = call i32 @min(i32 %492, i64 %494)
  store i32 %495, i32* %26, align 4
  %496 = load i32, i32* %26, align 4
  %497 = add nsw i32 %496, 1
  %498 = sext i32 %497 to i64
  %499 = mul i64 %498, 1
  %500 = trunc i64 %499 to i32
  %501 = call i8* @Alloc(i32 %500)
  %502 = bitcast i8* %501 to i32*
  %503 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 0
  store i32* %502, i32** %506, align 8
  %507 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %508 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %509, i32 0, i32 0
  %511 = load i32*, i32** %510, align 8
  %512 = icmp ne i32* %511, null
  br i1 %512, label %513, label %523

513:                                              ; preds = %487
  %514 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 0
  %518 = load i32*, i32** %517, align 8
  %519 = load i8*, i8** %17, align 8
  %520 = load i32, i32* %26, align 4
  %521 = add nsw i32 %520, 1
  %522 = call i32 @lstrcpynW(i32* %518, i8* %519, i32 %521)
  br label %523

523:                                              ; preds = %513, %487
  br label %529

524:                                              ; preds = %484
  %525 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %526 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 0
  store i32* null, i32** %528, align 8
  br label %529

529:                                              ; preds = %524, %523
  br label %530

530:                                              ; preds = %529, %420
  %531 = load i32, i32* %13, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %13, align 4
  br label %533

533:                                              ; preds = %530, %405, %402
  %534 = load i8*, i8** %8, align 8
  %535 = icmp ne i8* %534, null
  br i1 %535, label %536, label %554

536:                                              ; preds = %533
  %537 = load i32, i32* %12, align 4
  %538 = icmp sgt i32 %537, 0
  br i1 %538, label %539, label %554

539:                                              ; preds = %536
  %540 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %541 = load i8*, i8** %8, align 8
  %542 = load i32, i32* %12, align 4
  %543 = load i64, i64* @slText, align 8
  %544 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %545 = call %struct.TYPE_13__* @SYSLINK_AppendDocItem(%struct.TYPE_12__* %540, i8* %541, i32 %542, i64 %543, %struct.TYPE_13__* %544)
  store %struct.TYPE_13__* %545, %struct.TYPE_13__** %14, align 8
  %546 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %547 = icmp eq %struct.TYPE_13__* %546, null
  br i1 %547, label %548, label %551

548:                                              ; preds = %539
  %549 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %550 = load i32, i32* %13, align 4
  store i32 %550, i32* %3, align 4
  br label %556

551:                                              ; preds = %539
  %552 = load i32, i32* %13, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %13, align 4
  br label %554

554:                                              ; preds = %551, %536, %533
  %555 = load i32, i32* %13, align 4
  store i32 %555, i32* %3, align 4
  br label %556

556:                                              ; preds = %554, %548, %417, %246, %223
  %557 = load i32, i32* %3, align 4
  ret i32 %557
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strncmpiW(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local %struct.TYPE_13__* @SYSLINK_AppendDocItem(%struct.TYPE_12__*, i8*, i32, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @lstrcpynW(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
