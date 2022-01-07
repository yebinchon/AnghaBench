; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltAddKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_keys.c_xsltAddKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i8*, i32, %struct.TYPE_14__*, i32*, i32*, i32**, %struct.TYPE_15__*, i8* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"xsl:key : 'match' pattern is malformed: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"xsl:key : 'match' pattern is empty\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"xsl:key : 'match' pattern compilation failed '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"xsl:key : 'use' expression compilation failed '%s'\0A\00", align 1
@XML_XPATH_NOVAR = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltAddKey(%struct.TYPE_13__* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.TYPE_15__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %13, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = icmp eq %struct.TYPE_13__* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %11, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %23, %6
  store i32 -1, i32* %7, align 4
  br label %332

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call %struct.TYPE_14__* @xsltNewKeyDef(i8* %34, i8* %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %14, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i8* @xmlStrdup(i8* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @xmlStrdup(i8* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %52 = call i32** @xmlGetNsList(i32 %50, %struct.TYPE_15__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  store i32** %52, i32*** %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 5
  %57 = load i32**, i32*** %56, align 8
  %58 = icmp ne i32** %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %69, %59
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  br label %60

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %33
  %74 = load i32, i32* %19, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %225, %73
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %227

85:                                               ; preds = %77
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %95, %85
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @IS_BLANK_CH(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %87

98:                                               ; preds = %87
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %151, %98
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 124
  br label %116

116:                                              ; preds = %108, %100
  %117 = phi i1 [ false, %100 ], [ %115, %108 ]
  br i1 %117, label %118, label %152

118:                                              ; preds = %116
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 91
  br i1 %125, label %126, label %148

126:                                              ; preds = %118
  %127 = load i8*, i8** %11, align 8
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @skipPredicate(i8* %127, i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_13__* %133, %struct.TYPE_15__* %134, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %137)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %141, %132
  br label %319

147:                                              ; preds = %126
  br label %151

148:                                              ; preds = %118
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %148, %147
  br label %100

152:                                              ; preds = %116
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %159 = call i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_13__* %157, %struct.TYPE_15__* %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = icmp ne %struct.TYPE_13__* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %162, %156
  br label %319

168:                                              ; preds = %152
  %169 = load i8*, i8** %11, align 8
  %170 = load i32, i32* %18, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 47
  br i1 %175, label %176, label %191

176:                                              ; preds = %168
  %177 = load i8*, i8** %15, align 8
  %178 = call i8* @xmlStrcat(i8* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %178, i8** %15, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %183 = icmp ne %struct.TYPE_13__* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %184, %181
  br label %319

190:                                              ; preds = %176
  br label %191

191:                                              ; preds = %190, %168
  %192 = load i8*, i8** %15, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = sub nsw i32 %197, %198
  %200 = call i8* @xmlStrncat(i8* %192, i8* %196, i32 %199)
  store i8* %200, i8** %15, align 8
  %201 = load i8*, i8** %15, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %212

203:                                              ; preds = %191
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %205 = icmp ne %struct.TYPE_13__* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %206, %203
  br label %319

212:                                              ; preds = %191
  %213 = load i8*, i8** %11, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 124
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load i8*, i8** %15, align 8
  %222 = call i8* @xmlStrcat(i8* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %222, i8** %15, align 8
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %17, align 4
  br label %225

225:                                              ; preds = %220, %212
  %226 = load i32, i32* %17, align 4
  store i32 %226, i32* %16, align 4
  br label %77

227:                                              ; preds = %77
  %228 = load i8*, i8** %15, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %227
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %233 = call i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_13__* %231, %struct.TYPE_15__* %232, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %235 = icmp ne %struct.TYPE_13__* %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  br label %241

241:                                              ; preds = %236, %230
  br label %319

242:                                              ; preds = %227
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %244 = load i8*, i8** %15, align 8
  %245 = call i8* @xsltXPathCompile(%struct.TYPE_13__* %243, i8* %244)
  %246 = bitcast i8* %245 to i32*
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 4
  store i32* %246, i32** %248, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = icmp eq i32* %251, null
  br i1 %252, label %253, label %266

253:                                              ; preds = %242
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %256 = load i8*, i8** %15, align 8
  %257 = call i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_13__* %254, %struct.TYPE_15__* %255, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %256)
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %259 = icmp ne %struct.TYPE_13__* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %260, %253
  br label %266

266:                                              ; preds = %265, %242
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %268 = load i8*, i8** %12, align 8
  %269 = call i8* @xsltXPathCompile(%struct.TYPE_13__* %267, i8* %268)
  %270 = bitcast i8* %269 to i32*
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 3
  store i32* %270, i32** %272, align 8
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = icmp eq i32* %275, null
  br i1 %276, label %277, label %290

277:                                              ; preds = %266
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %280 = load i8*, i8** %12, align 8
  %281 = call i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_13__* %278, %struct.TYPE_15__* %279, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %280)
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %283 = icmp ne %struct.TYPE_13__* %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %277
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %284, %277
  br label %290

290:                                              ; preds = %289, %266
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %292, align 8
  %294 = icmp eq %struct.TYPE_14__* %293, null
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  store %struct.TYPE_14__* %296, %struct.TYPE_14__** %298, align 8
  br label %316

299:                                              ; preds = %290
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %301, align 8
  store %struct.TYPE_14__* %302, %struct.TYPE_14__** %20, align 8
  br label %303

303:                                              ; preds = %308, %299
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %305, align 8
  %307 = icmp ne %struct.TYPE_14__* %306, null
  br i1 %307, label %308, label %312

308:                                              ; preds = %303
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  store %struct.TYPE_14__* %311, %struct.TYPE_14__** %20, align 8
  br label %303

312:                                              ; preds = %303
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 2
  store %struct.TYPE_14__* %313, %struct.TYPE_14__** %315, align 8
  br label %316

316:                                              ; preds = %312, %295
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %318, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  br label %319

319:                                              ; preds = %316, %241, %211, %189, %167, %146
  %320 = load i8*, i8** %15, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load i8*, i8** %15, align 8
  %324 = call i32 @xmlFree(i8* %323)
  br label %325

325:                                              ; preds = %322, %319
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %327 = icmp ne %struct.TYPE_14__* %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %330 = call i32 @xsltFreeKeyDef(%struct.TYPE_14__* %329)
  br label %331

331:                                              ; preds = %328, %325
  store i32 0, i32* %7, align 4
  br label %332

332:                                              ; preds = %331, %32
  %333 = load i32, i32* %7, align 4
  ret i32 %333
}

declare dso_local %struct.TYPE_14__* @xsltNewKeyDef(i8*, i8*) #1

declare dso_local i8* @xmlStrdup(i8*) #1

declare dso_local i32** @xmlGetNsList(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @IS_BLANK_CH(i8 signext) #1

declare dso_local i32 @skipPredicate(i8*, i32) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*, ...) #1

declare dso_local i8* @xmlStrcat(i8*, i8*) #1

declare dso_local i8* @xmlStrncat(i8*, i8*, i32) #1

declare dso_local i8* @xsltXPathCompile(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @xsltFreeKeyDef(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
