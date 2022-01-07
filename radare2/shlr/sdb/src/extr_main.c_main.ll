; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_DFLT = common dso_local global i32 0, align 4
@MODE_ZERO = common dso_local global i32 0, align 4
@SDB_OPTION_JOURNAL = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@MODE_JSON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid flag %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@s = common dso_local global i32 0, align 4
@save = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %16 = load i32, i32* @MODE_DFLT, align 4
  store i32 %16, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @showusage(i32 1)
  store i32 %20, i32* %3, align 4
  br label %310

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %130

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %126 [
    i32 0, label %35
    i32 48, label %36
    i32 103, label %48
    i32 74, label %62
    i32 99, label %76
    i32 118, label %88
    i32 104, label %90
    i32 101, label %92
    i32 100, label %94
    i32 68, label %96
    i32 106, label %112
  ]

35:                                               ; preds = %30
  br label %129

36:                                               ; preds = %30
  %37 = load i32, i32* @MODE_ZERO, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 @showusage(i32 1)
  store i32 %46, i32* %3, align 4
  br label %310

47:                                               ; preds = %36
  br label %129

48:                                               ; preds = %30
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @showusage(i32 1)
  store i32 %55, i32* %3, align 4
  br label %310

56:                                               ; preds = %48
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %12, align 4
  br label %129

62:                                               ; preds = %30
  %63 = load i32, i32* @SDB_OPTION_JOURNAL, align 4
  %64 = load i32, i32* @options, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* @options, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = call i32 @showusage(i32 1)
  store i32 %74, i32* %3, align 4
  br label %310

75:                                               ; preds = %62
  br label %129

76:                                               ; preds = %30
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @showusage(i32 1)
  br label %86

81:                                               ; preds = %76
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @showcount(i8* %84)
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %81 ]
  store i32 %87, i32* %3, align 4
  br label %310

88:                                               ; preds = %30
  %89 = call i32 (...) @showversion()
  store i32 %89, i32* %3, align 4
  br label %310

90:                                               ; preds = %30
  %91 = call i32 @showusage(i32 2)
  store i32 %91, i32* %3, align 4
  br label %310

92:                                               ; preds = %30
  %93 = call i32 (...) @base64encode()
  store i32 %93, i32* %3, align 4
  br label %310

94:                                               ; preds = %30
  %95 = call i32 (...) @base64decode()
  store i32 %95, i32* %3, align 4
  br label %310

96:                                               ; preds = %30
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 3
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @dbdiff(i8* %102, i8* %105)
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 0, i32 1
  store i32 %109, i32* %3, align 4
  br label %310

110:                                              ; preds = %96
  %111 = call i32 @showusage(i32 0)
  store i32 %111, i32* %3, align 4
  br label %310

