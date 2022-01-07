; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_miss.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.dfa = type { i32, i32, i32, %struct.sset*, i64*, %struct.cnfa* }
%struct.cnfa = type { i64, i32*, i32, i64, %struct.carc** }
%struct.carc = type { i64, i64 }
%struct.sset = type { i32, %struct.TYPE_2__, %struct.TYPE_2__*, %struct.sset**, i32, i64* }
%struct.TYPE_2__ = type { i64, %struct.sset* }

@.str = private unnamed_addr constant [5 x i8] c"hit\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"miss\0A\00", align 1
@REG_CANCEL = common dso_local global i32 0, align 4
@COLORLESS = common dso_local global i64 0, align 8
@CNFA_NOPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1
@HASLACONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%d :> %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cached c%d\0A\00", align 1
@POSTSTATE = common dso_local global i32 0, align 4
@NOPROGRESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"c%d[%d]->c%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sset* (%struct.vars*, %struct.dfa*, %struct.sset*, i64, i32*, i32*)* @miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sset* @miss(%struct.vars* %0, %struct.dfa* %1, %struct.sset* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.sset*, align 8
  %8 = alloca %struct.vars*, align 8
  %9 = alloca %struct.dfa*, align 8
  %10 = alloca %struct.sset*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cnfa*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.carc*, align 8
  %18 = alloca %struct.sset*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %8, align 8
  store %struct.dfa* %1, %struct.dfa** %9, align 8
  store %struct.sset* %2, %struct.sset** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.dfa*, %struct.dfa** %9, align 8
  %25 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 5
  %26 = load %struct.cnfa*, %struct.cnfa** %25, align 8
  store %struct.cnfa* %26, %struct.cnfa** %14, align 8
  %27 = load %struct.sset*, %struct.sset** %10, align 8
  %28 = getelementptr inbounds %struct.sset, %struct.sset* %27, i32 0, i32 3
  %29 = load %struct.sset**, %struct.sset*** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.sset*, %struct.sset** %29, i64 %30
  %32 = load %struct.sset*, %struct.sset** %31, align 8
  %33 = icmp ne %struct.sset* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %6
  %35 = call i32 @FDEBUG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.sset*, %struct.sset** %10, align 8
  %37 = getelementptr inbounds %struct.sset, %struct.sset* %36, i32 0, i32 3
  %38 = load %struct.sset**, %struct.sset*** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.sset*, %struct.sset** %38, i64 %39
  %41 = load %struct.sset*, %struct.sset** %40, align 8
  store %struct.sset* %41, %struct.sset** %7, align 8
  br label %433

42:                                               ; preds = %6
  %43 = call i32 @FDEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.vars*, %struct.vars** %8, align 8
  %45 = getelementptr inbounds %struct.vars, %struct.vars* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @CANCEL_REQUESTED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @REG_CANCEL, align 4
  %51 = call i32 @ERR(i32 %50)
  store %struct.sset* null, %struct.sset** %7, align 8
  br label %433

52:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.dfa*, %struct.dfa** %9, align 8
  %56 = getelementptr inbounds %struct.dfa, %struct.dfa* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.dfa*, %struct.dfa** %9, align 8
  %61 = getelementptr inbounds %struct.dfa, %struct.dfa* %60, i32 0, i32 4
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %53

69:                                               ; preds = %53
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %145, %69
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.dfa*, %struct.dfa** %9, align 8
  %73 = getelementptr inbounds %struct.dfa, %struct.dfa* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %148

