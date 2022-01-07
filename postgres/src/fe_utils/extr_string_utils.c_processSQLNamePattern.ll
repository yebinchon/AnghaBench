; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_processSQLNamePattern.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_processSQLNamePattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"  AND \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"WHERE \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"^(\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\$\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"|*+?()[]{}.^$\\\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")$\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"^(.*)$\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"(%s OPERATOR(pg_catalog.~) \00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c" COLLATE pg_catalog.default\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\0A        OR %s OPERATOR(pg_catalog.~) \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"%s OPERATOR(pg_catalog.~) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processSQLNamePattern(i32* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_11__, align 8
  %21 = alloca %struct.TYPE_11__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @PQclientEncoding(i32* %28)
  store i32 %29, i32* %22, align 4
  store i32 0, i32* %26, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %9
  %33 = load i8*, i8** %19, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %41 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %36, i8* %40)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %26, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %35, %32
  %46 = load i32, i32* %26, align 4
  store i32 %46, i32* %10, align 4
  br label %310

47:                                               ; preds = %9
  %48 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %20)
  %49 = call i32 @initPQExpBuffer(%struct.TYPE_11__* %21)
  %50 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  %51 = load i8*, i8** %13, align 8
  store i8* %51, i8** %24, align 8
  br label %52

52:                                               ; preds = %181, %47
  %53 = load i8*, i8** %24, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %182

56:                                               ; preds = %52
  %57 = load i8*, i8** %24, align 8
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %27, align 1
  %59 = load i8, i8* %27, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load i32, i32* %23, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i8*, i8** %24, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 34
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = call i32 @appendPQExpBufferChar(%struct.TYPE_11__* %21, i8 signext 34)
  %73 = load i8*, i8** %24, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %24, align 8
  br label %80

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %23, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %23, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i8*, i8** %24, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %24, align 8
  br label %181

83:                                               ; preds = %56
  %84 = load i32, i32* %23, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i8, i8* %27, align 1
  %88 = call i64 @isupper(i8 zeroext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i8, i8* %27, align 1
  %92 = call signext i8 @pg_tolower(i8 zeroext %91)
  %93 = call i32 @appendPQExpBufferChar(%struct.TYPE_11__* %21, i8 signext %92)
  %94 = load i8*, i8** %24, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %24, align 8
  br label %180

96:                                               ; preds = %86, %83
  %97 = load i32, i32* %23, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load i8, i8* %27, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 42
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i8*, i8** %24, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %24, align 8
  br label %179

107:                                              ; preds = %99, %96
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load i8, i8* %27, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 63
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = call i32 @appendPQExpBufferChar(%struct.TYPE_11__* %21, i8 signext 46)
  %116 = load i8*, i8** %24, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %24, align 8
  br label %178

118:                                              ; preds = %110, %107
  %119 = load i32, i32* %23, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %118
  %122 = load i8, i8* %27, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 46
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = call i32 @resetPQExpBuffer(%struct.TYPE_11__* %20)
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %20, i8* %128)
  %130 = call i32 @resetPQExpBuffer(%struct.TYPE_11__* %21)
  %131 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i8*, i8** %24, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %24, align 8
  br label %177

134:                                              ; preds = %121, %118
  %135 = load i8, i8* %27, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 36
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i8*, i8** %24, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %24, align 8
  br label %176

142:                                              ; preds = %134
  %143 = load i32, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145, %142
  %149 = load i8, i8* %27, align 1
  %150 = call i64 @strchr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8 signext %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @appendPQExpBufferChar(%struct.TYPE_11__* %21, i8 signext 92)
  br label %154

154:                                              ; preds = %152, %148, %145
  %155 = load i8*, i8** %24, align 8
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @PQmblen(i8* %155, i32 %156)
  store i32 %157, i32* %25, align 4
  br label %158

158:                                              ; preds = %169, %154
  %159 = load i32, i32* %25, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %25, align 4
  %161 = icmp ne i32 %159, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i8*, i8** %24, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br label %167

167:                                              ; preds = %162, %158
  %168 = phi i1 [ false, %158 ], [ %166, %162 ]
  br i1 %168, label %169, label %175

169:                                              ; preds = %167
  %170 = load i8*, i8** %24, align 8
  %171 = load i8, i8* %170, align 1
  %172 = call i32 @appendPQExpBufferChar(%struct.TYPE_11__* %21, i8 signext %171)
  %173 = load i8*, i8** %24, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %24, align 8
  br label %158

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %138
  br label %177

