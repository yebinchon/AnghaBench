; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_ArrayCount.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_ArrayCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDIM = common dso_local global i32 0, align 4
@ARRAY_NO_LEVEL = common dso_local global i64 0, align 8
@ARRAY_ELEM_STARTED = common dso_local global i64 0, align 8
@ARRAY_QUOTED_ELEM_STARTED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"malformed array literal: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected end of input.\00", align 1
@ARRAY_LEVEL_STARTED = common dso_local global i64 0, align 8
@ARRAY_ELEM_DELIMITED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Unexpected \22%c\22 character.\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unexpected array element.\00", align 1
@ARRAY_QUOTED_ELEM_COMPLETED = common dso_local global i64 0, align 8
@ARRAY_LEVEL_DELIMITED = common dso_local global i64 0, align 8
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"number of array dimensions (%d) exceeds the maximum allowed (%d)\00", align 1
@ARRAY_ELEM_COMPLETED = common dso_local global i64 0, align 8
@ARRAY_LEVEL_COMPLETED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Unmatched \22%c\22 character.\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Multidimensional arrays must have sub-arrays with matching dimensions.\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Junk after closing right brace.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8)* @ArrayCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ArrayCount(i8* %0, i32* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %22 = load i32, i32* @MAXDIM, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32, i32* @MAXDIM, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %29 = load i32, i32* @MAXDIM, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %32 = load i64, i64* @ARRAY_NO_LEVEL, align 8
  store i64 %32, i64* %19, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %51, %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAXDIM, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %31, i64 %39
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %25, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %28, i64 %49
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load i8*, i8** %5, align 8
  store i8* %55, i8** %18, align 8
  br label %56

56:                                               ; preds = %398, %54
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %407

60:                                               ; preds = %56
  store i32 0, i32* %20, align 4
  br label %61

61:                                               ; preds = %397, %60
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %398

65:                                               ; preds = %61
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* @ARRAY_ELEM_STARTED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* @ARRAY_QUOTED_ELEM_STARTED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i8*, i8** %18, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  switch i32 %77, label %310 [
    i32 0, label %78
    i32 92, label %86
    i32 34, label %133
    i32 123, label %165
    i32 125, label %215
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %81 = call i32 @errcode(i32 %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %85 = call i32 @ereport(i32 %79, i32 %84)
  br label %391

86:                                               ; preds = %74
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* @ARRAY_LEVEL_STARTED, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* @ARRAY_ELEM_STARTED, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* @ARRAY_QUOTED_ELEM_STARTED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* @ARRAY_ELEM_DELIMITED, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %105 = call i32 @errcode(i32 %104)
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %106)
  %108 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 92)
  %109 = call i32 @ereport(i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %102, %98, %94, %90, %86
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* @ARRAY_QUOTED_ELEM_STARTED, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i64, i64* @ARRAY_ELEM_STARTED, align 8
  store i64 %115, i64* %19, align 8
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i8*, i8** %18, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %18, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %18, align 8
  br label %132

124:                                              ; preds = %116
  %125 = load i32, i32* @ERROR, align 4
  %126 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %127 = call i32 @errcode(i32 %126)
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %128)
  %130 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %131 = call i32 @ereport(i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %124, %121
  br label %391

133:                                              ; preds = %74
  %134 = load i64, i64* %19, align 8
  %135 = load i64, i64* @ARRAY_LEVEL_STARTED, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %133
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* @ARRAY_QUOTED_ELEM_STARTED, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load i64, i64* %19, align 8
  %143 = load i64, i64* @ARRAY_ELEM_DELIMITED, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i32, i32* @ERROR, align 4
  %147 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %148 = call i32 @errcode(i32 %147)
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %149)
  %151 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %152 = call i32 @ereport(i32 %146, i32 %151)
  br label %153

153:                                              ; preds = %145, %141, %137, %133
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i64, i64* @ARRAY_QUOTED_ELEM_STARTED, align 8
  store i64 %161, i64* %19, align 8
  br label %164

162:                                              ; preds = %153
  %163 = load i64, i64* @ARRAY_QUOTED_ELEM_COMPLETED, align 8
  store i64 %163, i64* %19, align 8
  br label %164

164:                                              ; preds = %162, %160
  br label %391

165:                                              ; preds = %74
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %214, label %168

168:                                              ; preds = %165
  %169 = load i64, i64* %19, align 8
  %170 = load i64, i64* @ARRAY_NO_LEVEL, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = load i64, i64* %19, align 8
  %174 = load i64, i64* @ARRAY_LEVEL_STARTED, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* @ARRAY_LEVEL_DELIMITED, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load i32, i32* @ERROR, align 4
  %182 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %183 = call i32 @errcode(i32 %182)
  %184 = load i8*, i8** %5, align 8
  %185 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %184)
  %186 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 123)
  %187 = call i32 @ereport(i32 %181, i32 %186)
  br label %188

