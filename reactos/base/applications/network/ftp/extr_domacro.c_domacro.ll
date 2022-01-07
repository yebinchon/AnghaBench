; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_domacro.c_domacro.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_domacro.c_domacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.cmd = type { i64, i32 (i32, i8**)*, i64 }

@line = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(macro name) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Usage: %s macro_name.\0A\00", align 1
@code = common dso_local global i32 0, align 4
@macnum = common dso_local global i32 0, align 4
@macros = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"'%s' macro not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"?Ambiguous command\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"?Invalid command\0A\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Not connected.\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@bell = common dso_local global i64 0, align 8
@c = common dso_local global %struct.cmd* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @domacro(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [200 x i8], align 16
  %12 = alloca %struct.cmd*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i8*, i8** @line, align 8
  %17 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = load i8*, i8** @line, align 8
  %22 = load i8*, i8** @line, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32 @gets(i8* %24)
  %26 = call i32 (...) @makeargv()
  %27 = load i32, i32* @margc, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i8**, i8*** @margv, align 8
  store i8** %28, i8*** %4, align 8
  br label %29

29:                                               ; preds = %15, %2
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fflush(i32 %37)
  store i32 -1, i32* @code, align 4
  br label %290

39:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @macnum, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strncmp(i8* %47, i32 %53, i32 9)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  br label %61

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %40

61:                                               ; preds = %56, %40
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @macnum, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @stdout, align 4
  %71 = call i32 @fflush(i32 %70)
  store i32 -1, i32* @code, align 4
  br label %290

72:                                               ; preds = %61
  %73 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %74 = load i8*, i8** @line, align 8
  %75 = call i32 @strcpy(i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %289, %72
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %278, %76
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %84, %90
  br i1 %91, label %92, label %281

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %98, %92
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isspace(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  br label %93

101:                                              ; preds = %93
  %102 = load i8*, i8** @line, align 8
  store i8* %102, i8** %8, align 8
  br label %103

103:                                              ; preds = %208, %101
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %209

108:                                              ; preds = %103
  %109 = load i8*, i8** %7, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  switch i32 %111, label %195 [
    i32 92, label %112
    i32 36, label %118
  ]

112:                                              ; preds = %108
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %7, align 8
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  store i8 %115, i8* %116, align 1
  br label %200

118:                                              ; preds = %108
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @isdigit(i8 signext %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %131, %124
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @isdigit(i8 signext %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load i32, i32* %6, align 4
  %133 = mul nsw i32 10, %132
  %134 = load i8*, i8** %7, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = add nsw i32 %133, %136
  %138 = sub nsw i32 %137, 48
  store i32 %138, i32* %6, align 4
  br label %125

139:                                              ; preds = %125
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 -1
  store i8* %141, i8** %7, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sub nsw i32 %142, 2
  %144 = load i32, i32* %6, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %139
  %147 = load i8*, i8** %8, align 8
  %148 = load i8**, i8*** %4, align 8
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %148, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcpy(i8* %147, i8* %153)
  %155 = load i8**, i8*** %4, align 8
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strlen(i8* %160)
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 %161
  store i8* %163, i8** %8, align 8
  br label %164

164:                                              ; preds = %146, %139
  br label %200

165:                                              ; preds = %118
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 105
  br i1 %170, label %171, label %194

171:                                              ; preds = %165
  store i32 1, i32* %10, align 4
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %7, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %3, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load i8*, i8** %8, align 8
  %179 = load i8**, i8*** %4, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strcpy(i8* %178, i8* %183)
  %185 = load i8**, i8*** %4, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = load i8*, i8** %8, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %8, align 8
  br label %193

193:                                              ; preds = %177, %171
  br label %200

194:                                              ; preds = %165
  br label %195

195:                                              ; preds = %108, %194
  %196 = load i8*, i8** %7, align 8
  %197 = load i8, i8* %196, align 1
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %8, align 8
  store i8 %197, i8* %198, align 1
  br label %200

200:                                              ; preds = %195, %193, %164, %112
  %201 = load i8*, i8** %7, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i8*, i8** %7, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %7, align 8
  br label %208

208:                                              ; preds = %205, %200
  br label %103

209:                                              ; preds = %103
  %210 = load i8*, i8** %8, align 8
  store i8 0, i8* %210, align 1
  %211 = call i32 (...) @makeargv()
  %212 = load i8**, i8*** @margv, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = call %struct.cmd* (i8*, ...) bitcast (%struct.cmd* (...)* @getcmd to %struct.cmd* (i8*, ...)*)(i8* %214)
  store %struct.cmd* %215, %struct.cmd** %12, align 8
  %216 = load %struct.cmd*, %struct.cmd** %12, align 8
  %217 = icmp eq %struct.cmd* %216, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %266

220:                                              ; preds = %209
  %221 = load %struct.cmd*, %struct.cmd** %12, align 8
  %222 = icmp eq %struct.cmd* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %265

225:                                              ; preds = %220
  %226 = load %struct.cmd*, %struct.cmd** %12, align 8
  %227 = getelementptr inbounds %struct.cmd, %struct.cmd* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i32, i32* @connected, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %264

235:                                              ; preds = %230, %225
  %236 = load i64, i64* @verbose, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i8*, i8** @line, align 8
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load %struct.cmd*, %struct.cmd** %12, align 8
  %243 = getelementptr inbounds %struct.cmd, %struct.cmd* %242, i32 0, i32 1
  %244 = load i32 (i32, i8**)*, i32 (i32, i8**)** %243, align 8
  %245 = load i32, i32* @margc, align 4
  %246 = load i8**, i8*** @margv, align 8
  %247 = call i32 %244(i32 %245, i8** %246)
  %248 = load i64, i64* @bell, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %241
  %251 = load %struct.cmd*, %struct.cmd** %12, align 8
  %252 = getelementptr inbounds %struct.cmd, %struct.cmd* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = call i32 @putchar(i8 signext 7)
  br label %257

257:                                              ; preds = %255, %250, %241
  %258 = load i8*, i8** @line, align 8
  %259 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %260 = call i32 @strcpy(i8* %258, i8* %259)
  %261 = call i32 (...) @makeargv()
  %262 = load i32, i32* @margc, align 4
  store i32 %262, i32* %3, align 4
  %263 = load i8**, i8*** @margv, align 8
  store i8** %263, i8*** %4, align 8
  br label %264

264:                                              ; preds = %257, %233
  br label %265

265:                                              ; preds = %264, %223
  br label %266

266:                                              ; preds = %265, %218
  %267 = load i8*, i8** %7, align 8
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ne i8* %267, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %266
  %276 = load i8*, i8** %7, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %7, align 8
  br label %278

278:                                              ; preds = %275, %266
  %279 = load i32, i32* @stdout, align 4
  %280 = call i32 @fflush(i32 %279)
  br label %83

281:                                              ; preds = %83
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %281
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  %287 = load i32, i32* %3, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  br label %76

290:                                              ; preds = %32, %65, %284, %281
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local %struct.cmd* @getcmd(...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