112:                                              ; preds = %30
  %113 = load i32, i32* %4, align 4
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @MODE_JSON, align 4
  %123 = call i32 @sdb_dump(i8* %121, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %310

124:                                              ; preds = %112
  %125 = call i32 (...) @jsonIndent()
  store i32 %125, i32* %3, align 4
  br label %310

126:                                              ; preds = %30
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @eprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %126, %75, %56, %47, %35
  br label %130

130:                                              ; preds = %129, %21
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %160, label %141

141:                                              ; preds = %133
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %145, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  store i32 1, i32* %13, align 4
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %154, align 8
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %150, %141
  br label %160

160:                                              ; preds = %159, %133, %130
  %161 = load i32, i32* %4, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* %11, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %185

165:                                              ; preds = %160
  %166 = load i8*, i8** %8, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @sdb_grep(i8* %173, i32 %174, i8* %175)
  store i32 %176, i32* %3, align 4
  br label %310

177:                                              ; preds = %165
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @sdb_dump(i8* %182, i32 %183)
  store i32 %184, i32* %3, align 4
  br label %310

185:                                              ; preds = %160
  store i32 0, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %185
  %189 = load i8**, i8*** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %189, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %248, label %197

197:                                              ; preds = %188, %185
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @sdb_new(i32* null, i8* %202, i32 0)
  store i32 %203, i32* @s, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %247

205:                                              ; preds = %197
  %206 = load i32, i32* @s, align 4
  %207 = load i32, i32* @options, align 4
  %208 = call i32 @sdb_config(i32 %206, i32 %207)
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 2
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %205
  %215 = load i32, i32* @s, align 4
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = getelementptr inbounds i8*, i8** %219, i64 2
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* %15, align 4
  %223 = sub nsw i32 %221, %222
  %224 = call i32 @insertkeys(i32 %215, i8** %220, i32 %223, i8 signext 45)
  %225 = load i32, i32* @save, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* @save, align 4
  br label %227

227:                                              ; preds = %214, %205
  br label %228

228:                                              ; preds = %243, %227
  %229 = call i8* @stdin_slurp(i32* null)
  store i8* %229, i8** %6, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %246

231:                                              ; preds = %228
  %232 = load i32, i32* @s, align 4
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @sdb_query(i32 %232, i8* %233)
  %235 = load i32, i32* @save, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* @save, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %231
  %240 = load i32, i32* @stdout, align 4
  %241 = call i32 @fflush(i32 %240)
  %242 = call i32 @write(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %243

243:                                              ; preds = %239, %231
  %244 = load i8*, i8** %6, align 8
  %245 = call i32 @free(i8* %244)
  br label %228

246:                                              ; preds = %228
  br label %247

247:                                              ; preds = %246, %197
  br label %306

248:                                              ; preds = %188
  %249 = load i8**, i8*** %5, align 8
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %249, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @strcmp(i8* %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %248
  %258 = load i8**, i8*** %5, align 8
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @createdb(i8* %262, i32* null, i32 0)
  store i32 %263, i32* %14, align 4
  br label %305

264:                                              ; preds = %248
  %265 = load i8**, i8*** %5, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @sdb_new(i32* null, i8* %269, i32 0)
  store i32 %270, i32* @s, align 4
  %271 = load i32, i32* @s, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %264
  store i32 1, i32* %3, align 4
  br label %310

274:                                              ; preds = %264
  %275 = load i32, i32* @s, align 4
  %276 = load i32, i32* @options, align 4
  %277 = call i32 @sdb_config(i32 %275, i32 %276)
  %278 = load i32, i32* %11, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  br label %280

280:                                              ; preds = %301, %274
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %4, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %304

284:                                              ; preds = %280
  %285 = load i32, i32* @s, align 4
  %286 = load i8**, i8*** %5, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @sdb_query(i32 %285, i8* %290)
  %292 = load i32, i32* @save, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* @save, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %284
  %297 = load i32, i32* @stdout, align 4
  %298 = call i32 @fflush(i32 %297)
  %299 = call i32 @write(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %300

300:                                              ; preds = %296, %284
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %280

304:                                              ; preds = %280
  br label %305

305:                                              ; preds = %304, %257
  br label %306

306:                                              ; preds = %305, %247
  %307 = load i32, i32* %14, align 4
  %308 = call i32 @terminate(i32 %307)
  %309 = load i32, i32* %14, align 4
  store i32 %309, i32* %3, align 4
  br label %310

310:                                              ; preds = %306, %273, %177, %168, %124, %115, %110, %99, %94, %92, %90, %88, %86, %73, %54, %45, %19
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i32 @showusage(i32) #1

declare dso_local i32 @showcount(i8*) #1

declare dso_local i32 @showversion(...) #1

declare dso_local i32 @base64encode(...) #1

declare dso_local i32 @base64decode(...) #1

declare dso_local i32 @dbdiff(i8*, i8*) #1

declare dso_local i32 @sdb_dump(i8*, i32) #1

declare dso_local i32 @jsonIndent(...) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sdb_grep(i8*, i32, i8*) #1

declare dso_local i32 @sdb_new(i32*, i8*, i32) #1

declare dso_local i32 @sdb_config(i32, i32) #1

declare dso_local i32 @insertkeys(i32, i8**, i32, i8 signext) #1

declare dso_local i8* @stdin_slurp(i32*) #1

declare dso_local i32 @sdb_query(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @createdb(i8*, i32*, i32) #1

declare dso_local i32 @terminate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
