; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadLineText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadLineText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32, i32, i64, i32, i64, i64, i32, i32 }

@REFILL_LINEBUF = common dso_local global i32 0, align 4
@EOL_NL = common dso_local global i64 0, align 8
@EOL_UNKNOWN = common dso_local global i64 0, align 8
@EOL_CRNL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_BAD_COPY_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"literal carriage return found in data\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unquoted carriage return found in data\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Use \22\\r\22 to represent carriage return.\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Use quoted CSV field to represent carriage return.\00", align 1
@EOL_CR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"literal newline found in data\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"unquoted newline found in data\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Use \22\\n\22 to represent newline.\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Use quoted CSV field to represent newline.\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"end-of-copy marker does not match previous newline style\00", align 1
@NO_END_OF_COPY_GOTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"end-of-copy marker corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @CopyReadLineText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyReadLineText(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %13, align 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %14, align 1
  %34 = load i8, i8* %13, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* %14, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  store i8 0, i8* %14, align 1
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %1
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %42, align 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %3, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %4, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %518, %41
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56, %52
  %60 = load i32, i32* @REFILL_LINEBUF, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = call i32 @CopyLoadRawBuf(%struct.TYPE_4__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %59
  store i32 0, i32* %4, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  br label %519

72:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %15, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %16, align 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %150

85:                                               ; preds = %73
  %86 = load i8, i8* %16, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 92
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i8, i8* %16, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 13
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %85
  %94 = call i32 @IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(i32 0)
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i8, i8* %16, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* %14, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %104, %98, %95
  %110 = load i8, i8* %16, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* %13, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %118, %115, %109
  %124 = load i8, i8* %16, align 1
  %125 = sext i8 %124 to i32
  %126 = load i8, i8* %14, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %123
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load i8, i8* %16, align 1
  %135 = sext i8 %134 to i32
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @EOL_NL, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 10, i32 13
  %143 = icmp eq i32 %135, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %133, %130
  br label %150

150:                                              ; preds = %149, %73
  %151 = load i8, i8* %16, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 13
  br i1 %153, label %154, label %259

154:                                              ; preds = %150
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %259, label %162

162:                                              ; preds = %159, %154
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @EOL_UNKNOWN, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @EOL_CRNL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %226

174:                                              ; preds = %168, %162
  %175 = call i32 @IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(i32 0)
  %176 = load i8*, i8** %3, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  store i8 %180, i8* %16, align 1
  %181 = load i8, i8* %16, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 10
  br i1 %183, label %184, label %190

184:                                              ; preds = %174
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  %187 = load i64, i64* @EOL_CRNL, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 5
  store i64 %187, i64* %189, align 8
  br label %225

190:                                              ; preds = %174
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @EOL_CRNL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %221

196:                                              ; preds = %190
  %197 = load i32, i32* @ERROR, align 4
  %198 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %199 = call i32 @errcode(i32 %198)
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %196
  %205 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %208

206:                                              ; preds = %196
  %207 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %208
  %215 = call i32 @errhint(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %218

216:                                              ; preds = %208
  %217 = call i32 @errhint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  %220 = call i32 @ereport(i32 %197, i32 %219)
  br label %221

221:                                              ; preds = %218, %190
  %222 = load i64, i64* @EOL_CR, align 8
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 5
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %221, %184
  br label %258

226:                                              ; preds = %168
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @EOL_NL, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %257

232:                                              ; preds = %226
  %233 = load i32, i32* @ERROR, align 4
  %234 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %235 = call i32 @errcode(i32 %234)
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %232
  %241 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %244

242:                                              ; preds = %232
  %243 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi i32 [ %241, %240 ], [ %243, %242 ]
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %244
  %251 = call i32 @errhint(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %254

252:                                              ; preds = %244
  %253 = call i32 @errhint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i32 [ %251, %250 ], [ %253, %252 ]
  %256 = call i32 @ereport(i32 %233, i32 %255)
  br label %257

257:                                              ; preds = %254, %226
  br label %258

258:                                              ; preds = %257, %225
  br label %519

259:                                              ; preds = %159, %150
  %260 = load i8, i8* %16, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 10
  br i1 %262, label %263, label %312

263:                                              ; preds = %259
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 8
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load i32, i32* %11, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %312, label %271

271:                                              ; preds = %268, %263
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @EOL_CR, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %283, label %277

277:                                              ; preds = %271
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @EOL_CRNL, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %308

283:                                              ; preds = %277, %271
  %284 = load i32, i32* @ERROR, align 4
  %285 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %286 = call i32 @errcode(i32 %285)
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 8
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %283
  %292 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %295

293:                                              ; preds = %283
  %294 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %291
  %296 = phi i32 [ %292, %291 ], [ %294, %293 ]
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 8
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %295
  %302 = call i32 @errhint(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %305

303:                                              ; preds = %295
  %304 = call i32 @errhint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i32 [ %302, %301 ], [ %304, %303 ]
  %307 = call i32 @ereport(i32 %284, i32 %306)
  br label %308

308:                                              ; preds = %305, %277
  %309 = load i64, i64* @EOL_NL, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 5
  store i64 %309, i64* %311, align 8
  br label %519

312:                                              ; preds = %268, %259
  %313 = load i8, i8* %16, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp eq i32 %314, 92
  br i1 %315, label %316, label %490

316:                                              ; preds = %312
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 8
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %316
  %322 = load i32, i32* %10, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %490

324:                                              ; preds = %321, %316
  %325 = call i32 @IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(i32 0)
  %326 = call i32 @IF_NEED_REFILL_AND_EOF_BREAK(i32 0)
  %327 = load i8*, i8** %3, align 8
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %327, i64 %329
  %331 = load i8, i8* %330, align 1
  store i8 %331, i8* %17, align 1
  %332 = load i8, i8* %17, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 46
  br i1 %334, label %335, label %480

335:                                              ; preds = %324
  %336 = load i32, i32* %4, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %4, align 4
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @EOL_CRNL, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %388

343:                                              ; preds = %335
  %344 = call i32 @IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(i32 0)
  %345 = load i8*, i8** %3, align 8
  %346 = load i32, i32* %4, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %4, align 4
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i8, i8* %345, i64 %348
  %350 = load i8, i8* %349, align 1
  store i8 %350, i8* %17, align 1
  %351 = load i8, i8* %17, align 1
  %352 = sext i8 %351 to i32
  %353 = icmp eq i32 %352, 10
  br i1 %353, label %354, label %368

354:                                              ; preds = %343
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 8
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %365, label %359

359:                                              ; preds = %354
  %360 = load i32, i32* @ERROR, align 4
  %361 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %362 = call i32 @errcode(i32 %361)
  %363 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %364 = call i32 @ereport(i32 %360, i32 %363)
  br label %367

365:                                              ; preds = %354
  %366 = load i32, i32* @NO_END_OF_COPY_GOTO, align 4
  br label %367

367:                                              ; preds = %365, %359
  br label %387

368:                                              ; preds = %343
  %369 = load i8, i8* %17, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp ne i32 %370, 13
  br i1 %371, label %372, label %386

372:                                              ; preds = %368
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 8
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %372
  %378 = load i32, i32* @ERROR, align 4
  %379 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %380 = call i32 @errcode(i32 %379)
  %381 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %382 = call i32 @ereport(i32 %378, i32 %381)
  br label %385

383:                                              ; preds = %372
  %384 = load i32, i32* @NO_END_OF_COPY_GOTO, align 4
  br label %385

385:                                              ; preds = %383, %377
  br label %386

386:                                              ; preds = %385, %368
  br label %387

387:                                              ; preds = %386, %367
  br label %388

388:                                              ; preds = %387, %335
  %389 = call i32 @IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(i32 0)
  %390 = load i8*, i8** %3, align 8
  %391 = load i32, i32* %4, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %4, align 4
  %393 = sext i32 %391 to i64
  %394 = getelementptr inbounds i8, i8* %390, i64 %393
  %395 = load i8, i8* %394, align 1
  store i8 %395, i8* %17, align 1
  %396 = load i8, i8* %17, align 1
  %397 = sext i8 %396 to i32
  %398 = icmp ne i32 %397, 13
  br i1 %398, label %399, label %417

399:                                              ; preds = %388
  %400 = load i8, i8* %17, align 1
  %401 = sext i8 %400 to i32
  %402 = icmp ne i32 %401, 10
  br i1 %402, label %403, label %417

403:                                              ; preds = %399
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 8
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %414, label %408

408:                                              ; preds = %403
  %409 = load i32, i32* @ERROR, align 4
  %410 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %411 = call i32 @errcode(i32 %410)
  %412 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %413 = call i32 @ereport(i32 %409, i32 %412)
  br label %416

414:                                              ; preds = %403
  %415 = load i32, i32* @NO_END_OF_COPY_GOTO, align 4
  br label %416

416:                                              ; preds = %414, %408
  br label %417

417:                                              ; preds = %416, %399, %388
  %418 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 5
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @EOL_NL, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %427

423:                                              ; preds = %417
  %424 = load i8, i8* %17, align 1
  %425 = sext i8 %424 to i32
  %426 = icmp ne i32 %425, 10
  br i1 %426, label %447, label %427

427:                                              ; preds = %423, %417
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 5
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @EOL_CRNL, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %437

433:                                              ; preds = %427
  %434 = load i8, i8* %17, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp ne i32 %435, 10
  br i1 %436, label %447, label %437

437:                                              ; preds = %433, %427
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 5
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @EOL_CR, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %453

443:                                              ; preds = %437
  %444 = load i8, i8* %17, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp ne i32 %445, 13
  br i1 %446, label %447, label %453

447:                                              ; preds = %443, %433, %423
  %448 = load i32, i32* @ERROR, align 4
  %449 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %450 = call i32 @errcode(i32 %449)
  %451 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %452 = call i32 @ereport(i32 %448, i32 %451)
  br label %453

453:                                              ; preds = %447, %443, %437
  %454 = load i32, i32* %15, align 4
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = icmp sgt i32 %454, %457
  br i1 %458, label %459, label %476

459:                                              ; preds = %453
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 9
  %462 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 2
  %464 = load i8*, i8** %463, align 8
  %465 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 8
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %464, i64 %468
  %470 = load i32, i32* %15, align 4
  %471 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 8
  %474 = sub nsw i32 %470, %473
  %475 = call i32 @appendBinaryStringInfo(i32* %461, i8* %469, i32 %474)
  br label %476

476:                                              ; preds = %459, %453
  %477 = load i32, i32* %4, align 4
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 3
  store i32 %477, i32* %479, align 8
  store i32 1, i32* %8, align 4
  br label %519

480:                                              ; preds = %324
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 8
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %480
  %486 = load i32, i32* %4, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %4, align 4
  br label %488

488:                                              ; preds = %485, %480
  br label %489

489:                                              ; preds = %488
  br label %490

490:                                              ; preds = %489, %321, %312
  br label %491

491:                                              ; preds = %490
  %492 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 7
  %494 = load i64, i64* %493, align 8
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %518

496:                                              ; preds = %491
  %497 = load i8, i8* %16, align 1
  %498 = call i64 @IS_HIGHBIT_SET(i8 signext %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %518

500:                                              ; preds = %496
  %501 = load i8, i8* %16, align 1
  %502 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %501, i8* %502, align 1
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 6
  %505 = load i32, i32* %504, align 8
  %506 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %507 = call i32 @pg_encoding_mblen(i32 %505, i8* %506)
  store i32 %507, i32* %18, align 4
  %508 = load i32, i32* %18, align 4
  %509 = sub nsw i32 %508, 1
  %510 = call i32 @IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(i32 %509)
  %511 = load i32, i32* %18, align 4
  %512 = sub nsw i32 %511, 1
  %513 = call i32 @IF_NEED_REFILL_AND_EOF_BREAK(i32 %512)
  %514 = load i32, i32* %18, align 4
  %515 = sub nsw i32 %514, 1
  %516 = load i32, i32* %4, align 4
  %517 = add nsw i32 %516, %515
  store i32 %517, i32* %4, align 4
  br label %518

518:                                              ; preds = %500, %496, %491
  store i32 0, i32* %10, align 4
  br label %52

519:                                              ; preds = %476, %308, %258, %71
  %520 = load i32, i32* @REFILL_LINEBUF, align 4
  %521 = load i32, i32* %8, align 4
  ret i32 %521
}

declare dso_local i32 @CopyLoadRawBuf(%struct.TYPE_4__*) #1

declare dso_local i32 @IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @IF_NEED_REFILL_AND_EOF_BREAK(i32) #1

declare dso_local i32 @appendBinaryStringInfo(i32*, i8*, i32) #1

declare dso_local i64 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i32 @pg_encoding_mblen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
