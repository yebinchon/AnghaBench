; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompilePatternInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompilePatternInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, double, i32*, %struct.TYPE_16__*, i32**, i8*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i64, i32*, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32*, i32*, %struct.TYPE_19__*, i8*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"xsltCompilePattern : NULL pattern\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"xsltCompilePattern : failed to compile '%s'\0A\00", align 1
@XSLT_OP_ELEM = common dso_local global i64 0, align 8
@XSLT_OP_ATTR = common dso_local global i64 0, align 8
@XSLT_OP_PI = common dso_local global i64 0, align 8
@XSLT_OP_END = common dso_local global i64 0, align 8
@XSLT_OP_NS = common dso_local global i64 0, align 8
@XSLT_OP_TEXT = common dso_local global i64 0, align 8
@XSLT_OP_ALL = common dso_local global i64 0, align 8
@XSLT_OP_NODE = common dso_local global i64 0, align 8
@XSLT_OP_COMMENT = common dso_local global i64 0, align 8
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (i8*, i32, i8*, %struct.TYPE_17__*, i32, i32)* @xsltCompilePatternInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @xsltCompilePatternInternal(i8* %0, i32 %1, i8* %2, %struct.TYPE_17__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %17, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 (i32*, %struct.TYPE_17__*, i8*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_17__* null, i8* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  br label %567

28:                                               ; preds = %6
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.TYPE_18__* @xsltNewParserContext(%struct.TYPE_17__* %29, i32 %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %14, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %33 = icmp eq %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  br label %567

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %533, %35
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %535

50:                                               ; preds = %42
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %60, %50
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @IS_BLANK_CH(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %65

65:                                               ; preds = %188, %63
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 124
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %21, align 4
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %81, %73
  %85 = phi i1 [ true, %73 ], [ %83, %81 ]
  br label %86

86:                                               ; preds = %84, %65
  %87 = phi i1 [ false, %65 ], [ %85, %84 ]
  br i1 %87, label %88, label %191

88:                                               ; preds = %86
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 91
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %21, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %21, align 4
  br label %179

99:                                               ; preds = %88
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 93
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %21, align 4
  br label %178

110:                                              ; preds = %99
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 39
  br i1 %117, label %118, label %143

118:                                              ; preds = %110
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %20, align 4
  br label %121

121:                                              ; preds = %139, %118
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %121
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 39
  br label %137

137:                                              ; preds = %129, %121
  %138 = phi i1 [ false, %121 ], [ %136, %129 ]
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  br label %121

142:                                              ; preds = %137
  br label %177

143:                                              ; preds = %110
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 34
  br i1 %150, label %151, label %176

151:                                              ; preds = %143
  %152 = load i32, i32* %20, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %20, align 4
  br label %154

154:                                              ; preds = %172, %151
  %155 = load i8*, i8** %8, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %154
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 34
  br label %170

170:                                              ; preds = %162, %154
  %171 = phi i1 [ false, %154 ], [ %169, %162 ]
  br i1 %171, label %172, label %175

172:                                              ; preds = %170
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %20, align 4
  br label %154

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175, %143
  br label %177

177:                                              ; preds = %176, %142
  br label %178

178:                                              ; preds = %177, %107
  br label %179

179:                                              ; preds = %178, %96
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %191

188:                                              ; preds = %179
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %20, align 4
  br label %65

191:                                              ; preds = %187, %86
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %20, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i8*, i8** %10, align 8
  %197 = call i32 (i32*, %struct.TYPE_17__*, i8*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_17__* null, i8* %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %554

198:                                              ; preds = %191
  %199 = call %struct.TYPE_19__* (...) @xsltNewCompMatch()
  store %struct.TYPE_19__* %199, %struct.TYPE_19__** %15, align 8
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %201 = icmp eq %struct.TYPE_19__* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %554

203:                                              ; preds = %198
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %205 = icmp eq %struct.TYPE_19__* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %207, %struct.TYPE_19__** %16, align 8
  br label %216

208:                                              ; preds = %203
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %210 = icmp ne %struct.TYPE_19__* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 7
  store %struct.TYPE_19__* %212, %struct.TYPE_19__** %214, align 8
  br label %215

215:                                              ; preds = %211, %208
  br label %216

216:                                              ; preds = %215, %206
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %217, %struct.TYPE_19__** %17, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 3
  store %struct.TYPE_19__* %218, %struct.TYPE_19__** %220, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 %225, %226
  %228 = call i32* @xmlStrndup(i8* %224, i32 %227)
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  store i32* %228, i32** %230, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %216
  br label %554

236:                                              ; preds = %216
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %19, align 4
  %242 = sub nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %239, i64 %243
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 2
  store i32* %244, i32** %246, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 3
  store i32* %249, i32** %251, align 8
  %252 = load i8*, i8** %10, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 6
  store i8* %252, i8** %254, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i8*, i8** %10, align 8
  %257 = call i32** @xmlGetNsList(i32 %255, i8* %256)
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 5
  store i32** %257, i32*** %259, align 8
  store i32 0, i32* %22, align 4
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 5
  %262 = load i32**, i32*** %261, align 8
  %263 = icmp ne i32** %262, null
  br i1 %263, label %264, label %278

264:                                              ; preds = %236
  br label %265

265:                                              ; preds = %274, %264
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 5
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %22, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %265
  %275 = load i32, i32* %22, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %22, align 4
  br label %265

277:                                              ; preds = %265
  br label %278

278:                                              ; preds = %277, %236
  %279 = load i32, i32* %22, align 4
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* %13, align 4
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 2
  store double 0.000000e+00, double* %286, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @xsltCompileLocationPathPattern(%struct.TYPE_18__* %287, i32 %288)
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %309

294:                                              ; preds = %278
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %296 = load i8*, i8** %10, align 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 (i32*, %struct.TYPE_17__*, i8*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_17__* %295, i8* %296, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %299)
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %302 = icmp ne %struct.TYPE_17__* %301, null
  br i1 %302, label %303, label %308

303:                                              ; preds = %294
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %303, %294
  br label %554

309:                                              ; preds = %278
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %312 = call i32 @xsltReverseCompMatch(%struct.TYPE_18__* %310, %struct.TYPE_19__* %311)
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 2
  %315 = load double, double* %314, align 8
  %316 = fcmp oeq double %315, 0.000000e+00
  br i1 %316, label %317, label %522

317:                                              ; preds = %309
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 4
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i64 0
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @XSLT_OP_ELEM, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %344, label %326

326:                                              ; preds = %317
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i64 0
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @XSLT_OP_ATTR, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %344, label %335

335:                                              ; preds = %326
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i64 0
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @XSLT_OP_PI, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %362

344:                                              ; preds = %335, %326, %317
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 4
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 2
  %350 = load i32*, i32** %349, align 8
  %351 = icmp ne i32* %350, null
  br i1 %351, label %352, label %362

352:                                              ; preds = %344
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 4
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i64 1
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @XSLT_OP_END, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %352
  br label %521

362:                                              ; preds = %352, %344, %335
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 4
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @XSLT_OP_ATTR, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %391

371:                                              ; preds = %362
  %372 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 4
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i64 0
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %391

379:                                              ; preds = %371
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i64 1
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @XSLT_OP_END, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %379
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 2
  store double -2.500000e-01, double* %390, align 8
  br label %520

391:                                              ; preds = %379, %371, %362
  %392 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 4
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i64 0
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @XSLT_OP_NS, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %420

400:                                              ; preds = %391
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 4
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 2
  %406 = load i32*, i32** %405, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %420

408:                                              ; preds = %400
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 4
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i64 1
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @XSLT_OP_END, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %408
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 2
  store double -2.500000e-01, double* %419, align 8
  br label %519

420:                                              ; preds = %408, %400, %391
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 4
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i64 0
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @XSLT_OP_ATTR, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %457

429:                                              ; preds = %420
  %430 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 4
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i64 0
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 2
  %435 = load i32*, i32** %434, align 8
  %436 = icmp eq i32* %435, null
  br i1 %436, label %437, label %457

437:                                              ; preds = %429
  %438 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %439 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i32 0, i32 4
  %440 = load %struct.TYPE_16__*, %struct.TYPE_16__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %440, i64 0
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 1
  %443 = load i32*, i32** %442, align 8
  %444 = icmp eq i32* %443, null
  br i1 %444, label %445, label %457

445:                                              ; preds = %437
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i32 0, i32 4
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i64 1
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @XSLT_OP_END, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %445
  %455 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 2
  store double -5.000000e-01, double* %456, align 8
  br label %518

457:                                              ; preds = %445, %437, %429, %420
  %458 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 4
  %460 = load %struct.TYPE_16__*, %struct.TYPE_16__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @XSLT_OP_PI, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %502, label %466

466:                                              ; preds = %457
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 4
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i64 0
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* @XSLT_OP_TEXT, align 8
  %474 = icmp eq i64 %472, %473
  br i1 %474, label %502, label %475

475:                                              ; preds = %466
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %477 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %476, i32 0, i32 4
  %478 = load %struct.TYPE_16__*, %struct.TYPE_16__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %478, i64 0
  %480 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = load i64, i64* @XSLT_OP_ALL, align 8
  %483 = icmp eq i64 %481, %482
  br i1 %483, label %502, label %484

484:                                              ; preds = %475
  %485 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %486 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i32 0, i32 4
  %487 = load %struct.TYPE_16__*, %struct.TYPE_16__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %487, i64 0
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @XSLT_OP_NODE, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %502, label %493

493:                                              ; preds = %484
  %494 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %495 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %494, i32 0, i32 4
  %496 = load %struct.TYPE_16__*, %struct.TYPE_16__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i64 0
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @XSLT_OP_COMMENT, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %502, label %514

502:                                              ; preds = %493, %484, %475, %466, %457
  %503 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %504 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i32 0, i32 4
  %505 = load %struct.TYPE_16__*, %struct.TYPE_16__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %505, i64 1
  %507 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @XSLT_OP_END, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %502
  %512 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %513 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %512, i32 0, i32 2
  store double -5.000000e-01, double* %513, align 8
  br label %517

514:                                              ; preds = %502, %493
  %515 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %516 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %515, i32 0, i32 2
  store double 5.000000e-01, double* %516, align 8
  br label %517

517:                                              ; preds = %514, %511
  br label %518

518:                                              ; preds = %517, %454
  br label %519

519:                                              ; preds = %518, %417
  br label %520

520:                                              ; preds = %519, %388
  br label %521

521:                                              ; preds = %520, %361
  br label %522

522:                                              ; preds = %521, %309
  %523 = load i8*, i8** %8, align 8
  %524 = load i32, i32* %20, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i8, i8* %523, i64 %525
  %527 = load i8, i8* %526, align 1
  %528 = sext i8 %527 to i32
  %529 = icmp eq i32 %528, 124
  br i1 %529, label %530, label %533

530:                                              ; preds = %522
  %531 = load i32, i32* %20, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %20, align 4
  br label %533

533:                                              ; preds = %530, %522
  %534 = load i32, i32* %20, align 4
  store i32 %534, i32* %18, align 4
  br label %42

535:                                              ; preds = %42
  %536 = load i32, i32* %20, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %550

538:                                              ; preds = %535
  %539 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %540 = load i8*, i8** %10, align 8
  %541 = call i32 (i32*, %struct.TYPE_17__*, i8*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_17__* %539, i8* %540, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %542 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %543 = icmp ne %struct.TYPE_17__* %542, null
  br i1 %543, label %544, label %549

544:                                              ; preds = %538
  %545 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %546 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %546, align 4
  br label %549

549:                                              ; preds = %544, %538
  br label %554

550:                                              ; preds = %535
  %551 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %552 = call i32 @xsltFreeParserContext(%struct.TYPE_18__* %551)
  %553 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %553, %struct.TYPE_19__** %7, align 8
  br label %567

554:                                              ; preds = %549, %308, %235, %202, %195
  %555 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %556 = icmp ne %struct.TYPE_18__* %555, null
  br i1 %556, label %557, label %560

557:                                              ; preds = %554
  %558 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %559 = call i32 @xsltFreeParserContext(%struct.TYPE_18__* %558)
  br label %560

560:                                              ; preds = %557, %554
  %561 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %562 = icmp ne %struct.TYPE_19__* %561, null
  br i1 %562, label %563, label %566

563:                                              ; preds = %560
  %564 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %565 = call i32 @xsltFreeCompMatchList(%struct.TYPE_19__* %564)
  br label %566

566:                                              ; preds = %563, %560
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  br label %567

567:                                              ; preds = %566, %550, %34, %25
  %568 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  ret %struct.TYPE_19__* %568
}

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_17__*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_18__* @xsltNewParserContext(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @IS_BLANK_CH(i8 signext) #1

declare dso_local %struct.TYPE_19__* @xsltNewCompMatch(...) #1

declare dso_local i32* @xmlStrndup(i8*, i32) #1

declare dso_local i32** @xmlGetNsList(i32, i8*) #1

declare dso_local i32 @xsltCompileLocationPathPattern(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @xsltReverseCompMatch(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @xsltFreeParserContext(%struct.TYPE_18__*) #1

declare dso_local i32 @xsltFreeCompMatchList(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
