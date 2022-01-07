; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileStepPattern.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileStepPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@AXIS_ATTRIBUTE = common dso_local global i64 0, align 8
@XSLT_OP_ATTR = common dso_local global i32 0, align 4
@XSLT_OP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"xsltCompileStepPattern : Name expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"xsltCompileStepPattern : no namespace bound to prefix %s\0A\00", align 1
@XSLT_OP_NS = common dso_local global i32 0, align 4
@XSLT_OP_ELEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"xsltCompileStepPattern : NodeTest expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@AXIS_CHILD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"xsltCompileStepPattern : 'child' or 'attribute' expected\0A\00", align 1
@CUR_PTR = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"xsltCompileStepPattern : ']' expected\0A\00", align 1
@XSLT_OP_PREDICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @xsltCompileStepPattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltCompileStepPattern(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* @SKIP_BLANKS, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i8, i8* @CUR, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @NEXT, align 4
  %25 = load i64, i64* @AXIS_ATTRIBUTE, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %23, %19, %3
  br label %27

27:                                               ; preds = %187, %26
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call i32* @xsltScanNCName(%struct.TYPE_7__* %31)
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i8, i8* @CUR, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 42
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32, i32* @NEXT, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @AXIS_ATTRIBUTE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @XSLT_OP_ATTR, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @PUSH(i32 %46, i32* null, i32* null, i32 %47)
  br label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @XSLT_OP_ALL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @PUSH(i32 %50, i32* null, i32* null, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %229

54:                                               ; preds = %36
  %55 = call i32 (i32*, i32*, i32*, i8*, ...) @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %331

58:                                               ; preds = %33
  %59 = load i32, i32* @SKIP_BLANKS, align 4
  %60 = load i8, i8* @CUR, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 40
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @xsltCompileIdKeyPattern(%struct.TYPE_7__* %64, i32* %65, i32 0, i32 %66, i64 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @xmlFree(i32* %69)
  store i32* null, i32** %5, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %331

76:                                               ; preds = %63
  br label %228

77:                                               ; preds = %58
  %78 = load i8, i8* @CUR, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 58
  br i1 %80, label %81, label %194

81:                                               ; preds = %77
  %82 = load i32, i32* @NEXT, align 4
  %83 = load i8, i8* @CUR, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 58
  br i1 %85, label %86, label %162

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  store i32* %87, i32** %12, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = call i32* @xsltScanNCName(%struct.TYPE_7__* %88)
  store i32* %89, i32** %5, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = call %struct.TYPE_8__* @xmlSearchNs(i32 %92, i32 %95, i32* %96)
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %13, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %99 = icmp eq %struct.TYPE_8__* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %86
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 (i32*, i32*, i32*, i8*, ...) @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32* %101)
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @xmlFree(i32* %103)
  store i32* null, i32** %12, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %331

107:                                              ; preds = %86
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32* @xmlStrdup(i32* %110)
  store i32* %111, i32** %9, align 8
  br label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @xmlFree(i32* %113)
  store i32* null, i32** %12, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %144

117:                                              ; preds = %112
  %118 = load i8, i8* @CUR, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 42
  br i1 %120, label %121, label %137

121:                                              ; preds = %117
  %122 = load i32, i32* @NEXT, align 4
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @AXIS_ATTRIBUTE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32, i32* @XSLT_OP_ATTR, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @PUSH(i32 %127, i32* null, i32* %128, i32 %129)
  store i32* null, i32** %9, align 8
  br label %136

131:                                              ; preds = %121
  %132 = load i32, i32* @XSLT_OP_NS, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @PUSH(i32 %132, i32* %133, i32* null, i32 %134)
  store i32* null, i32** %9, align 8
  br label %136

136:                                              ; preds = %131, %126
  br label %143

137:                                              ; preds = %117
  %138 = call i32 (i32*, i32*, i32*, i8*, ...) @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @xmlFree(i32* %141)
  br label %331

143:                                              ; preds = %136
  br label %161

144:                                              ; preds = %112
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* @AXIS_ATTRIBUTE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load i32, i32* @XSLT_OP_ATTR, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @PUSH(i32 %149, i32* %150, i32* %151, i32 %152)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %9, align 8
  br label %160

154:                                              ; preds = %144
  %155 = load i32, i32* @XSLT_OP_ELEM, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @PUSH(i32 %155, i32* %156, i32* %157, i32 %158)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %9, align 8
  br label %160

160:                                              ; preds = %154, %148
  br label %161

161:                                              ; preds = %160, %143
  br label %193

162:                                              ; preds = %81
  %163 = load i64, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = call i32 (i32*, i32*, i32*, i8*, ...) @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 4
  br label %331

169:                                              ; preds = %162
  %170 = load i32, i32* @NEXT, align 4
  %171 = load i32*, i32** %5, align 8
  %172 = call i64 @xmlStrEqual(i32* %171, i32* bitcast ([6 x i8]* @.str.3 to i32*))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i64, i64* @AXIS_CHILD, align 8
  store i64 %175, i64* %11, align 8
  br label %187

176:                                              ; preds = %169
  %177 = load i32*, i32** %5, align 8
  %178 = call i64 @xmlStrEqual(i32* %177, i32* bitcast ([10 x i8]* @.str.4 to i32*))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i64, i64* @AXIS_ATTRIBUTE, align 8
  store i64 %181, i64* %11, align 8
  br label %186

182:                                              ; preds = %176
  %183 = call i32 (i32*, i32*, i32*, i8*, ...) @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 4
  br label %331

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %174
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @xmlFree(i32* %188)
  store i32* null, i32** %5, align 8
  %190 = load i32, i32* @SKIP_BLANKS, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = call i32* @xsltScanNCName(%struct.TYPE_7__* %191)
  store i32* %192, i32** %5, align 8
  br label %27

193:                                              ; preds = %161
  br label %227

194:                                              ; preds = %77
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32* @xsltGetQNameURI(i32 %197, i32** %5)
  store i32* %198, i32** %8, align 8
  %199 = load i32*, i32** %5, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 4
  br label %331

204:                                              ; preds = %194
  %205 = load i32*, i32** %8, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32*, i32** %8, align 8
  %209 = call i32* @xmlStrdup(i32* %208)
  store i32* %209, i32** %9, align 8
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i64, i64* %11, align 8
  %212 = load i64, i64* @AXIS_ATTRIBUTE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  %215 = load i32, i32* @XSLT_OP_ATTR, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @PUSH(i32 %215, i32* %216, i32* %217, i32 %218)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %9, align 8
  br label %226

220:                                              ; preds = %210
  %221 = load i32, i32* @XSLT_OP_ELEM, align 4
  %222 = load i32*, i32** %5, align 8
  %223 = load i32*, i32** %9, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @PUSH(i32 %221, i32* %222, i32* %223, i32 %224)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %9, align 8
  br label %226

226:                                              ; preds = %220, %214
  br label %227

227:                                              ; preds = %226, %193
  br label %228

228:                                              ; preds = %227, %76
  br label %229

229:                                              ; preds = %228, %53
  %230 = load i32, i32* @SKIP_BLANKS, align 4
  store i32 0, i32* %10, align 4
  br label %231

231:                                              ; preds = %313, %229
  %232 = load i8, i8* @CUR, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 91
  br i1 %234, label %235, label %330

235:                                              ; preds = %231
  store i32* null, i32** %15, align 8
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* @NEXT, align 4
  %239 = load i32*, i32** @CUR_PTR, align 8
  store i32* %239, i32** %14, align 8
  br label %240

240:                                              ; preds = %303, %235
  %241 = load i8, i8* @CUR, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %305

244:                                              ; preds = %240
  %245 = load i8, i8* @CUR, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 91
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %303

251:                                              ; preds = %244
  %252 = load i8, i8* @CUR, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 93
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %305

261:                                              ; preds = %255
  br label %302

262:                                              ; preds = %251
  %263 = load i8, i8* @CUR, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 34
  br i1 %265, label %266, label %281

266:                                              ; preds = %262
  %267 = load i32, i32* @NEXT, align 4
  br label %268

268:                                              ; preds = %278, %266
  %269 = load i8, i8* @CUR, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = load i8, i8* @CUR, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 34
  br label %276

276:                                              ; preds = %272, %268
  %277 = phi i1 [ false, %268 ], [ %275, %272 ]
  br i1 %277, label %278, label %280

278:                                              ; preds = %276
  %279 = load i32, i32* @NEXT, align 4
  br label %268

280:                                              ; preds = %276
  br label %301

281:                                              ; preds = %262
  %282 = load i8, i8* @CUR, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 39
  br i1 %284, label %285, label %300

285:                                              ; preds = %281
  %286 = load i32, i32* @NEXT, align 4
  br label %287

287:                                              ; preds = %297, %285
  %288 = load i8, i8* @CUR, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %287
  %292 = load i8, i8* @CUR, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %293, 39
  br label %295

295:                                              ; preds = %291, %287
  %296 = phi i1 [ false, %287 ], [ %294, %291 ]
  br i1 %296, label %297, label %299

297:                                              ; preds = %295
  %298 = load i32, i32* @NEXT, align 4
  br label %287

299:                                              ; preds = %295
  br label %300

300:                                              ; preds = %299, %281
  br label %301

301:                                              ; preds = %300, %280
  br label %302

302:                                              ; preds = %301, %261
  br label %303

303:                                              ; preds = %302, %248
  %304 = load i32, i32* @NEXT, align 4
  br label %240

305:                                              ; preds = %260, %240
  %306 = load i8, i8* @CUR, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = call i32 (i32*, i32*, i32*, i8*, ...) @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  store i32 1, i32* %312, align 4
  br label %343

313:                                              ; preds = %305
  %314 = load i32*, i32** %14, align 8
  %315 = load i32*, i32** @CUR_PTR, align 8
  %316 = load i32*, i32** %14, align 8
  %317 = ptrtoint i32* %315 to i64
  %318 = ptrtoint i32* %316 to i64
  %319 = sub i64 %317, %318
  %320 = sdiv exact i64 %319, 4
  %321 = trunc i64 %320 to i32
  %322 = call i32* @xmlStrndup(i32* %314, i32 %321)
  store i32* %322, i32** %15, align 8
  %323 = load i32, i32* @XSLT_OP_PREDICATE, align 4
  %324 = load i32*, i32** %15, align 8
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @PUSH(i32 %323, i32* %324, i32* null, i32 %325)
  store i32* null, i32** %15, align 8
  %327 = call i32 (...) @SWAP()
  %328 = load i32, i32* @NEXT, align 4
  %329 = load i32, i32* @SKIP_BLANKS, align 4
  br label %231

330:                                              ; preds = %231
  br label %343

331:                                              ; preds = %201, %182, %165, %137, %100, %75, %54
  %332 = load i32*, i32** %5, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load i32*, i32** %5, align 8
  %336 = call i32 @xmlFree(i32* %335)
  br label %337

337:                                              ; preds = %334, %331
  %338 = load i32*, i32** %7, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32*, i32** %7, align 8
  %342 = call i32 @xmlFree(i32* %341)
  br label %343

343:                                              ; preds = %309, %330, %340, %337
  ret void
}

declare dso_local i32* @xsltScanNCName(%struct.TYPE_7__*) #1

declare dso_local i32 @PUSH(i32, i32*, i32*, i32) #1

declare dso_local i32 @xsltTransformError(i32*, i32*, i32*, i8*, ...) #1

declare dso_local i32 @xsltCompileIdKeyPattern(%struct.TYPE_7__*, i32*, i32, i32, i64) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local %struct.TYPE_8__* @xmlSearchNs(i32, i32, i32*) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32* @xsltGetQNameURI(i32, i32**) #1

declare dso_local i32* @xmlStrndup(i32*, i32) #1

declare dso_local i32 @SWAP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
