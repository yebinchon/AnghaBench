; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_write.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i64, i64 }

@NUL = common dso_local global i8 0, align 1
@term_console = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\0A\0D\08\07\1B\00", align 1
@p_wd = common dso_local global i64 0, align 8
@g_coord = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_srScrollRegion = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ESC = common dso_local global i8 0, align 1
@Columns = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@fdDump = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8, i8* @NUL, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8 %11, i8* %15, align 1
  %16 = load i32, i32* @term_console, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @write(i32 1, i8* %19, i32 %20)
  br label %395

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %394, %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %395

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcspn(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %5, align 4
  %30 = load i64, i64* @p_wd, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i64, i64* @p_wd, align 8
  %34 = call i32 @WaitForChar(i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @write_chars(i8* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %3, align 8
  br label %394

54:                                               ; preds = %39
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 0), align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = call i32 @scroll(i32 1)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 1), align 8
  %67 = add nsw i32 %66, 1
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 0), align 8
  %69 = add nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  %71 = call i32 @gotoxy(i32 %67, i32 %70)
  br label %79

72:                                               ; preds = %60
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 1), align 8
  %74 = add nsw i32 %73, 1
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %76 = add nsw i64 %75, 2
  %77 = trunc i64 %76 to i32
  %78 = call i32 @gotoxy(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %72, %64
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %3, align 8
  br label %393

82:                                               ; preds = %54
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 13
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 1), align 8
  %90 = add nsw i32 %89, 1
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %92 = add nsw i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = call i32 @gotoxy(i32 %90, i32 %93)
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %3, align 8
  br label %392

97:                                               ; preds = %82
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %130

103:                                              ; preds = %97
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 1), align 8
  %106 = sext i32 %105 to i64
  %107 = icmp sgt i64 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  br label %120

111:                                              ; preds = %103
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 2), align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 3), align 8
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %108
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %122 = add nsw i64 %121, 1
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %125 = add nsw i64 %124, 1
  %126 = trunc i64 %125 to i32
  %127 = call i32 @gotoxy(i32 %123, i32 %126)
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %3, align 8
  br label %391

130:                                              ; preds = %97
  %131 = load i8*, i8** %3, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 7
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = call i32 @MessageBeep(i32 -1)
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %3, align 8
  br label %390

140:                                              ; preds = %130
  %141 = load i8*, i8** %3, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = load i8, i8* @ESC, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %378

148:                                              ; preds = %140
  %149 = load i32, i32* %4, align 4
  %150 = icmp sge i32 %149, 2
  br i1 %150, label %151, label %378

151:                                              ; preds = %148
  %152 = load i8*, i8** %3, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 124
  br i1 %156, label %157, label %378

157:                                              ; preds = %151
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %158 = load i8*, i8** %3, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  switch i32 %161, label %377 [
    i32 48, label %162
    i32 49, label %162
    i32 50, label %162
    i32 51, label %162
    i32 52, label %162
    i32 53, label %162
    i32 54, label %162
    i32 55, label %162
    i32 56, label %162
    i32 57, label %162
    i32 65, label %322
    i32 66, label %333
    i32 67, label %335
    i32 69, label %346
    i32 70, label %348
    i32 102, label %350
    i32 72, label %352
    i32 106, label %354
    i32 74, label %356
    i32 75, label %358
    i32 76, label %360
    i32 77, label %362
    i32 83, label %364
    i32 86, label %366
    i32 118, label %369
  ]

162:                                              ; preds = %157, %157, %157, %157, %157, %157, %157, %157, %157, %157
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8* %164, i8** %7, align 8
  %165 = call i32 @getdigits(i8** %7)
  store i32 %165, i32* %8, align 4
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = icmp ugt i8* %166, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %377

173:                                              ; preds = %162
  %174 = load i8*, i8** %7, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 59
  br i1 %177, label %178, label %213

178:                                              ; preds = %173
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %7, align 8
  %181 = call i32 @getdigits(i8** %7)
  store i32 %181, i32* %9, align 4
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = icmp ugt i8* %182, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %178
  br label %377

189:                                              ; preds = %178
  %190 = load i8*, i8** %7, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 72
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @gotoxy(i32 %195, i32 %196)
  br label %212