76:                                               ; preds = %70
  %77 = load %struct.sset*, %struct.sset** %10, align 8
  %78 = getelementptr inbounds %struct.sset, %struct.sset* %77, i32 0, i32 5
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @ISBSET(i64* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %144

83:                                               ; preds = %76
  %84 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %85 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %84, i32 0, i32 4
  %86 = load %struct.carc**, %struct.carc*** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.carc*, %struct.carc** %86, i64 %88
  %90 = load %struct.carc*, %struct.carc** %89, align 8
  store %struct.carc* %90, %struct.carc** %17, align 8
  br label %91

91:                                               ; preds = %140, %83
  %92 = load %struct.carc*, %struct.carc** %17, align 8
  %93 = getelementptr inbounds %struct.carc, %struct.carc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @COLORLESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %91
  %98 = load %struct.carc*, %struct.carc** %17, align 8
  %99 = getelementptr inbounds %struct.carc, %struct.carc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %97
  %104 = load %struct.dfa*, %struct.dfa** %9, align 8
  %105 = getelementptr inbounds %struct.dfa, %struct.dfa* %104, i32 0, i32 4
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.carc*, %struct.carc** %17, align 8
  %108 = getelementptr inbounds %struct.carc, %struct.carc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @BSET(i64* %106, i64 %109)
  store i32 1, i32* %21, align 4
  %111 = load %struct.carc*, %struct.carc** %17, align 8
  %112 = getelementptr inbounds %struct.carc, %struct.carc* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %115 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  store i32 1, i32* %19, align 4
  br label %119

119:                                              ; preds = %118, %103
  %120 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %121 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.carc*, %struct.carc** %17, align 8
  %124 = getelementptr inbounds %struct.carc, %struct.carc* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CNFA_NOPROGRESS, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %119
  store i32 0, i32* %20, align 4
  br label %132

132:                                              ; preds = %131, %119
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.carc*, %struct.carc** %17, align 8
  %135 = getelementptr inbounds %struct.carc, %struct.carc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @FDEBUG(i8* %137)
  br label %139

139:                                              ; preds = %132, %97
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.carc*, %struct.carc** %17, align 8
  %142 = getelementptr inbounds %struct.carc, %struct.carc* %141, i32 1
  store %struct.carc* %142, %struct.carc** %17, align 8
  br label %91

143:                                              ; preds = %91
  br label %144

144:                                              ; preds = %143, %76
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %70

148:                                              ; preds = %70
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  store %struct.sset* null, %struct.sset** %7, align 8
  br label %433

152:                                              ; preds = %148
  %153 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %154 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @HASLACONS, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %158

158:                                              ; preds = %271, %152
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %272

161:                                              ; preds = %158
  store i32 0, i32* %22, align 4
  store i32 0, i32* %15, align 4
  br label %162

162:                                              ; preds = %268, %161
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.dfa*, %struct.dfa** %9, align 8
  %165 = getelementptr inbounds %struct.dfa, %struct.dfa* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %271

168:                                              ; preds = %162
  %169 = load %struct.dfa*, %struct.dfa** %9, align 8
  %170 = getelementptr inbounds %struct.dfa, %struct.dfa* %169, i32 0, i32 4
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i64 @ISBSET(i64* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %267

175:                                              ; preds = %168
  %176 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %177 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %176, i32 0, i32 4
  %178 = load %struct.carc**, %struct.carc*** %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.carc*, %struct.carc** %178, i64 %180
  %182 = load %struct.carc*, %struct.carc** %181, align 8
  store %struct.carc* %182, %struct.carc** %17, align 8
  br label %183

183:                                              ; preds = %263, %175
  %184 = load %struct.carc*, %struct.carc** %17, align 8
  %185 = getelementptr inbounds %struct.carc, %struct.carc* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @COLORLESS, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %266

189:                                              ; preds = %183
  %190 = load %struct.carc*, %struct.carc** %17, align 8
  %191 = getelementptr inbounds %struct.carc, %struct.carc* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %194 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  br label %263

198:                                              ; preds = %189
  %199 = load %struct.dfa*, %struct.dfa** %9, align 8
  %200 = getelementptr inbounds %struct.dfa, %struct.dfa* %199, i32 0, i32 4
  %201 = load i64*, i64** %200, align 8
  %202 = load %struct.carc*, %struct.carc** %17, align 8
  %203 = getelementptr inbounds %struct.carc, %struct.carc* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i64 @ISBSET(i64* %201, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  br label %263

209:                                              ; preds = %198
  store i32 1, i32* %23, align 4
  %210 = load %struct.vars*, %struct.vars** %8, align 8
  %211 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %212 = load i32*, i32** %12, align 8
  %213 = load %struct.carc*, %struct.carc** %17, align 8
  %214 = getelementptr inbounds %struct.carc, %struct.carc* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @lacon(%struct.vars* %210, %struct.cnfa* %211, i32* %212, i64 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %209
  %219 = call i64 (...) @ISERR()
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store %struct.sset* null, %struct.sset** %7, align 8
  br label %433

222:                                              ; preds = %218
  br label %263

223:                                              ; preds = %209
  %224 = call i64 (...) @ISERR()
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store %struct.sset* null, %struct.sset** %7, align 8
  br label %433

227:                                              ; preds = %223
  %228 = load %struct.dfa*, %struct.dfa** %9, align 8
  %229 = getelementptr inbounds %struct.dfa, %struct.dfa* %228, i32 0, i32 4
  %230 = load i64*, i64** %229, align 8
  %231 = load %struct.carc*, %struct.carc** %17, align 8
  %232 = getelementptr inbounds %struct.carc, %struct.carc* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @BSET(i64* %230, i64 %233)
  store i32 1, i32* %22, align 4
  %235 = load %struct.carc*, %struct.carc** %17, align 8
  %236 = getelementptr inbounds %struct.carc, %struct.carc* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %239 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %227
  store i32 1, i32* %19, align 4
  br label %243

243:                                              ; preds = %242, %227
  %244 = load %struct.cnfa*, %struct.cnfa** %14, align 8
  %245 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.carc*, %struct.carc** %17, align 8
  %248 = getelementptr inbounds %struct.carc, %struct.carc* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @CNFA_NOPROGRESS, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %243
  store i32 0, i32* %20, align 4
  br label %256

256:                                              ; preds = %255, %243
  %257 = load i32, i32* %15, align 4
  %258 = load %struct.carc*, %struct.carc** %17, align 8
  %259 = getelementptr inbounds %struct.carc, %struct.carc* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to i8*
  %262 = call i32 @FDEBUG(i8* %261)
  br label %263

263:                                              ; preds = %256, %222, %208, %197
  %264 = load %struct.carc*, %struct.carc** %17, align 8
  %265 = getelementptr inbounds %struct.carc, %struct.carc* %264, i32 1
  store %struct.carc* %265, %struct.carc** %17, align 8
  br label %183

266:                                              ; preds = %183
  br label %267

267:                                              ; preds = %266, %168
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %15, align 4
  br label %162

271:                                              ; preds = %162
  br label %158

272:                                              ; preds = %158
  %273 = load %struct.dfa*, %struct.dfa** %9, align 8
  %274 = getelementptr inbounds %struct.dfa, %struct.dfa* %273, i32 0, i32 4
  %275 = load i64*, i64** %274, align 8
  %276 = load %struct.dfa*, %struct.dfa** %9, align 8
  %277 = getelementptr inbounds %struct.dfa, %struct.dfa* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @HASH(i64* %275, i32 %278)
  store i32 %279, i32* %16, align 4
  %280 = load %struct.dfa*, %struct.dfa** %9, align 8
  %281 = getelementptr inbounds %struct.dfa, %struct.dfa* %280, i32 0, i32 3
  %282 = load %struct.sset*, %struct.sset** %281, align 8
  store %struct.sset* %282, %struct.sset** %18, align 8
  %283 = load %struct.dfa*, %struct.dfa** %9, align 8
  %284 = getelementptr inbounds %struct.dfa, %struct.dfa* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  store i32 %285, i32* %15, align 4
  br label %286

286:                                              ; preds = %314, %272
  %287 = load i32, i32* %15, align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %319

289:                                              ; preds = %286
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.dfa*, %struct.dfa** %9, align 8
  %292 = getelementptr inbounds %struct.dfa, %struct.dfa* %291, i32 0, i32 4
  %293 = load i64*, i64** %292, align 8
  %294 = load %struct.sset*, %struct.sset** %18, align 8
  %295 = load %struct.dfa*, %struct.dfa** %9, align 8
  %296 = getelementptr inbounds %struct.dfa, %struct.dfa* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i64 @HIT(i32 %290, i64* %293, %struct.sset* %294, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %289
  %301 = load %struct.sset*, %struct.sset** %18, align 8
  %302 = load %struct.dfa*, %struct.dfa** %9, align 8
  %303 = getelementptr inbounds %struct.dfa, %struct.dfa* %302, i32 0, i32 3
  %304 = load %struct.sset*, %struct.sset** %303, align 8
  %305 = ptrtoint %struct.sset* %301 to i64
  %306 = ptrtoint %struct.sset* %304 to i64
  %307 = sub i64 %305, %306
  %308 = sdiv exact i64 %307, 56
  %309 = trunc i64 %308 to i32
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i8*
  %312 = call i32 @FDEBUG(i8* %311)
  br label %319

313:                                              ; preds = %289
  br label %314

314:                                              ; preds = %313
  %315 = load %struct.sset*, %struct.sset** %18, align 8
  %316 = getelementptr inbounds %struct.sset, %struct.sset* %315, i32 1
  store %struct.sset* %316, %struct.sset** %18, align 8
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %15, align 4
  br label %286

319:                                              ; preds = %300, %286
  %320 = load i32, i32* %15, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %382

322:                                              ; preds = %319
  %323 = load %struct.vars*, %struct.vars** %8, align 8
  %324 = load %struct.dfa*, %struct.dfa** %9, align 8
  %325 = load i32*, i32** %12, align 8
  %326 = load i32*, i32** %13, align 8
  %327 = call %struct.sset* @getvacant(%struct.vars* %323, %struct.dfa* %324, i32* %325, i32* %326)
  store %struct.sset* %327, %struct.sset** %18, align 8
  %328 = load %struct.sset*, %struct.sset** %18, align 8
  %329 = icmp eq %struct.sset* %328, null
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  store %struct.sset* null, %struct.sset** %7, align 8
  br label %433

331:                                              ; preds = %322
  %332 = load %struct.sset*, %struct.sset** %18, align 8
  %333 = load %struct.sset*, %struct.sset** %10, align 8
  %334 = icmp ne %struct.sset* %332, %333
  %335 = zext i1 %334 to i32
  %336 = call i32 @assert(i32 %335)
  store i32 0, i32* %15, align 4
  br label %337

337:                                              ; preds = %357, %331
  %338 = load i32, i32* %15, align 4
  %339 = load %struct.dfa*, %struct.dfa** %9, align 8
  %340 = getelementptr inbounds %struct.dfa, %struct.dfa* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp slt i32 %338, %341
  br i1 %342, label %343, label %360

343:                                              ; preds = %337
  %344 = load %struct.dfa*, %struct.dfa** %9, align 8
  %345 = getelementptr inbounds %struct.dfa, %struct.dfa* %344, i32 0, i32 4
  %346 = load i64*, i64** %345, align 8
  %347 = load i32, i32* %15, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.sset*, %struct.sset** %18, align 8
  %352 = getelementptr inbounds %struct.sset, %struct.sset* %351, i32 0, i32 5
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %15, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  store i64 %350, i64* %356, align 8
  br label %357

357:                                              ; preds = %343
  %358 = load i32, i32* %15, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %15, align 4
  br label %337

360:                                              ; preds = %337
  %361 = load i32, i32* %16, align 4
  %362 = load %struct.sset*, %struct.sset** %18, align 8
  %363 = getelementptr inbounds %struct.sset, %struct.sset* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 8
  %364 = load i32, i32* %19, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = load i32, i32* @POSTSTATE, align 4
  br label %369

368:                                              ; preds = %360
  br label %369

369:                                              ; preds = %368, %366
  %370 = phi i32 [ %367, %366 ], [ 0, %368 ]
  %371 = load %struct.sset*, %struct.sset** %18, align 8
  %372 = getelementptr inbounds %struct.sset, %struct.sset* %371, i32 0, i32 4
  store i32 %370, i32* %372, align 8
  %373 = load i32, i32* %20, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %369
  %376 = load i32, i32* @NOPROGRESS, align 4
  %377 = load %struct.sset*, %struct.sset** %18, align 8
  %378 = getelementptr inbounds %struct.sset, %struct.sset* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  br label %381

381:                                              ; preds = %375, %369
  br label %382

382:                                              ; preds = %381, %319
  %383 = load i32, i32* %23, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %431, label %385

385:                                              ; preds = %382
  %386 = load %struct.sset*, %struct.sset** %10, align 8
  %387 = load %struct.dfa*, %struct.dfa** %9, align 8
  %388 = getelementptr inbounds %struct.dfa, %struct.dfa* %387, i32 0, i32 3
  %389 = load %struct.sset*, %struct.sset** %388, align 8
  %390 = ptrtoint %struct.sset* %386 to i64
  %391 = ptrtoint %struct.sset* %389 to i64
  %392 = sub i64 %390, %391
  %393 = sdiv exact i64 %392, 56
  %394 = trunc i64 %393 to i32
  %395 = load i64, i64* %11, align 8
  %396 = load %struct.sset*, %struct.sset** %18, align 8
  %397 = load %struct.dfa*, %struct.dfa** %9, align 8
  %398 = getelementptr inbounds %struct.dfa, %struct.dfa* %397, i32 0, i32 3
  %399 = load %struct.sset*, %struct.sset** %398, align 8
  %400 = ptrtoint %struct.sset* %396 to i64
  %401 = ptrtoint %struct.sset* %399 to i64
  %402 = sub i64 %400, %401
  %403 = sdiv exact i64 %402, 56
  %404 = trunc i64 %403 to i32
  %405 = sext i32 %404 to i64
  %406 = inttoptr i64 %405 to i8*
  %407 = call i32 @FDEBUG(i8* %406)
  %408 = load %struct.sset*, %struct.sset** %18, align 8
  %409 = load %struct.sset*, %struct.sset** %10, align 8
  %410 = getelementptr inbounds %struct.sset, %struct.sset* %409, i32 0, i32 3
  %411 = load %struct.sset**, %struct.sset*** %410, align 8
  %412 = load i64, i64* %11, align 8
  %413 = getelementptr inbounds %struct.sset*, %struct.sset** %411, i64 %412
  store %struct.sset* %408, %struct.sset** %413, align 8
  %414 = load %struct.sset*, %struct.sset** %10, align 8
  %415 = getelementptr inbounds %struct.sset, %struct.sset* %414, i32 0, i32 2
  %416 = load %struct.TYPE_2__*, %struct.TYPE_2__** %415, align 8
  %417 = load i64, i64* %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %416, i64 %417
  %419 = load %struct.sset*, %struct.sset** %18, align 8
  %420 = getelementptr inbounds %struct.sset, %struct.sset* %419, i32 0, i32 1
  %421 = bitcast %struct.TYPE_2__* %418 to i8*
  %422 = bitcast %struct.TYPE_2__* %420 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %421, i8* align 8 %422, i64 16, i1 false)
  %423 = load %struct.sset*, %struct.sset** %10, align 8
  %424 = load %struct.sset*, %struct.sset** %18, align 8
  %425 = getelementptr inbounds %struct.sset, %struct.sset* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 1
  store %struct.sset* %423, %struct.sset** %426, align 8
  %427 = load i64, i64* %11, align 8
  %428 = load %struct.sset*, %struct.sset** %18, align 8
  %429 = getelementptr inbounds %struct.sset, %struct.sset* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 0
  store i64 %427, i64* %430, align 8
  br label %431

431:                                              ; preds = %385, %382
  %432 = load %struct.sset*, %struct.sset** %18, align 8
  store %struct.sset* %432, %struct.sset** %7, align 8
  br label %433

433:                                              ; preds = %431, %330, %226, %221, %151, %49, %34
  %434 = load %struct.sset*, %struct.sset** %7, align 8
  ret %struct.sset* %434
}

declare dso_local i32 @FDEBUG(i8*) #1

declare dso_local i64 @CANCEL_REQUESTED(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i64 @ISBSET(i64*, i32) #1

declare dso_local i32 @BSET(i64*, i64) #1

declare dso_local i32 @lacon(%struct.vars*, %struct.cnfa*, i32*, i64) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32 @HASH(i64*, i32) #1

declare dso_local i64 @HIT(i32, i64*, %struct.sset*, i32) #1

declare dso_local %struct.sset* @getvacant(%struct.vars*, %struct.dfa*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
