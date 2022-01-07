; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_fixempties.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_fixempties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32, %struct.state* }
%struct.state = type { i32, i32, i64, i64, %struct.state*, %struct.arc*, %struct.arc*, %struct.state* }
%struct.arc = type { i64, %struct.arc*, %struct.arc*, %struct.state*, %struct.state* }

@EMPTY = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, i32*)* @fixempties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixempties(%struct.nfa* %0, i32* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.state*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.arc*, align 8
  %9 = alloca %struct.arc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.arc**, align 8
  %12 = alloca %struct.arc**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.nfa*, %struct.nfa** %3, align 8
  %17 = getelementptr inbounds %struct.nfa, %struct.nfa* %16, i32 0, i32 1
  %18 = load %struct.state*, %struct.state** %17, align 8
  store %struct.state* %18, %struct.state** %5, align 8
  br label %19

19:                                               ; preds = %80, %2
  %20 = load %struct.state*, %struct.state** %5, align 8
  %21 = icmp ne %struct.state* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i64 (...) @NISERR()
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %82

28:                                               ; preds = %26
  %29 = load %struct.state*, %struct.state** %5, align 8
  %30 = getelementptr inbounds %struct.state, %struct.state* %29, i32 0, i32 4
  %31 = load %struct.state*, %struct.state** %30, align 8
  store %struct.state* %31, %struct.state** %7, align 8
  %32 = load %struct.state*, %struct.state** %5, align 8
  %33 = getelementptr inbounds %struct.state, %struct.state* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load %struct.state*, %struct.state** %5, align 8
  %38 = getelementptr inbounds %struct.state, %struct.state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %28
  br label %80

42:                                               ; preds = %36
  %43 = load %struct.state*, %struct.state** %5, align 8
  %44 = getelementptr inbounds %struct.state, %struct.state* %43, i32 0, i32 5
  %45 = load %struct.arc*, %struct.arc** %44, align 8
  store %struct.arc* %45, %struct.arc** %8, align 8
  %46 = load %struct.arc*, %struct.arc** %8, align 8
  %47 = icmp ne %struct.arc* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.arc*, %struct.arc** %8, align 8
  %50 = getelementptr inbounds %struct.arc, %struct.arc* %49, i32 0, i32 1
  %51 = load %struct.arc*, %struct.arc** %50, align 8
  %52 = icmp eq %struct.arc* %51, null
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i1 [ false, %42 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.arc*, %struct.arc** %8, align 8
  %58 = getelementptr inbounds %struct.arc, %struct.arc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EMPTY, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %80

63:                                               ; preds = %53
  %64 = load %struct.state*, %struct.state** %5, align 8
  %65 = load %struct.arc*, %struct.arc** %8, align 8
  %66 = getelementptr inbounds %struct.arc, %struct.arc* %65, i32 0, i32 4
  %67 = load %struct.state*, %struct.state** %66, align 8
  %68 = icmp ne %struct.state* %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.nfa*, %struct.nfa** %3, align 8
  %71 = load %struct.state*, %struct.state** %5, align 8
  %72 = load %struct.arc*, %struct.arc** %8, align 8
  %73 = getelementptr inbounds %struct.arc, %struct.arc* %72, i32 0, i32 4
  %74 = load %struct.state*, %struct.state** %73, align 8
  %75 = call i32 @moveins(%struct.nfa* %70, %struct.state* %71, %struct.state* %74)
  br label %76

76:                                               ; preds = %69, %63
  %77 = load %struct.nfa*, %struct.nfa** %3, align 8
  %78 = load %struct.state*, %struct.state** %5, align 8
  %79 = call i32 @dropstate(%struct.nfa* %77, %struct.state* %78)
  br label %80

80:                                               ; preds = %76, %62, %41
  %81 = load %struct.state*, %struct.state** %7, align 8
  store %struct.state* %81, %struct.state** %5, align 8
  br label %19

82:                                               ; preds = %26
  %83 = load %struct.nfa*, %struct.nfa** %3, align 8
  %84 = getelementptr inbounds %struct.nfa, %struct.nfa* %83, i32 0, i32 1
  %85 = load %struct.state*, %struct.state** %84, align 8
  store %struct.state* %85, %struct.state** %5, align 8
  br label %86

86:                                               ; preds = %153, %82
  %87 = load %struct.state*, %struct.state** %5, align 8
  %88 = icmp ne %struct.state* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i64 (...) @NISERR()
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ false, %86 ], [ %92, %89 ]
  br i1 %94, label %95, label %155

95:                                               ; preds = %93
  %96 = load %struct.state*, %struct.state** %5, align 8
  %97 = getelementptr inbounds %struct.state, %struct.state* %96, i32 0, i32 4
  %98 = load %struct.state*, %struct.state** %97, align 8
  store %struct.state* %98, %struct.state** %7, align 8
  %99 = load %struct.state*, %struct.state** %5, align 8
  %100 = getelementptr inbounds %struct.state, %struct.state* %99, i32 0, i32 7
  %101 = load %struct.state*, %struct.state** %100, align 8
  %102 = icmp eq %struct.state* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.state*, %struct.state** %5, align 8
  %106 = getelementptr inbounds %struct.state, %struct.state* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %95
  %110 = load %struct.state*, %struct.state** %5, align 8
  %111 = getelementptr inbounds %struct.state, %struct.state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %95
  br label %153

115:                                              ; preds = %109
  %116 = load %struct.state*, %struct.state** %5, align 8
  %117 = getelementptr inbounds %struct.state, %struct.state* %116, i32 0, i32 6
  %118 = load %struct.arc*, %struct.arc** %117, align 8
  store %struct.arc* %118, %struct.arc** %8, align 8
  %119 = load %struct.arc*, %struct.arc** %8, align 8
  %120 = icmp ne %struct.arc* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.arc*, %struct.arc** %8, align 8
  %123 = getelementptr inbounds %struct.arc, %struct.arc* %122, i32 0, i32 2
  %124 = load %struct.arc*, %struct.arc** %123, align 8
  %125 = icmp eq %struct.arc* %124, null
  br label %126

126:                                              ; preds = %121, %115
  %127 = phi i1 [ false, %115 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct.arc*, %struct.arc** %8, align 8
  %131 = getelementptr inbounds %struct.arc, %struct.arc* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @EMPTY, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %153

136:                                              ; preds = %126
  %137 = load %struct.state*, %struct.state** %5, align 8
  %138 = load %struct.arc*, %struct.arc** %8, align 8
  %139 = getelementptr inbounds %struct.arc, %struct.arc* %138, i32 0, i32 3
  %140 = load %struct.state*, %struct.state** %139, align 8
  %141 = icmp ne %struct.state* %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.nfa*, %struct.nfa** %3, align 8
  %144 = load %struct.state*, %struct.state** %5, align 8
  %145 = load %struct.arc*, %struct.arc** %8, align 8
  %146 = getelementptr inbounds %struct.arc, %struct.arc* %145, i32 0, i32 3
  %147 = load %struct.state*, %struct.state** %146, align 8
  %148 = call i32 @moveouts(%struct.nfa* %143, %struct.state* %144, %struct.state* %147)
  br label %149

149:                                              ; preds = %142, %136
  %150 = load %struct.nfa*, %struct.nfa** %3, align 8
  %151 = load %struct.state*, %struct.state** %5, align 8
  %152 = call i32 @dropstate(%struct.nfa* %150, %struct.state* %151)
  br label %153

153:                                              ; preds = %149, %135, %114
  %154 = load %struct.state*, %struct.state** %7, align 8
  store %struct.state* %154, %struct.state** %5, align 8
  br label %86

155:                                              ; preds = %93
  %156 = call i64 (...) @NISERR()
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %406

159:                                              ; preds = %155
  %160 = load %struct.nfa*, %struct.nfa** %3, align 8
  %161 = getelementptr inbounds %struct.nfa, %struct.nfa* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 8
  %165 = trunc i64 %164 to i32
  %166 = call i64 @MALLOC(i32 %165)
  %167 = inttoptr i64 %166 to %struct.arc**
  store %struct.arc** %167, %struct.arc*** %11, align 8
  %168 = load %struct.arc**, %struct.arc*** %11, align 8
  %169 = icmp eq %struct.arc** %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %159
  %171 = load i32, i32* @REG_ESPACE, align 4
  %172 = call i32 @NERR(i32 %171)
  br label %406

173:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  %174 = load %struct.nfa*, %struct.nfa** %3, align 8
  %175 = getelementptr inbounds %struct.nfa, %struct.nfa* %174, i32 0, i32 1
  %176 = load %struct.state*, %struct.state** %175, align 8
  store %struct.state* %176, %struct.state** %5, align 8
  br label %177

177:                                              ; preds = %194, %173
  %178 = load %struct.state*, %struct.state** %5, align 8
  %179 = icmp ne %struct.state* %178, null
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load %struct.state*, %struct.state** %5, align 8
  %182 = getelementptr inbounds %struct.state, %struct.state* %181, i32 0, i32 6
  %183 = load %struct.arc*, %struct.arc** %182, align 8
  %184 = load %struct.arc**, %struct.arc*** %11, align 8
  %185 = load %struct.state*, %struct.state** %5, align 8
  %186 = getelementptr inbounds %struct.state, %struct.state* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.arc*, %struct.arc** %184, i64 %187
  store %struct.arc* %183, %struct.arc** %188, align 8
  %189 = load %struct.state*, %struct.state** %5, align 8
  %190 = getelementptr inbounds %struct.state, %struct.state* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %180
  %195 = load %struct.state*, %struct.state** %5, align 8
  %196 = getelementptr inbounds %struct.state, %struct.state* %195, i32 0, i32 4
  %197 = load %struct.state*, %struct.state** %196, align 8
  store %struct.state* %197, %struct.state** %5, align 8
  br label %177

198:                                              ; preds = %177
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 8
  %202 = trunc i64 %201 to i32
  %203 = call i64 @MALLOC(i32 %202)
  %204 = inttoptr i64 %203 to %struct.arc**
  store %struct.arc** %204, %struct.arc*** %12, align 8
  %205 = load %struct.arc**, %struct.arc*** %12, align 8
  %206 = icmp eq %struct.arc** %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %198
  %208 = load i32, i32* @REG_ESPACE, align 4
  %209 = call i32 @NERR(i32 %208)
  %210 = load %struct.arc**, %struct.arc*** %11, align 8
  %211 = call i32 @FREE(%struct.arc** %210)
  br label %406

212:                                              ; preds = %198
  %213 = load %struct.nfa*, %struct.nfa** %3, align 8
  %214 = getelementptr inbounds %struct.nfa, %struct.nfa* %213, i32 0, i32 1
  %215 = load %struct.state*, %struct.state** %214, align 8
  store %struct.state* %215, %struct.state** %5, align 8
  br label %216

216:                                              ; preds = %320, %212
  %217 = load %struct.state*, %struct.state** %5, align 8
  %218 = icmp ne %struct.state* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = call i64 (...) @NISERR()
  %221 = icmp ne i64 %220, 0
  %222 = xor i1 %221, true
  br label %223

223:                                              ; preds = %219, %216
  %224 = phi i1 [ false, %216 ], [ %222, %219 ]
  br i1 %224, label %225, label %324

225:                                              ; preds = %223
  %226 = load %struct.state*, %struct.state** %5, align 8
  %227 = getelementptr inbounds %struct.state, %struct.state* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %225
  %231 = load %struct.state*, %struct.state** %5, align 8
  %232 = call i32 @hasnonemptyout(%struct.state* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  br label %320

235:                                              ; preds = %230, %225
  store i32 0, i32* %13, align 4
  %236 = load %struct.nfa*, %struct.nfa** %3, align 8
  %237 = load %struct.state*, %struct.state** %5, align 8
  %238 = load %struct.state*, %struct.state** %5, align 8
  %239 = load %struct.arc**, %struct.arc*** %11, align 8
  %240 = call %struct.state* @emptyreachable(%struct.nfa* %236, %struct.state* %237, %struct.state* %238, %struct.arc** %239)
  store %struct.state* %240, %struct.state** %6, align 8
  br label %241

241:                                              ; preds = %279, %235
  %242 = load %struct.state*, %struct.state** %6, align 8
  %243 = load %struct.state*, %struct.state** %5, align 8
  %244 = icmp ne %struct.state* %242, %243
  br i1 %244, label %245, label %281

245:                                              ; preds = %241
  %246 = load %struct.arc**, %struct.arc*** %11, align 8
  %247 = load %struct.state*, %struct.state** %6, align 8
  %248 = getelementptr inbounds %struct.state, %struct.state* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.arc*, %struct.arc** %246, i64 %249
  %251 = load %struct.arc*, %struct.arc** %250, align 8
  store %struct.arc* %251, %struct.arc** %8, align 8
  br label %252

252:                                              ; preds = %269, %245
  %253 = load %struct.arc*, %struct.arc** %8, align 8
  %254 = icmp ne %struct.arc* %253, null
  br i1 %254, label %255, label %273

255:                                              ; preds = %252
  %256 = load %struct.arc*, %struct.arc** %8, align 8
  %257 = getelementptr inbounds %struct.arc, %struct.arc* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @EMPTY, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %255
  %262 = load %struct.arc*, %struct.arc** %8, align 8
  %263 = load %struct.arc**, %struct.arc*** %12, align 8
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds %struct.arc*, %struct.arc** %263, i64 %266
  store %struct.arc* %262, %struct.arc** %267, align 8
  br label %268

268:                                              ; preds = %261, %255
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.arc*, %struct.arc** %8, align 8
  %271 = getelementptr inbounds %struct.arc, %struct.arc* %270, i32 0, i32 2
  %272 = load %struct.arc*, %struct.arc** %271, align 8
  store %struct.arc* %272, %struct.arc** %8, align 8
  br label %252

273:                                              ; preds = %252
  %274 = load %struct.state*, %struct.state** %6, align 8
  %275 = getelementptr inbounds %struct.state, %struct.state* %274, i32 0, i32 7
  %276 = load %struct.state*, %struct.state** %275, align 8
  store %struct.state* %276, %struct.state** %7, align 8
  %277 = load %struct.state*, %struct.state** %6, align 8
  %278 = getelementptr inbounds %struct.state, %struct.state* %277, i32 0, i32 7
  store %struct.state* null, %struct.state** %278, align 8
  br label %279

279:                                              ; preds = %273
  %280 = load %struct.state*, %struct.state** %7, align 8
  store %struct.state* %280, %struct.state** %6, align 8
  br label %241

281:                                              ; preds = %241
  %282 = load %struct.state*, %struct.state** %5, align 8
  %283 = getelementptr inbounds %struct.state, %struct.state* %282, i32 0, i32 7
  store %struct.state* null, %struct.state** %283, align 8
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* %10, align 4
  %286 = icmp sle i32 %284, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @assert(i32 %287)
  %289 = load %struct.state*, %struct.state** %5, align 8
  %290 = getelementptr inbounds %struct.state, %struct.state* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %14, align 4
  %292 = load %struct.nfa*, %struct.nfa** %3, align 8
  %293 = load %struct.state*, %struct.state** %5, align 8
  %294 = load %struct.arc**, %struct.arc*** %12, align 8
  %295 = load i32, i32* %13, align 4
  %296 = call i32 @mergeins(%struct.nfa* %292, %struct.state* %293, %struct.arc** %294, i32 %295)
  %297 = load %struct.state*, %struct.state** %5, align 8
  %298 = getelementptr inbounds %struct.state, %struct.state* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %14, align 4
  %301 = sub nsw i32 %299, %300
  store i32 %301, i32* %15, align 4
  %302 = load %struct.state*, %struct.state** %5, align 8
  %303 = getelementptr inbounds %struct.state, %struct.state* %302, i32 0, i32 6
  %304 = load %struct.arc*, %struct.arc** %303, align 8
  store %struct.arc* %304, %struct.arc** %8, align 8
  br label %305

305:                                              ; preds = %309, %281
  %306 = load i32, i32* %15, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %15, align 4
  %308 = icmp sgt i32 %306, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load %struct.arc*, %struct.arc** %8, align 8
  %311 = getelementptr inbounds %struct.arc, %struct.arc* %310, i32 0, i32 2
  %312 = load %struct.arc*, %struct.arc** %311, align 8
  store %struct.arc* %312, %struct.arc** %8, align 8
  br label %305

313:                                              ; preds = %305
  %314 = load %struct.arc*, %struct.arc** %8, align 8
  %315 = load %struct.arc**, %struct.arc*** %11, align 8
  %316 = load %struct.state*, %struct.state** %5, align 8
  %317 = getelementptr inbounds %struct.state, %struct.state* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds %struct.arc*, %struct.arc** %315, i64 %318
  store %struct.arc* %314, %struct.arc** %319, align 8
  br label %320

320:                                              ; preds = %313, %234
  %321 = load %struct.state*, %struct.state** %5, align 8
  %322 = getelementptr inbounds %struct.state, %struct.state* %321, i32 0, i32 4
  %323 = load %struct.state*, %struct.state** %322, align 8
  store %struct.state* %323, %struct.state** %5, align 8
  br label %216

324:                                              ; preds = %223
  %325 = load %struct.arc**, %struct.arc*** %12, align 8
  %326 = call i32 @FREE(%struct.arc** %325)
  %327 = load %struct.arc**, %struct.arc*** %11, align 8
  %328 = call i32 @FREE(%struct.arc** %327)
  %329 = call i64 (...) @NISERR()
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %324
  br label %406

332:                                              ; preds = %324
  %333 = load %struct.nfa*, %struct.nfa** %3, align 8
  %334 = getelementptr inbounds %struct.nfa, %struct.nfa* %333, i32 0, i32 1
  %335 = load %struct.state*, %struct.state** %334, align 8
  store %struct.state* %335, %struct.state** %5, align 8
  br label %336

336:                                              ; preds = %363, %332
  %337 = load %struct.state*, %struct.state** %5, align 8
  %338 = icmp ne %struct.state* %337, null
  br i1 %338, label %339, label %367

339:                                              ; preds = %336
  %340 = load %struct.state*, %struct.state** %5, align 8
  %341 = getelementptr inbounds %struct.state, %struct.state* %340, i32 0, i32 5
  %342 = load %struct.arc*, %struct.arc** %341, align 8
  store %struct.arc* %342, %struct.arc** %8, align 8
  br label %343

343:                                              ; preds = %360, %339
  %344 = load %struct.arc*, %struct.arc** %8, align 8
  %345 = icmp ne %struct.arc* %344, null
  br i1 %345, label %346, label %362

346:                                              ; preds = %343
  %347 = load %struct.arc*, %struct.arc** %8, align 8
  %348 = getelementptr inbounds %struct.arc, %struct.arc* %347, i32 0, i32 1
  %349 = load %struct.arc*, %struct.arc** %348, align 8
  store %struct.arc* %349, %struct.arc** %9, align 8
  %350 = load %struct.arc*, %struct.arc** %8, align 8
  %351 = getelementptr inbounds %struct.arc, %struct.arc* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @EMPTY, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %359

355:                                              ; preds = %346
  %356 = load %struct.nfa*, %struct.nfa** %3, align 8
  %357 = load %struct.arc*, %struct.arc** %8, align 8
  %358 = call i32 @freearc(%struct.nfa* %356, %struct.arc* %357)
  br label %359

359:                                              ; preds = %355, %346
  br label %360

360:                                              ; preds = %359
  %361 = load %struct.arc*, %struct.arc** %9, align 8
  store %struct.arc* %361, %struct.arc** %8, align 8
  br label %343

362:                                              ; preds = %343
  br label %363

363:                                              ; preds = %362
  %364 = load %struct.state*, %struct.state** %5, align 8
  %365 = getelementptr inbounds %struct.state, %struct.state* %364, i32 0, i32 4
  %366 = load %struct.state*, %struct.state** %365, align 8
  store %struct.state* %366, %struct.state** %5, align 8
  br label %336

367:                                              ; preds = %336
  %368 = load %struct.nfa*, %struct.nfa** %3, align 8
  %369 = getelementptr inbounds %struct.nfa, %struct.nfa* %368, i32 0, i32 1
  %370 = load %struct.state*, %struct.state** %369, align 8
  store %struct.state* %370, %struct.state** %5, align 8
  br label %371

371:                                              ; preds = %397, %367
  %372 = load %struct.state*, %struct.state** %5, align 8
  %373 = icmp ne %struct.state* %372, null
  br i1 %373, label %374, label %399

374:                                              ; preds = %371
  %375 = load %struct.state*, %struct.state** %5, align 8
  %376 = getelementptr inbounds %struct.state, %struct.state* %375, i32 0, i32 4
  %377 = load %struct.state*, %struct.state** %376, align 8
  store %struct.state* %377, %struct.state** %7, align 8
  %378 = load %struct.state*, %struct.state** %5, align 8
  %379 = getelementptr inbounds %struct.state, %struct.state* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %374
  %383 = load %struct.state*, %struct.state** %5, align 8
  %384 = getelementptr inbounds %struct.state, %struct.state* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %396

387:                                              ; preds = %382, %374
  %388 = load %struct.state*, %struct.state** %5, align 8
  %389 = getelementptr inbounds %struct.state, %struct.state* %388, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %396, label %392

392:                                              ; preds = %387
  %393 = load %struct.nfa*, %struct.nfa** %3, align 8
  %394 = load %struct.state*, %struct.state** %5, align 8
  %395 = call i32 @dropstate(%struct.nfa* %393, %struct.state* %394)
  br label %396

396:                                              ; preds = %392, %387, %382
  br label %397

397:                                              ; preds = %396
  %398 = load %struct.state*, %struct.state** %7, align 8
  store %struct.state* %398, %struct.state** %5, align 8
  br label %371

399:                                              ; preds = %371
  %400 = load i32*, i32** %4, align 8
  %401 = icmp ne i32* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %399
  %403 = load %struct.nfa*, %struct.nfa** %3, align 8
  %404 = load i32*, i32** %4, align 8
  %405 = call i32 @dumpnfa(%struct.nfa* %403, i32* %404)
  br label %406

406:                                              ; preds = %158, %170, %207, %331, %402, %399
  ret void
}

declare dso_local i64 @NISERR(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @moveins(%struct.nfa*, %struct.state*, %struct.state*) #1

declare dso_local i32 @dropstate(%struct.nfa*, %struct.state*) #1

declare dso_local i32 @moveouts(%struct.nfa*, %struct.state*, %struct.state*) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @FREE(%struct.arc**) #1

declare dso_local i32 @hasnonemptyout(%struct.state*) #1

declare dso_local %struct.state* @emptyreachable(%struct.nfa*, %struct.state*, %struct.state*, %struct.arc**) #1

declare dso_local i32 @mergeins(%struct.nfa*, %struct.state*, %struct.arc**, i32) #1

declare dso_local i32 @freearc(%struct.nfa*, %struct.arc*) #1

declare dso_local i32 @dumpnfa(%struct.nfa*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