198:                                              ; preds = %189
  %199 = load i8*, i8** %7, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 114
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load i32, i32* %8, align 4
  %205 = sub nsw i32 %204, 1
  %206 = load i32, i32* @Columns, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* %9, align 4
  %209 = sub nsw i32 %208, 1
  %210 = call i32 @set_scroll_region(i32 0, i32 %205, i32 %207, i32 %209)
  br label %211

211:                                              ; preds = %203, %198
  br label %212

212:                                              ; preds = %211, %194
  br label %311

213:                                              ; preds = %173
  %214 = load i8*, i8** %7, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 65
  br i1 %217, label %218, label %231

218:                                              ; preds = %213
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %220 = add nsw i64 %219, 1
  %221 = trunc i64 %220 to i32
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 2), align 8
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = sub nsw i64 %223, %225
  %227 = trunc i64 %226 to i32
  %228 = call i32 @max(i64 %222, i32 %227)
  %229 = add nsw i32 %228, 1
  %230 = call i32 @gotoxy(i32 %221, i32 %229)
  br label %310

231:                                              ; preds = %213
  %232 = load i8*, i8** %7, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 67
  br i1 %235, label %236, label %249

236:                                              ; preds = %231
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 3), align 8
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  %242 = trunc i64 %241 to i32
  %243 = call i32 @min(i64 %237, i32 %242)
  %244 = add nsw i32 %243, 1
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %246 = add nsw i64 %245, 1
  %247 = trunc i64 %246 to i32
  %248 = call i32 @gotoxy(i32 %244, i32 %247)
  br label %309

249:                                              ; preds = %231
  %250 = load i8*, i8** %7, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 72
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @gotoxy(i32 1, i32 %255)
  br label %308

257:                                              ; preds = %249
  %258 = load i8*, i8** %7, align 8
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 76
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @insert_lines(i32 %263)
  br label %307

265:                                              ; preds = %257
  %266 = load i8*, i8** %7, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 109
  br i1 %269, label %270, label %279

270:                                              ; preds = %265
  %271 = load i32, i32* %8, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 (...) @normvideo()
  br label %278

275:                                              ; preds = %270
  %276 = load i32, i32* %8, align 4
  %277 = call i32 @textattr(i32 %276)
  br label %278

278:                                              ; preds = %275, %273
  br label %306

279:                                              ; preds = %265
  %280 = load i8*, i8** %7, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 102
  br i1 %283, label %284, label %287

284:                                              ; preds = %279
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @textcolor(i32 %285)
  br label %305

287:                                              ; preds = %279
  %288 = load i8*, i8** %7, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 98
  br i1 %291, label %292, label %295

292:                                              ; preds = %287
  %293 = load i32, i32* %8, align 4
  %294 = call i32 @textbackground(i32 %293)
  br label %304

295:                                              ; preds = %287
  %296 = load i8*, i8** %7, align 8
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 77
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @delete_lines(i32 %301)
  br label %303

303:                                              ; preds = %300, %295
  br label %304

304:                                              ; preds = %303, %292
  br label %305

305:                                              ; preds = %304, %284
  br label %306

306:                                              ; preds = %305, %278
  br label %307

307:                                              ; preds = %306, %262
  br label %308

308:                                              ; preds = %307, %254
  br label %309

309:                                              ; preds = %308, %236
  br label %310

310:                                              ; preds = %309, %218
  br label %311

311:                                              ; preds = %310, %212
  %312 = load i8*, i8** %7, align 8
  %313 = load i8*, i8** %3, align 8
  %314 = ptrtoint i8* %312 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = trunc i64 %316 to i32
  %318 = load i32, i32* %4, align 4
  %319 = sub nsw i32 %318, %317
  store i32 %319, i32* %4, align 4
  %320 = load i8*, i8** %7, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 1
  store i8* %321, i8** %3, align 8
  br label %377

322:                                              ; preds = %157
  %323 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %324 = add nsw i64 %323, 1
  %325 = trunc i64 %324 to i32
  %326 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 2), align 8
  %327 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %328 = sub nsw i64 %327, 1
  %329 = trunc i64 %328 to i32
  %330 = call i32 @max(i64 %326, i32 %329)
  %331 = add nsw i32 %330, 1
  %332 = call i32 @gotoxy(i32 %325, i32 %331)
  br label %372

333:                                              ; preds = %157
  %334 = call i32 (...) @visual_bell()
  br label %372

