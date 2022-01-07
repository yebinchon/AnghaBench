; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_update_frametailpos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_update_frametailpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }

@FRAMEOPTION_END_UNBOUNDED_FOLLOWING = common dso_local global i32 0, align 4
@FRAMEOPTION_END_CURRENT_ROW = common dso_local global i32 0, align 4
@FRAMEOPTION_ROWS = common dso_local global i32 0, align 4
@FRAMEOPTION_RANGE = common dso_local global i32 0, align 4
@FRAMEOPTION_GROUPS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected end of tuplestore\00", align 1
@FRAMEOPTION_END_OFFSET = common dso_local global i32 0, align 4
@FRAMEOPTION_END_OFFSET_PRECEDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @update_frametailpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_frametailpos(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 15
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %3, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %537

30:                                               ; preds = %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 15
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MemoryContextSwitchTo(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FRAMEOPTION_END_UNBOUNDED_FOLLOWING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = call i32 @spool_tuples(%struct.TYPE_12__* %44, i32 -1)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %534

53:                                               ; preds = %30
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @FRAMEOPTION_END_CURRENT_ROW, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %182

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @FRAMEOPTION_ROWS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %181

72:                                               ; preds = %58
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @FRAMEOPTION_RANGE, align 4
  %75 = load i32, i32* @FRAMEOPTION_GROUPS, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %178

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = call i32 @spool_tuples(%struct.TYPE_12__* %85, i32 -1)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @MemoryContextSwitchTo(i32 %94)
  br label %537

96:                                               ; preds = %79
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @tuplestore_select_read_pointer(i32 %99, i32 %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %96
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @TupIsNull(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @tuplestore_gettupleslot(i32 %117, i32 1, i32 1, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* @ERROR, align 4
  %125 = call i32 @elog(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %114
  br label %127

127:                                              ; preds = %126, %108, %96
  br label %128

128:                                              ; preds = %174, %127
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @TupIsNull(i32 %131)
  %133 = icmp ne i64 %132, 0
  %134 = xor i1 %133, true
  br i1 %134, label %135, label %175

135:                                              ; preds = %128
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %135
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @are_peers(%struct.TYPE_12__* %144, i32 %147, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %143
  br label %175

155:                                              ; preds = %143, %135
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @spool_tuples(%struct.TYPE_12__* %160, i32 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @tuplestore_gettupleslot(i32 %167, i32 1, i32 1, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %155
  br label %175

174:                                              ; preds = %155
  br label %128

175:                                              ; preds = %173, %154, %128
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  br label %180

178:                                              ; preds = %72
  %179 = call i32 @Assert(i32 0)
  br label %180

180:                                              ; preds = %178, %175
  br label %181

181:                                              ; preds = %180, %63
  br label %533

182:                                              ; preds = %53
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @FRAMEOPTION_END_OFFSET, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %530

187:                                              ; preds = %182
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @FRAMEOPTION_ROWS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %256

192:                                              ; preds = %187
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @DatumGetInt64(i32 %195)
  store i64 %196, i64* %6, align 8
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @FRAMEOPTION_END_OFFSET_PRECEDING, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %192
  %202 = load i64, i64* %6, align 8
  %203 = sub nsw i64 0, %202
  store i64 %203, i64* %6, align 8
  br label %204

204:                                              ; preds = %201, %192
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %6, align 8
  %210 = add nsw i64 %208, %209
  %211 = add nsw i64 %210, 1
  %212 = trunc i64 %211 to i32
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %204
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  store i32 0, i32* %221, align 8
  br label %253

222:                                              ; preds = %204
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  %230 = icmp sgt i32 %225, %229
  br i1 %230, label %231, label %252

231:                                              ; preds = %222
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, 1
  %237 = call i32 @spool_tuples(%struct.TYPE_12__* %232, i32 %236)
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %240, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %231
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %245, %231
  br label %252

252:                                              ; preds = %251, %222
  br label %253

253:                                              ; preds = %252, %219
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  store i32 1, i32* %255, align 4
  br label %529

256:                                              ; preds = %187
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* @FRAMEOPTION_RANGE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %404

261:                                              ; preds = %256
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %7, align 4
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 1
  %271 = zext i1 %270 to i32
  %272 = call i32 @Assert(i32 %271)
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @FRAMEOPTION_END_OFFSET_PRECEDING, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %261
  store i32 1, i32* %8, align 4
  br label %279

278:                                              ; preds = %261
  store i32 0, i32* %8, align 4
  br label %279

279:                                              ; preds = %278, %277
  store i32 1, i32* %9, align 4
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 16
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %279
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  store i32 %288, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %289

289:                                              ; preds = %284, %279
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 10
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @tuplestore_select_read_pointer(i32 %292, i32 %295)
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %320

301:                                              ; preds = %289
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 4
  %305 = call i64 @TupIsNull(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %301
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 8
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @tuplestore_gettupleslot(i32 %310, i32 1, i32 1, i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %307
  %317 = load i32, i32* @ERROR, align 4
  %318 = call i32 @elog(i32 %317, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %319

319:                                              ; preds = %316, %307
  br label %320

320:                                              ; preds = %319, %301, %289
  br label %321

321:                                              ; preds = %400, %320
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @TupIsNull(i32 %324)
  %326 = icmp ne i64 %325, 0
  %327 = xor i1 %326, true
  br i1 %327, label %328, label %401

328:                                              ; preds = %321
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %7, align 4
  %333 = call i32 @slot_getattr(i32 %331, i32 %332, i32* %12)
  store i32 %333, i32* %10, align 4
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 15
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %7, align 4
  %339 = call i32 @slot_getattr(i32 %337, i32 %338, i32* %13)
  store i32 %339, i32* %11, align 4
  %340 = load i32, i32* %12, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %328
  %343 = load i32, i32* %13, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %361

345:                                              ; preds = %342, %328
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 14
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %345
  %351 = load i32, i32* %12, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %350
  br label %401

354:                                              ; preds = %350
  br label %360

355:                                              ; preds = %345
  %356 = load i32, i32* %13, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %355
  br label %401

359:                                              ; preds = %355
  br label %360

360:                                              ; preds = %359, %354
  br label %381

361:                                              ; preds = %342
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 13
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 12
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %10, align 4
  %368 = load i32, i32* %11, align 4
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 11
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = call i32 @BoolGetDatum(i32 %372)
  %374 = load i32, i32* %9, align 4
  %375 = call i32 @BoolGetDatum(i32 %374)
  %376 = call i32 @FunctionCall5Coll(i32* %363, i32 %366, i32 %367, i32 %368, i32 %371, i32 %373, i32 %375)
  %377 = call i32 @DatumGetBool(i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %361
  br label %401

380:                                              ; preds = %361
  br label %381

381:                                              ; preds = %380, %360
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %383, align 8
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @spool_tuples(%struct.TYPE_12__* %386, i32 %389)
  %391 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 9
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 8
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @tuplestore_gettupleslot(i32 %393, i32 1, i32 1, i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %381
  br label %401

400:                                              ; preds = %381
  br label %321

401:                                              ; preds = %399, %379, %358, %353, %321
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 1
  store i32 1, i32* %403, align 4
  br label %528

404:                                              ; preds = %256
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* @FRAMEOPTION_GROUPS, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %525

409:                                              ; preds = %404
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 11
  %412 = load i32, i32* %411, align 8
  %413 = call i64 @DatumGetInt64(i32 %412)
  store i64 %413, i64* %14, align 8
  %414 = load i32, i32* %4, align 4
  %415 = load i32, i32* @FRAMEOPTION_END_OFFSET_PRECEDING, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %409
  %419 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 5
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* %14, align 8
  %423 = sub nsw i64 %421, %422
  store i64 %423, i64* %15, align 8
  br label %430

424:                                              ; preds = %409
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 5
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* %14, align 8
  %429 = add nsw i64 %427, %428
  store i64 %429, i64* %15, align 8
  br label %430

430:                                              ; preds = %424, %418
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 9
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 10
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @tuplestore_select_read_pointer(i32 %433, i32 %436)
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %461

442:                                              ; preds = %430
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 8
  %445 = load i32, i32* %444, align 4
  %446 = call i64 @TupIsNull(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %461

448:                                              ; preds = %442
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 9
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %452, i32 0, i32 8
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @tuplestore_gettupleslot(i32 %451, i32 1, i32 1, i32 %454)
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %448
  %458 = load i32, i32* @ERROR, align 4
  %459 = call i32 @elog(i32 %458, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %460

460:                                              ; preds = %457, %448
  br label %461

461:                                              ; preds = %460, %442, %430
  br label %462

462:                                              ; preds = %517, %461
  %463 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 8
  %465 = load i32, i32* %464, align 4
  %466 = call i64 @TupIsNull(i32 %465)
  %467 = icmp ne i64 %466, 0
  %468 = xor i1 %467, true
  br i1 %468, label %469, label %518

469:                                              ; preds = %462
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 6
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* %15, align 8
  %474 = icmp sgt i64 %472, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %469
  br label %518

476:                                              ; preds = %469
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 7
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 8
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @ExecCopySlot(i32 %479, i32 %482)
  %484 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 8
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %485, align 8
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @spool_tuples(%struct.TYPE_12__* %488, i32 %491)
  %493 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %494 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %493, i32 0, i32 9
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %496, i32 0, i32 8
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @tuplestore_gettupleslot(i32 %495, i32 1, i32 1, i32 %498)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %502, label %501

501:                                              ; preds = %476
  br label %518

502:                                              ; preds = %476
  %503 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i32 0, i32 7
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %507, i32 0, i32 8
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @are_peers(%struct.TYPE_12__* %503, i32 %506, i32 %509)
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %502
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 6
  %515 = load i64, i64* %514, align 8
  %516 = add nsw i64 %515, 1
  store i64 %516, i64* %514, align 8
  br label %517

517:                                              ; preds = %512, %502
  br label %462

518:                                              ; preds = %501, %475, %462
  %519 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 7
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @ExecClearTuple(i32 %521)
  %523 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 1
  store i32 1, i32* %524, align 4
  br label %527

525:                                              ; preds = %404
  %526 = call i32 @Assert(i32 0)
  br label %527

527:                                              ; preds = %525, %518
  br label %528

528:                                              ; preds = %527, %401
  br label %529

529:                                              ; preds = %528, %253
  br label %532

530:                                              ; preds = %182
  %531 = call i32 @Assert(i32 0)
  br label %532

532:                                              ; preds = %530, %529
  br label %533

533:                                              ; preds = %532, %181
  br label %534

534:                                              ; preds = %533, %43
  %535 = load i32, i32* %5, align 4
  %536 = call i32 @MemoryContextSwitchTo(i32 %535)
  br label %537

537:                                              ; preds = %534, %84, %29
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @spool_tuples(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @tuplestore_select_read_pointer(i32, i32) #1

declare dso_local i64 @TupIsNull(i32) #1

declare dso_local i32 @tuplestore_gettupleslot(i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @are_peers(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @DatumGetInt64(i32) #1

declare dso_local i32 @slot_getattr(i32, i32, i32*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall5Coll(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BoolGetDatum(i32) #1

declare dso_local i32 @ExecCopySlot(i32, i32) #1

declare dso_local i32 @ExecClearTuple(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
