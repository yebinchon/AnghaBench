; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-print.c_do_header.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-print.c_do_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"<tr>\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"<th align=\22%s\22>%s</th>\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" %-*s \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" %*s \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"</tr>\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_3__*, i32, i32*, i8**, i8*, i32, i32*)* @do_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_header(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i8** %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i8* null, i8** %18, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %32)
  br label %166

34:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i8* null, i8** %21, align 8
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2, i32 0
  %53 = add nsw i32 %46, %52
  %54 = load i32, i32* %19, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %19, align 4
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %20, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %20, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 2
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i8* @malloc(i32 %72)
  store i8* %73, i8** %18, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @stderr, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  %80 = call i8* @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* %80)
  %82 = call i32 (...) @abort() #3
  unreachable

83:                                               ; preds = %70
  %84 = load i8*, i8** %18, align 8
  store i8* %84, i8** %21, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %22, align 8
  br label %93

93:                                               ; preds = %98, %89
  %94 = load i8*, i8** %22, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %22, align 8
  %96 = load i8, i8* %94, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %21, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %21, align 8
  store i8 43, i8* %99, align 1
  br label %93

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %83
  store i32 0, i32* %17, align 4
  br label %103

103:                                              ; preds = %152, %102
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %155

107:                                              ; preds = %103
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 2, i32 0
  %119 = add nsw i32 %112, %118
  store i32 %119, i32* %23, align 4
  br label %120

120:                                              ; preds = %125, %107
  %121 = load i32, i32* %23, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %23, align 4
  %123 = icmp ne i32 %121, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %21, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %21, align 8
  store i8 45, i8* %126, align 1
  br label %120

128:                                              ; preds = %120
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %133, %128
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %24, align 8
  br label %142

142:                                              ; preds = %147, %138
  %143 = load i8*, i8** %24, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %24, align 8
  %145 = load i8, i8* %143, align 1
  %146 = icmp ne i8 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8*, i8** %21, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %21, align 8
  store i8 43, i8* %148, align 1
  br label %142

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %103

155:                                              ; preds = %103
  %156 = load i8*, i8** %21, align 8
  store i8 0, i8* %156, align 1
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32*, i32** %9, align 8
  %163 = load i8*, i8** %18, align 8
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %161, %155
  br label %166

166:                                              ; preds = %165, %31
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @fputs(i8* %174, i32* %175)
  br label %177

177:                                              ; preds = %171, %166
  store i32 0, i32* %17, align 4
  br label %178

178:                                              ; preds = %282, %177
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %285

182:                                              ; preds = %178
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i8* @PQfname(i32* %183, i32 %184)
  store i8* %185, i8** %25, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %182
  %191 = load i32*, i32** %9, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %201 = load i8**, i8*** %13, align 8
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %200, i8* %205)
  br label %281

207:                                              ; preds = %182
  %208 = load i8*, i8** %25, align 8
  %209 = call i32 @strlen(i8* %208)
  store i32 %209, i32* %26, align 4
  %210 = load i32, i32* %26, align 4
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %210, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %207
  %218 = load i32, i32* %26, align 4
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %218, i32* %222, align 4
  br label %223

223:                                              ; preds = %217, %207
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %246

228:                                              ; preds = %223
  %229 = load i32*, i32** %9, align 8
  %230 = load i8*, i8** %14, align 8
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %239 = load i32*, i32** %12, align 8
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i8*, i8** %25, align 8
  %245 = call i32 (i32*, i8*, ...) @fprintf(i32* %229, i8* %238, i32 %243, i8* %244)
  br label %264

246:                                              ; preds = %223
  %247 = load i32*, i32** %9, align 8
  %248 = load i8*, i8** %14, align 8
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp ne i32 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %257 = load i32*, i32** %12, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i8*, i8** %25, align 8
  %263 = call i32 (i32*, i8*, ...) @fprintf(i32* %247, i8* %256, i32 %261, i8* %262)
  br label %264

264:                                              ; preds = %246, %228
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %270, 1
  %272 = load i32, i32* %11, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %269, %264
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = load i32*, i32** %9, align 8
  %279 = call i32 @fputs(i8* %277, i32* %278)
  br label %280

280:                                              ; preds = %274, %269
  br label %281

281:                                              ; preds = %280, %190
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %17, align 4
  br label %178

285:                                              ; preds = %178
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load i32*, i32** %9, align 8
  %292 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* %291)
  br label %297

293:                                              ; preds = %285
  %294 = load i32*, i32** %9, align 8
  %295 = load i8*, i8** %18, align 8
  %296 = call i32 (i32*, i8*, ...) @fprintf(i32* %294, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %295)
  br label %297

297:                                              ; preds = %293, %290
  %298 = load i8*, i8** %18, align 8
  ret i8* %298
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @libpq_gettext(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @PQfname(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