177:                                              ; preds = %176, %125
  br label %178

178:                                              ; preds = %177, %114
  br label %179

179:                                              ; preds = %178, %103
  br label %180

180:                                              ; preds = %179, %90
  br label %181

181:                                              ; preds = %180, %80
  br label %52

182:                                              ; preds = %52
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 2
  br i1 %185, label %186, label %254

186:                                              ; preds = %182
  %187 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %253

192:                                              ; preds = %186
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %198 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %193, i8* %197)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %26, align 4
  %199 = load i8*, i8** %18, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %234

201:                                              ; preds = %192
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %203)
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i32*, i32** %11, align 8
  %209 = call i32 @appendStringLiteralConn(%struct.TYPE_11__* %205, i8* %207, i32* %208)
  %210 = load i32*, i32** %11, align 8
  %211 = call i32 @PQserverVersion(i32* %210)
  %212 = icmp sge i32 %211, 120000
  br i1 %212, label %213, label %216

213:                                              ; preds = %201
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %215 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %214, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %201
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %218 = load i8*, i8** %18, align 8
  %219 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %218)
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @appendStringLiteralConn(%struct.TYPE_11__* %220, i8* %222, i32* %223)
  %225 = load i32*, i32** %11, align 8
  %226 = call i32 @PQserverVersion(i32* %225)
  %227 = icmp sge i32 %226, 120000
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %230 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %216
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %233 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %252

234:                                              ; preds = %192
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %235, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %236)
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @appendStringLiteralConn(%struct.TYPE_11__* %238, i8* %240, i32* %241)
  %243 = load i32*, i32** %11, align 8
  %244 = call i32 @PQserverVersion(i32* %243)
  %245 = icmp sge i32 %244, 120000
  br i1 %245, label %246, label %249

246:                                              ; preds = %234
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %248 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %247, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %234
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %251 = call i32 @appendPQExpBufferChar(%struct.TYPE_11__* %250, i8 signext 10)
  br label %252

252:                                              ; preds = %249, %231
  br label %253

253:                                              ; preds = %252, %186
  br label %254

254:                                              ; preds = %253, %182
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = icmp sgt i32 %256, 2
  br i1 %257, label %258, label %292

258:                                              ; preds = %254
  %259 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = call i64 @strcmp(i8* %261, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %291

264:                                              ; preds = %258
  %265 = load i8*, i8** %16, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %291

267:                                              ; preds = %264
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %273 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %268, i8* %272)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %26, align 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %275 = load i8*, i8** %16, align 8
  %276 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %275)
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = load i32*, i32** %11, align 8
  %281 = call i32 @appendStringLiteralConn(%struct.TYPE_11__* %277, i8* %279, i32* %280)
  %282 = load i32*, i32** %11, align 8
  %283 = call i32 @PQserverVersion(i32* %282)
  %284 = icmp sge i32 %283, 120000
  br i1 %284, label %285, label %288

285:                                              ; preds = %267
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %287 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %286, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %267
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %290 = call i32 @appendPQExpBufferChar(%struct.TYPE_11__* %289, i8 signext 10)
  br label %291

291:                                              ; preds = %288, %264, %258
  br label %306

292:                                              ; preds = %254
  %293 = load i8*, i8** %19, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %305

295:                                              ; preds = %292
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %297 = load i32, i32* %14, align 4
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %301 = call i32 @appendPQExpBufferStr(%struct.TYPE_11__* %296, i8* %300)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %26, align 4
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %303 = load i8*, i8** %19, align 8
  %304 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %303)
  br label %305

305:                                              ; preds = %295, %292
  br label %306

306:                                              ; preds = %305, %291
  %307 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %20)
  %308 = call i32 @termPQExpBuffer(%struct.TYPE_11__* %21)
  %309 = load i32, i32* %26, align 4
  store i32 %309, i32* %10, align 4
  br label %310

310:                                              ; preds = %306, %45
  %311 = load i32, i32* %10, align 4
  ret i32 %311
}

declare dso_local i32 @PQclientEncoding(i32*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local signext i8 @pg_tolower(i8 zeroext) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_11__*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @PQmblen(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @PQserverVersion(i32*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