188:                                              ; preds = %180, %176, %172, %168
  %189 = load i64, i64* @ARRAY_LEVEL_STARTED, align 8
  store i64 %189, i64* %19, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @MAXDIM, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load i32, i32* @ERROR, align 4
  %195 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %196 = call i32 @errcode(i32 %195)
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i32, i32* @MAXDIM, align 4
  %200 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %199)
  %201 = call i32 @ereport(i32 %194, i32 %200)
  br label %202

202:                                              ; preds = %193, %188
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %25, i64 %204
  store i32 0, i32* %205, align 4
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %211, %202
  br label %214

214:                                              ; preds = %213, %165
  br label %391

215:                                              ; preds = %74
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %309, label %218

218:                                              ; preds = %215
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* @ARRAY_ELEM_STARTED, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %249

222:                                              ; preds = %218
  %223 = load i64, i64* %19, align 8
  %224 = load i64, i64* @ARRAY_ELEM_COMPLETED, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %249

226:                                              ; preds = %222
  %227 = load i64, i64* %19, align 8
  %228 = load i64, i64* @ARRAY_QUOTED_ELEM_COMPLETED, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %249

230:                                              ; preds = %226
  %231 = load i64, i64* %19, align 8
  %232 = load i64, i64* @ARRAY_LEVEL_COMPLETED, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %230
  %235 = load i32, i32* %8, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i64, i64* %19, align 8
  %239 = load i64, i64* @ARRAY_LEVEL_STARTED, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %249, label %241

241:                                              ; preds = %237, %234
  %242 = load i32, i32* @ERROR, align 4
  %243 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %244 = call i32 @errcode(i32 %243)
  %245 = load i8*, i8** %5, align 8
  %246 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %245)
  %247 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 125)
  %248 = call i32 @ereport(i32 %242, i32 %247)
  br label %249

249:                                              ; preds = %241, %237, %230, %226, %222, %218
  %250 = load i64, i64* @ARRAY_LEVEL_COMPLETED, align 8
  store i64 %250, i64* %19, align 8
  %251 = load i32, i32* %8, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  %254 = load i32, i32* @ERROR, align 4
  %255 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %256 = call i32 @errcode(i32 %255)
  %257 = load i8*, i8** %5, align 8
  %258 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %257)
  %259 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 125)
  %260 = call i32 @ereport(i32 %254, i32 %259)
  br label %261

261:                                              ; preds = %253, %249
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %31, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %287

269:                                              ; preds = %261
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %28, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %31, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %273, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %269
  %280 = load i32, i32* @ERROR, align 4
  %281 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %282 = call i32 @errcode(i32 %281)
  %283 = load i8*, i8** %5, align 8
  %284 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %283)
  %285 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  %286 = call i32 @ereport(i32 %280, i32 %285)
  br label %287

287:                                              ; preds = %279, %269, %261
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %28, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %31, i64 %293
  store i32 %291, i32* %294, align 4
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %28, i64 %296
  store i32 1, i32* %297, align 4
  %298 = load i32, i32* %8, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %287
  store i32 1, i32* %20, align 4
  store i32 1, i32* %16, align 4
  br label %308

301:                                              ; preds = %287
  %302 = load i32, i32* %8, align 4
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %25, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %301, %300
  br label %309

309:                                              ; preds = %308, %215
  br label %391

310:                                              ; preds = %74
  %311 = load i32, i32* %15, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %390, label %313

313:                                              ; preds = %310
  %314 = load i8*, i8** %18, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = load i8, i8* %7, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %320, label %361

320:                                              ; preds = %313
  %321 = load i64, i64* %19, align 8
  %322 = load i64, i64* @ARRAY_ELEM_STARTED, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %346

324:                                              ; preds = %320
  %325 = load i64, i64* %19, align 8
  %326 = load i64, i64* @ARRAY_ELEM_COMPLETED, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %346

328:                                              ; preds = %324
  %329 = load i64, i64* %19, align 8
  %330 = load i64, i64* @ARRAY_QUOTED_ELEM_COMPLETED, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %346

332:                                              ; preds = %328
  %333 = load i64, i64* %19, align 8
  %334 = load i64, i64* @ARRAY_LEVEL_COMPLETED, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %332
  %337 = load i32, i32* @ERROR, align 4
  %338 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %339 = call i32 @errcode(i32 %338)
  %340 = load i8*, i8** %5, align 8
  %341 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %340)
  %342 = load i8, i8* %7, align 1
  %343 = sext i8 %342 to i32
  %344 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %343)
  %345 = call i32 @ereport(i32 %337, i32 %344)
  br label %346

