; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_complete.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3_complete.trans = internal constant [8 x [8 x i32]] [[8 x i32] [i32 1, i32 0, i32 2, i32 3, i32 4, i32 2, i32 2, i32 2], [8 x i32] [i32 1, i32 1, i32 2, i32 3, i32 4, i32 2, i32 2, i32 2], [8 x i32] [i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [8 x i32] [i32 1, i32 3, i32 3, i32 2, i32 4, i32 2, i32 2, i32 2], [8 x i32] [i32 1, i32 4, i32 2, i32 2, i32 2, i32 4, i32 5, i32 2], [8 x i32] [i32 6, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [8 x i32] [i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 5, i32 7], [8 x i32] [i32 1, i32 7, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5]], align 16
@tkSEMI = common dso_local global i32 0, align 4
@tkWS = common dso_local global i32 0, align 4
@tkOTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@tkCREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@tkTRIGGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@tkTEMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@tkEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@tkEXPLAIN = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_complete(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %259, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %269

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %158 [
    i32 59, label %16
    i32 32, label %18
    i32 13, label %18
    i32 9, label %18
    i32 10, label %18
    i32 12, label %18
    i32 47, label %20
    i32 45, label %67
    i32 91, label %102
    i32 96, label %128
    i32 34, label %128
    i32 39, label %128
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @tkSEMI, align 4
  store i32 %17, i32* %5, align 4
  br label %259

18:                                               ; preds = %12, %12, %12, %12, %12
  %19 = load i32, i32* @tkWS, align 4
  store i32 %19, i32* %5, align 4
  br label %259

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 42
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @tkOTHER, align 4
  store i32 %27, i32* %5, align 4
  br label %259

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %53, %28
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 42
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  br label %51

51:                                               ; preds = %49, %31
  %52 = phi i1 [ false, %31 ], [ %50, %49 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %3, align 8
  br label %31

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %273

63:                                               ; preds = %56
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  %66 = load i32, i32* @tkWS, align 4
  store i32 %66, i32* %5, align 4
  br label %259

67:                                               ; preds = %12
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 45
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @tkOTHER, align 4
  store i32 %74, i32* %5, align 4
  br label %259

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 10
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %3, align 8
  br label %76

91:                                               ; preds = %86
  %92 = load i8*, i8** %3, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 1
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %2, align 4
  br label %273

100:                                              ; preds = %91
  %101 = load i32, i32* @tkWS, align 4
  store i32 %101, i32* %5, align 4
  br label %259

102:                                              ; preds = %12
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %117, %102
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8*, i8** %3, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 93
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ false, %105 ], [ %114, %110 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %3, align 8
  br label %105

120:                                              ; preds = %115
  %121 = load i8*, i8** %3, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %273

126:                                              ; preds = %120
  %127 = load i32, i32* @tkOTHER, align 4
  store i32 %127, i32* %5, align 4
  br label %259

128:                                              ; preds = %12, %12, %12
  %129 = load i8*, i8** %3, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  store i32 %131, i32* %6, align 4
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %3, align 8
  br label %134

134:                                              ; preds = %147, %128
  %135 = load i8*, i8** %3, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i8*, i8** %3, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %142, %143
  br label %145

145:                                              ; preds = %139, %134
  %146 = phi i1 [ false, %134 ], [ %144, %139 ]
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %3, align 8
  br label %134

150:                                              ; preds = %145
  %151 = load i8*, i8** %3, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %273

156:                                              ; preds = %150
  %157 = load i32, i32* @tkOTHER, align 4
  store i32 %157, i32* %5, align 4
  br label %259

158:                                              ; preds = %12
  %159 = load i8*, i8** %3, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = trunc i32 %161 to i8
  %163 = call i32 @IdChar(i8 signext %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %256

165:                                              ; preds = %158
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %175, %165
  %167 = load i8*, i8** %3, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = call i32 @IdChar(i8 signext %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %166

178:                                              ; preds = %166
  %179 = load i8*, i8** %3, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  switch i32 %181, label %248 [
    i32 99, label %182
    i32 67, label %182
    i32 116, label %194
    i32 84, label %194
    i32 101, label %226
    i32 69, label %226
  ]

182:                                              ; preds = %178, %178
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %183, 6
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i8*, i8** %3, align 8
  %187 = call i32 @sqlite3StrNICmp(i8* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* @tkCREATE, align 4
  store i32 %190, i32* %5, align 4
  br label %193

191:                                              ; preds = %185, %182
  %192 = load i32, i32* @tkOTHER, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %191, %189
  br label %250

194:                                              ; preds = %178, %178
  %195 = load i32, i32* %7, align 4
  %196 = icmp eq i32 %195, 7
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i8*, i8** %3, align 8
  %199 = call i32 @sqlite3StrNICmp(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @tkTRIGGER, align 4
  store i32 %202, i32* %5, align 4
  br label %225

203:                                              ; preds = %197, %194
  %204 = load i32, i32* %7, align 4
  %205 = icmp eq i32 %204, 4
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @sqlite3StrNICmp(i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @tkTEMP, align 4
  store i32 %211, i32* %5, align 4
  br label %224

212:                                              ; preds = %206, %203
  %213 = load i32, i32* %7, align 4
  %214 = icmp eq i32 %213, 9
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 @sqlite3StrNICmp(i8* %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i32, i32* @tkTEMP, align 4
  store i32 %220, i32* %5, align 4
  br label %223

221:                                              ; preds = %215, %212
  %222 = load i32, i32* @tkOTHER, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %219
  br label %224

224:                                              ; preds = %223, %210
  br label %225

225:                                              ; preds = %224, %201
  br label %250

226:                                              ; preds = %178, %178
  %227 = load i32, i32* %7, align 4
  %228 = icmp eq i32 %227, 3
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load i8*, i8** %3, align 8
  %231 = call i32 @sqlite3StrNICmp(i8* %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* @tkEND, align 4
  store i32 %234, i32* %5, align 4
  br label %247

235:                                              ; preds = %229, %226
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %236, 7
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load i8*, i8** %3, align 8
  %240 = call i32 @sqlite3StrNICmp(i8* %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i32, i32* @tkEXPLAIN, align 4
  store i32 %243, i32* %5, align 4
  br label %246

244:                                              ; preds = %238, %235
  %245 = load i32, i32* @tkOTHER, align 4
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %244, %242
  br label %247

247:                                              ; preds = %246, %233
  br label %250

248:                                              ; preds = %178
  %249 = load i32, i32* @tkOTHER, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %248, %247, %225, %193
  %251 = load i32, i32* %7, align 4
  %252 = sub nsw i32 %251, 1
  %253 = load i8*, i8** %3, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  store i8* %255, i8** %3, align 8
  br label %258

256:                                              ; preds = %158
  %257 = load i32, i32* @tkOTHER, align 4
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %256, %250
  br label %259

259:                                              ; preds = %258, %156, %126, %100, %73, %63, %26, %18, %16
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @sqlite3_complete.trans, i64 0, i64 %261
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %262, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %4, align 4
  %267 = load i8*, i8** %3, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %3, align 8
  br label %8

269:                                              ; preds = %8
  %270 = load i32, i32* %4, align 4
  %271 = icmp eq i32 %270, 1
  %272 = zext i1 %271 to i32
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %269, %155, %125, %96, %62
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i32 @IdChar(i8 signext) #1

declare dso_local i32 @sqlite3StrNICmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