335:                                              ; preds = %157
  %336 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_srScrollRegion, i32 0, i32 3), align 8
  %337 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 1), align 8
  %338 = add nsw i64 %337, 1
  %339 = trunc i64 %338 to i32
  %340 = call i32 @min(i64 %336, i32 %339)
  %341 = add nsw i32 %340, 1
  %342 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_coord, i32 0, i32 0), align 8
  %343 = add nsw i64 %342, 1
  %344 = trunc i64 %343 to i32
  %345 = call i32 @gotoxy(i32 %341, i32 %344)
  br label %372

346:                                              ; preds = %157
  %347 = call i32 (...) @termcap_mode_end()
  br label %372

348:                                              ; preds = %157
  %349 = call i32 (...) @standout()
  br label %372

350:                                              ; preds = %157
  %351 = call i32 (...) @standend()
  br label %372

352:                                              ; preds = %157
  %353 = call i32 @gotoxy(i32 1, i32 1)
  br label %372

354:                                              ; preds = %157
  %355 = call i32 (...) @clear_to_end_of_display()
  br label %372

356:                                              ; preds = %157
  %357 = call i32 (...) @clear_screen()
  br label %372

358:                                              ; preds = %157
  %359 = call i32 (...) @clear_to_end_of_line()
  br label %372

360:                                              ; preds = %157
  %361 = call i32 @insert_lines(i32 1)
  br label %372

362:                                              ; preds = %157
  %363 = call i32 @delete_lines(i32 1)
  br label %372

364:                                              ; preds = %157
  %365 = call i32 (...) @termcap_mode_start()
  br label %372

366:                                              ; preds = %157
  %367 = load i32, i32* @TRUE, align 4
  %368 = call i32 @cursor_visible(i32 %367)
  br label %372

369:                                              ; preds = %157
  %370 = load i32, i32* @FALSE, align 4
  %371 = call i32 @cursor_visible(i32 %370)
  br label %372

372:                                              ; preds = %369, %366, %364, %362, %360, %358, %356, %354, %352, %350, %348, %346, %335, %333, %322
  %373 = load i8*, i8** %3, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 3
  store i8* %374, i8** %3, align 8
  %375 = load i32, i32* %4, align 4
  %376 = sub nsw i32 %375, 2
  store i32 %376, i32* %4, align 4
  br label %377

377:                                              ; preds = %372, %157, %311, %188, %172
  br label %389

378:                                              ; preds = %151, %148, %140
  %379 = load i8*, i8** %3, align 8
  %380 = call i32 @write_chars(i8* %379, i32 1)
  store i32 %380, i32* %10, align 4
  %381 = load i32, i32* %10, align 4
  %382 = sub nsw i32 %381, 1
  %383 = load i32, i32* %4, align 4
  %384 = sub nsw i32 %383, %382
  store i32 %384, i32* %4, align 4
  %385 = load i32, i32* %10, align 4
  %386 = load i8*, i8** %3, align 8
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i8, i8* %386, i64 %387
  store i8* %388, i8** %3, align 8
  br label %389

389:                                              ; preds = %378, %377
  br label %390

390:                                              ; preds = %389, %136
  br label %391

391:                                              ; preds = %390, %120
  br label %392

392:                                              ; preds = %391, %88
  br label %393

393:                                              ; preds = %392, %79
  br label %394

394:                                              ; preds = %393, %42
  br label %23

395:                                              ; preds = %18, %23
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @WaitForChar(i64) #1

declare dso_local i32 @write_chars(i8*, i32) #1

declare dso_local i32 @scroll(i32) #1

declare dso_local i32 @gotoxy(i32, i32) #1

declare dso_local i32 @MessageBeep(i32) #1

declare dso_local i32 @getdigits(i8**) #1

declare dso_local i32 @set_scroll_region(i32, i32, i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @insert_lines(i32) #1

declare dso_local i32 @normvideo(...) #1

declare dso_local i32 @textattr(i32) #1

declare dso_local i32 @textcolor(i32) #1

declare dso_local i32 @textbackground(i32) #1

declare dso_local i32 @delete_lines(i32) #1

declare dso_local i32 @visual_bell(...) #1

declare dso_local i32 @termcap_mode_end(...) #1

declare dso_local i32 @standout(...) #1

declare dso_local i32 @standend(...) #1

declare dso_local i32 @clear_to_end_of_display(...) #1

declare dso_local i32 @clear_screen(...) #1

declare dso_local i32 @clear_to_end_of_line(...) #1

declare dso_local i32 @termcap_mode_start(...) #1

declare dso_local i32 @cursor_visible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