346:                                              ; preds = %336, %332, %328, %324, %320
  %347 = load i64, i64* %19, align 8
  %348 = load i64, i64* @ARRAY_LEVEL_COMPLETED, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %346
  %351 = load i64, i64* @ARRAY_LEVEL_DELIMITED, align 8
  store i64 %351, i64* %19, align 8
  br label %354

352:                                              ; preds = %346
  %353 = load i64, i64* @ARRAY_ELEM_DELIMITED, align 8
  store i64 %353, i64* %19, align 8
  br label %354

354:                                              ; preds = %352, %350
  store i32 1, i32* %20, align 4
  %355 = load i32, i32* %8, align 4
  %356 = sub nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %28, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %358, align 4
  br label %389

361:                                              ; preds = %313
  %362 = load i8*, i8** %18, align 8
  %363 = load i8, i8* %362, align 1
  %364 = call i32 @array_isspace(i8 signext %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %388, label %366

366:                                              ; preds = %361
  %367 = load i64, i64* %19, align 8
  %368 = load i64, i64* @ARRAY_LEVEL_STARTED, align 8
  %369 = icmp ne i64 %367, %368
  br i1 %369, label %370, label %386

370:                                              ; preds = %366
  %371 = load i64, i64* %19, align 8
  %372 = load i64, i64* @ARRAY_ELEM_STARTED, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %386

374:                                              ; preds = %370
  %375 = load i64, i64* %19, align 8
  %376 = load i64, i64* @ARRAY_ELEM_DELIMITED, align 8
  %377 = icmp ne i64 %375, %376
  br i1 %377, label %378, label %386

378:                                              ; preds = %374
  %379 = load i32, i32* @ERROR, align 4
  %380 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %381 = call i32 @errcode(i32 %380)
  %382 = load i8*, i8** %5, align 8
  %383 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %382)
  %384 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %385 = call i32 @ereport(i32 %379, i32 %384)
  br label %386

386:                                              ; preds = %378, %374, %370, %366
  %387 = load i64, i64* @ARRAY_ELEM_STARTED, align 8
  store i64 %387, i64* %19, align 8
  br label %388

388:                                              ; preds = %386, %361
  br label %389

389:                                              ; preds = %388, %354
  br label %390

390:                                              ; preds = %389, %310
  br label %391

391:                                              ; preds = %390, %309, %214, %164, %132, %78
  %392 = load i32, i32* %20, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = load i8*, i8** %18, align 8
  %396 = getelementptr inbounds i8, i8* %395, i32 1
  store i8* %396, i8** %18, align 8
  br label %397

397:                                              ; preds = %394, %391
  br label %61

398:                                              ; preds = %61
  %399 = load i32, i32* %10, align 4
  %400 = sub nsw i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %25, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %402, align 4
  %405 = load i8*, i8** %18, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %18, align 8
  br label %56

407:                                              ; preds = %56
  br label %408

408:                                              ; preds = %426, %407
  %409 = load i8*, i8** %18, align 8
  %410 = load i8, i8* %409, align 1
  %411 = icmp ne i8 %410, 0
  br i1 %411, label %412, label %427

412:                                              ; preds = %408
  %413 = load i8*, i8** %18, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %18, align 8
  %415 = load i8, i8* %413, align 1
  %416 = call i32 @array_isspace(i8 signext %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %426, label %418

418:                                              ; preds = %412
  %419 = load i32, i32* @ERROR, align 4
  %420 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %421 = call i32 @errcode(i32 %420)
  %422 = load i8*, i8** %5, align 8
  %423 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %422)
  %424 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %425 = call i32 @ereport(i32 %419, i32 %424)
  br label %426

426:                                              ; preds = %418, %412
  br label %408

427:                                              ; preds = %408
  %428 = load i32, i32* %17, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 0, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %450

431:                                              ; preds = %427
  store i32 0, i32* %9, align 4
  br label %432

432:                                              ; preds = %445, %431
  %433 = load i32, i32* %9, align 4
  %434 = load i32, i32* %10, align 4
  %435 = icmp slt i32 %433, %434
  br i1 %435, label %436, label %448

436:                                              ; preds = %432
  %437 = load i32, i32* %9, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %25, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load i32*, i32** %6, align 8
  %442 = load i32, i32* %9, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  store i32 %440, i32* %444, align 4
  br label %445

445:                                              ; preds = %436
  %446 = load i32, i32* %9, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %9, align 4
  br label %432

448:                                              ; preds = %432
  %449 = load i32, i32* %10, align 4
  store i32 %449, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %450

450:                                              ; preds = %448, %430
  %451 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %451)
  %452 = load i32, i32* %4, align 4
  ret i32 %452
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @errdetail(i8*, ...) #2

declare dso_local i32 @array_isspace(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
