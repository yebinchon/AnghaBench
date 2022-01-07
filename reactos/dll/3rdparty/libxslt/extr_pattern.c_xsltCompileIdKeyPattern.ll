; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileIdKeyPattern.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltCompileIdKeyPattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CUR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [38 x i8] c"xsltCompileIdKeyPattern : ( expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"xsltCompileIdKeyPattern : NodeTest expected\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"xsltCompileIdKeyPattern : Literal expected\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"xsltCompileIdKeyPattern : ) expected\0A\00", align 1
@XSLT_OP_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"xsltCompileIdKeyPattern : , expected\0A\00", align 1
@XSLT_OP_KEY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"processing-instruction\00", align 1
@XSLT_OP_PI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@XSLT_OP_TEXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@XSLT_OP_COMMENT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@AXIS_ATTRIBUTE = common dso_local global i64 0, align 8
@XSLT_OP_ATTR = common dso_local global i32 0, align 4
@XSLT_OP_NODE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [64 x i8] c"xsltCompileIdKeyPattern : expecting 'key' or 'id' or node type\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"xsltCompileIdKeyPattern : node type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32, i32, i64)* @xsltCompileIdKeyPattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltCompileIdKeyPattern(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i8, i8* @CUR, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 40
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %252

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @xmlStrEqual(i32* %24, i32* bitcast ([3 x i8]* @.str.1 to i32*))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %252

34:                                               ; preds = %27
  %35 = load i32, i32* @NEXT, align 4
  %36 = load i32, i32* @SKIP_BLANKS, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = call i32* @xsltScanLiteral(%struct.TYPE_4__* %37)
  store i32* %38, i32** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %252

45:                                               ; preds = %34
  %46 = load i32, i32* @SKIP_BLANKS, align 4
  %47 = load i8, i8* @CUR, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 41
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @xmlFree(i32* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %252

56:                                               ; preds = %45
  %57 = load i32, i32* @NEXT, align 4
  %58 = load i32, i32* @XSLT_OP_ID, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @PUSH(i32 %58, i32* %59, i32* null, i32 %60)
  store i32* null, i32** %11, align 8
  br label %250

62:                                               ; preds = %23, %20
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %131

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @xmlStrEqual(i32* %66, i32* bitcast ([4 x i8]* @.str.5 to i32*))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %252

76:                                               ; preds = %69
  %77 = load i32, i32* @NEXT, align 4
  %78 = load i32, i32* @SKIP_BLANKS, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = call i32* @xsltScanLiteral(%struct.TYPE_4__* %79)
  store i32* %80, i32** %11, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %252

87:                                               ; preds = %76
  %88 = load i32, i32* @SKIP_BLANKS, align 4
  %89 = load i8, i8* @CUR, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 44
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @xmlFree(i32* %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  br label %252

98:                                               ; preds = %87
  %99 = load i32, i32* @NEXT, align 4
  %100 = load i32, i32* @SKIP_BLANKS, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = call i32* @xsltScanLiteral(%struct.TYPE_4__* %101)
  store i32* %102, i32** %12, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @xmlFree(i32* %109)
  br label %252

111:                                              ; preds = %98
  %112 = load i32, i32* @SKIP_BLANKS, align 4
  %113 = load i8, i8* @CUR, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 41
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @xmlFree(i32* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @xmlFree(i32* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  br label %252

124:                                              ; preds = %111
  %125 = load i32, i32* @NEXT, align 4
  %126 = load i32, i32* @XSLT_OP_KEY, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @PUSH(i32 %126, i32* %127, i32* %128, i32 %129)
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  br label %249

131:                                              ; preds = %65, %62
  %132 = load i32*, i32** %7, align 8
  %133 = call i64 @xmlStrEqual(i32* %132, i32* bitcast ([23 x i8]* @.str.7 to i32*))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %131
  %136 = load i32, i32* @NEXT, align 4
  %137 = load i32, i32* @SKIP_BLANKS, align 4
  %138 = load i8, i8* @CUR, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 41
  br i1 %140, label %141, label %162

141:                                              ; preds = %135
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = call i32* @xsltScanLiteral(%struct.TYPE_4__* %142)
  store i32* %143, i32** %11, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %252

150:                                              ; preds = %141
  %151 = load i32, i32* @SKIP_BLANKS, align 4
  %152 = load i8, i8* @CUR, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 41
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 4
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @xmlFree(i32* %159)
  br label %252

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161, %135
  %163 = load i32, i32* @NEXT, align 4
  %164 = load i32, i32* @XSLT_OP_PI, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @PUSH(i32 %164, i32* %165, i32* null, i32 %166)
  store i32* null, i32** %11, align 8
  br label %248

168:                                              ; preds = %131
  %169 = load i32*, i32** %7, align 8
  %170 = call i64 @xmlStrEqual(i32* %169, i32* bitcast ([5 x i8]* @.str.8 to i32*))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %168
  %173 = load i32, i32* @NEXT, align 4
  %174 = load i32, i32* @SKIP_BLANKS, align 4
  %175 = load i8, i8* @CUR, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 41
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  br label %252

182:                                              ; preds = %172
  %183 = load i32, i32* @NEXT, align 4
  %184 = load i32, i32* @XSLT_OP_TEXT, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @PUSH(i32 %184, i32* null, i32* null, i32 %185)
  br label %247

187:                                              ; preds = %168
  %188 = load i32*, i32** %7, align 8
  %189 = call i64 @xmlStrEqual(i32* %188, i32* bitcast ([8 x i8]* @.str.9 to i32*))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %187
  %192 = load i32, i32* @NEXT, align 4
  %193 = load i32, i32* @SKIP_BLANKS, align 4
  %194 = load i8, i8* @CUR, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 41
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 4
  br label %252

201:                                              ; preds = %191
  %202 = load i32, i32* @NEXT, align 4
  %203 = load i32, i32* @XSLT_OP_COMMENT, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @PUSH(i32 %203, i32* null, i32* null, i32 %204)
  br label %246

206:                                              ; preds = %187
  %207 = load i32*, i32** %7, align 8
  %208 = call i64 @xmlStrEqual(i32* %207, i32* bitcast ([5 x i8]* @.str.10 to i32*))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %206
  %211 = load i32, i32* @NEXT, align 4
  %212 = load i32, i32* @SKIP_BLANKS, align 4
  %213 = load i8, i8* @CUR, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 41
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  store i32 1, i32* %219, align 4
  br label %252

220:                                              ; preds = %210
  %221 = load i32, i32* @NEXT, align 4
  %222 = load i64, i64* %10, align 8
  %223 = load i64, i64* @AXIS_ATTRIBUTE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @XSLT_OP_ATTR, align 4
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @PUSH(i32 %226, i32* null, i32* null, i32 %227)
  br label %233

229:                                              ; preds = %220
  %230 = load i32, i32* @XSLT_OP_NODE, align 4
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @PUSH(i32 %230, i32* null, i32* null, i32 %231)
  br label %233

233:                                              ; preds = %229, %225
  br label %245

234:                                              ; preds = %206
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  store i32 1, i32* %240, align 4
  br label %252

241:                                              ; preds = %234
  %242 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  store i32 1, i32* %244, align 4
  br label %252

245:                                              ; preds = %233
  br label %246

246:                                              ; preds = %245, %201
  br label %247

247:                                              ; preds = %246, %182
  br label %248

248:                                              ; preds = %247, %162
  br label %249

249:                                              ; preds = %248, %124
  br label %250

250:                                              ; preds = %249, %56
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251, %241, %237, %216, %197, %178, %155, %148, %116, %107, %92, %85, %72, %50, %43, %30, %16
  ret void
}

declare dso_local i32 @xsltTransformError(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32* @xsltScanLiteral(%struct.TYPE_4__*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @PUSH(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
