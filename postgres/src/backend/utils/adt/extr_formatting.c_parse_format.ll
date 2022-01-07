; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_parse_format.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_parse_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64 }

@DCH_FLAG = common dso_local global i32 0, align 4
@SUFFTYPE_PREFIX = common dso_local global i32 0, align 4
@NODE_TYPE_ACTION = common dso_local global i8* null, align 8
@NUM_FLAG = common dso_local global i32 0, align 4
@SUFFTYPE_POSTFIX = common dso_local global i32 0, align 4
@STD_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"-./,':; \00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_DATETIME_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid datetime format separator: \22%s\22\00", align 1
@NODE_TYPE_SPACE = common dso_local global i8* null, align 8
@NODE_TYPE_SEPARATOR = common dso_local global i8* null, align 8
@NODE_TYPE_CHAR = common dso_local global i8* null, align 8
@NODE_TYPE_END = common dso_local global i8* null, align 8
@DEBUG_elog_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i32*, %struct.TYPE_9__*, i32*, i32, i32*)* @parse_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_format(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %15, align 8
  br label %20

20:                                               ; preds = %321, %7
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %322

24:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @DCH_FLAG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = load i32, i32* @SUFFTYPE_PREFIX, align 4
  %33 = call %struct.TYPE_9__* @suff_search(i8* %30, %struct.TYPE_9__* %31, i32 %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %17, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %45, %35
  br label %52

52:                                               ; preds = %51, %29, %24
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %133

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call %struct.TYPE_11__* @index_seq_search(i8* %58, i32* %59, i32* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %63, align 8
  %64 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %64, label %65, label %133

65:                                               ; preds = %57
  %66 = load i8*, i8** @NODE_TYPE_ACTION, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %78, %65
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @NUM_FLAG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32*, i32** %14, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %94 = call i32 @NUMDesc_prepare(i32* %92, %struct.TYPE_10__* %93)
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @DCH_FLAG, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %95
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %108 = load i32, i32* @SUFFTYPE_POSTFIX, align 4
  %109 = call %struct.TYPE_9__* @suff_search(i8* %106, %struct.TYPE_9__* %107, i32 %108)
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %17, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %130

111:                                              ; preds = %105
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %111
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 %126
  store i8* %128, i8** %9, align 8
  br label %129

129:                                              ; preds = %123, %111
  br label %130

130:                                              ; preds = %129, %105, %100, %95
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 1
  store %struct.TYPE_10__* %132, %struct.TYPE_10__** %15, align 8
  br label %321

133:                                              ; preds = %57, %52
  %134 = load i8*, i8** %9, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %320

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @STD_FLAG, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %189

142:                                              ; preds = %137
  %143 = load i8*, i8** %9, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 signext %144)
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load i32, i32* @ERROR, align 4
  %149 = load i32, i32* @ERRCODE_INVALID_DATETIME_FORMAT, align 4
  %150 = call i32 @errcode(i32 %149)
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @pg_mblen(i8* %152)
  %154 = call i32 @pnstrdup(i8* %151, i32 %153)
  %155 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = call i32 @ereport(i32 %148, i32 %155)
  br label %157

157:                                              ; preds = %147, %142
  %158 = load i8*, i8** %9, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i8*, i8** @NODE_TYPE_SPACE, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %170

166:                                              ; preds = %157
  %167 = load i8*, i8** @NODE_TYPE_SEPARATOR, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i8*, i8** %9, align 8
  %172 = load i8, i8* %171, align 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 %172, i8* %176, align 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  store i8 0, i8* %180, align 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 1
  store %struct.TYPE_10__* %186, %struct.TYPE_10__** %15, align 8
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %9, align 8
  br label %319

189:                                              ; preds = %137
  %190 = load i8*, i8** %9, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 34
  br i1 %193, label %194, label %252

194:                                              ; preds = %189
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %9, align 8
  br label %197

197:                                              ; preds = %223, %194
  %198 = load i8*, i8** %9, align 8
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %201, label %251

201:                                              ; preds = %197
  %202 = load i8*, i8** %9, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 34
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %9, align 8
  br label %251

209:                                              ; preds = %201
  %210 = load i8*, i8** %9, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 92
  br i1 %213, label %214, label %223

214:                                              ; preds = %209
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %9, align 8
  br label %223

223:                                              ; preds = %220, %214, %209
  %224 = load i8*, i8** %9, align 8
  %225 = call i32 @pg_mblen(i8* %224)
  store i32 %225, i32* %18, align 4
  %226 = load i8*, i8** @NODE_TYPE_CHAR, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = load i8*, i8** %9, align 8
  %233 = load i32, i32* %18, align 4
  %234 = call i32 @memcpy(i8* %231, i8* %232, i32 %233)
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  store i8 0, i8* %240, align 1
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %242, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  store i32 0, i32* %244, align 8
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 1
  store %struct.TYPE_10__* %246, %struct.TYPE_10__** %15, align 8
  %247 = load i32, i32* %18, align 4
  %248 = load i8*, i8** %9, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %9, align 8
  br label %197

251:                                              ; preds = %206, %197
  br label %318

252:                                              ; preds = %189
  %253 = load i8*, i8** %9, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 92
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = load i8*, i8** %9, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 1
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 34
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = load i8*, i8** %9, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %9, align 8
  br label %266

266:                                              ; preds = %263, %257, %252
  %267 = load i8*, i8** %9, align 8
  %268 = call i32 @pg_mblen(i8* %267)
  store i32 %268, i32* %18, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* @DCH_FLAG, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %266
  %274 = load i8*, i8** %9, align 8
  %275 = call i64 @is_separator_char(i8* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = load i8*, i8** @NODE_TYPE_SEPARATOR, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  store i8* %278, i8** %280, align 8
  br label %295

281:                                              ; preds = %273, %266
  %282 = load i8*, i8** %9, align 8
  %283 = load i8, i8* %282, align 1
  %284 = call i64 @isspace(i8 zeroext %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i8*, i8** @NODE_TYPE_SPACE, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  store i8* %287, i8** %289, align 8
  br label %294

290:                                              ; preds = %281
  %291 = load i8*, i8** @NODE_TYPE_CHAR, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %290, %286
  br label %295

295:                                              ; preds = %294, %277
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  %298 = load i8*, i8** %297, align 8
  %299 = load i8*, i8** %9, align 8
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @memcpy(i8* %298, i8* %299, i32 %300)
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  store i8 0, i8* %307, align 1
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %309, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  store i32 0, i32* %311, align 8
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 1
  store %struct.TYPE_10__* %313, %struct.TYPE_10__** %15, align 8
  %314 = load i32, i32* %18, align 4
  %315 = load i8*, i8** %9, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8* %317, i8** %9, align 8
  br label %318

318:                                              ; preds = %295, %251
  br label %319

319:                                              ; preds = %318, %170
  br label %320

320:                                              ; preds = %319, %133
  br label %321

321:                                              ; preds = %320, %130
  br label %20

322:                                              ; preds = %20
  %323 = load i8*, i8** @NODE_TYPE_END, align 8
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 2
  store i8* %323, i8** %325, align 8
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  store i32 0, i32* %327, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @suff_search(i8*, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_11__* @index_seq_search(i8*, i32*, i32*) #1

declare dso_local i32 @NUMDesc_prepare(i32*, %struct.TYPE_10__*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pnstrdup(i8*, i32) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @is_separator_char(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
