; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NISortDictionary.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NISortDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8**, i32, i32, %struct.TYPE_10__**, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8* }

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid affix alias \22%s\22\00", align 1
@cmpspellaffix = common dso_local global i32 0, align 4
@cmpspell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NISortDictionary(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %168

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %164, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %167

18:                                               ; preds = %12
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %21, i64 %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %131

32:                                               ; preds = %18
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strtol(i8* %42, i8** %6, i32 10)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %46, i64 %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %32
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ERANGE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56, %32
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %66, i64 %68
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %73)
  %75 = call i32 @ereport(i32 %61, i32 %74)
  br label %76

76:                                               ; preds = %60, %56
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79, %76
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %91, i64 %93
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %98)
  %100 = call i32 @ereport(i32 %86, i32 %99)
  br label %101

101:                                              ; preds = %85, %79
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @t_isdigit(i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @t_isspace(i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %120, i64 %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = call i32 @ereport(i32 %115, i32 %128)
  br label %130

130:                                              ; preds = %114, %110, %106, %101
  br label %132

131:                                              ; preds = %18
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %136, i64 %138
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %133, i32* %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %146, i64 %148
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @strlen(i32 %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %156, i64 %158
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i8* %153, i8** %163, align 8
  br label %164

164:                                              ; preds = %132
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %3, align 4
  br label %12

167:                                              ; preds = %12
  br label %323

168:                                              ; preds = %1
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %170, align 8
  %172 = bitcast %struct.TYPE_10__** %171 to i8*
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @cmpspellaffix, align 4
  %177 = call i32 @qsort(i8* %172, i32 %175, i32 8, i32 %176)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %215, %168
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %178
  %185 = load i32, i32* %3, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %211, label %187

187:                                              ; preds = %184
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %190, i64 %192
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %200, i64 %203
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i64 @strcmp(i8* %197, i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %187, %184
  %212 = load i32, i32* %4, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %211, %187
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %178

218:                                              ; preds = %178
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = mul i64 %220, 8
  %222 = trunc i64 %221 to i32
  %223 = call i64 @palloc0(i32 %222)
  %224 = inttoptr i64 %223 to i8**
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  store i8** %224, i8*** %226, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %314, %218
  %228 = load i32, i32* %3, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %317

233:                                              ; preds = %227
  %234 = load i32, i32* %3, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %256, label %236

236:                                              ; preds = %233
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %238, align 8
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %239, i64 %241
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  %249 = load i8**, i8*** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @strcmp(i8* %246, i8* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %282

256:                                              ; preds = %236, %233
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* %4, align 4
  %261 = icmp slt i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 @Assert(i32 %262)
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %266, align 8
  %268 = load i32, i32* %3, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %267, i64 %269
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i8* @cpstrdup(%struct.TYPE_11__* %264, i8* %274)
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 2
  %278 = load i8**, i8*** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %278, i64 %280
  store i8* %275, i8** %281, align 8
  br label %282

282:                                              ; preds = %256, %236
  %283 = load i32, i32* %5, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 5
  %286 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %285, align 8
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %286, i64 %288
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  store i32 %283, i32* %293, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %295, align 8
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %296, i64 %298
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i8* @strlen(i32 %302)
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %305, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %306, i64 %308
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 1
  store i8* %303, i8** %313, align 8
  br label %314

314:                                              ; preds = %282
  %315 = load i32, i32* %3, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %3, align 4
  br label %227

317:                                              ; preds = %227
  %318 = load i32, i32* %4, align 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 3
  store i32 %318, i32* %322, align 8
  br label %323

323:                                              ; preds = %317, %167
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 5
  %326 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %325, align 8
  %327 = bitcast %struct.TYPE_10__** %326 to i8*
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @cmpspell, align 4
  %332 = call i32 @qsort(i8* %327, i32 %330, i32 8, i32 %331)
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @mkSPNode(%struct.TYPE_11__* %333, i32 0, i32 %336, i32 0)
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 4
  store i32 %337, i32* %339, align 4
  ret void
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @t_isdigit(i8*) #1

declare dso_local i32 @t_isspace(i8*) #1

declare dso_local i8* @strlen(i32) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @cpstrdup(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @mkSPNode(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
