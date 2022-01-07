; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_update_frameheadpos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_update_frameheadpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }

@FRAMEOPTION_START_UNBOUNDED_PRECEDING = common dso_local global i32 0, align 4
@FRAMEOPTION_START_CURRENT_ROW = common dso_local global i32 0, align 4
@FRAMEOPTION_ROWS = common dso_local global i32 0, align 4
@FRAMEOPTION_RANGE = common dso_local global i32 0, align 4
@FRAMEOPTION_GROUPS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected end of tuplestore\00", align 1
@FRAMEOPTION_START_OFFSET = common dso_local global i32 0, align 4
@FRAMEOPTION_START_OFFSET_PRECEDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @update_frameheadpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_frameheadpos(%struct.TYPE_12__* %0) #0 {
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
  br label %521

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
  %40 = load i32, i32* @FRAMEOPTION_START_UNBOUNDED_PRECEDING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %518

48:                                               ; preds = %30
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FRAMEOPTION_START_CURRENT_ROW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %163

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @FRAMEOPTION_ROWS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %162

66:                                               ; preds = %53
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @FRAMEOPTION_RANGE, align 4
  %69 = load i32, i32* @FRAMEOPTION_GROUPS, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %159

73:                                               ; preds = %66
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @MemoryContextSwitchTo(i32 %83)
  br label %521

85:                                               ; preds = %73
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @tuplestore_select_read_pointer(i32 %88, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %85
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @TupIsNull(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @tuplestore_gettupleslot(i32 %106, i32 1, i32 1, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* @ERROR, align 4
  %114 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115, %97, %85
  br label %117

117:                                              ; preds = %155, %116
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @TupIsNull(i32 %120)
  %122 = icmp ne i64 %121, 0
  %123 = xor i1 %122, true
  br i1 %123, label %124, label %156

124:                                              ; preds = %117
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @are_peers(%struct.TYPE_12__* %125, i32 %128, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %156

136:                                              ; preds = %124
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @spool_tuples(%struct.TYPE_12__* %141, i64 %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @tuplestore_gettupleslot(i32 %148, i32 1, i32 1, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %136
  br label %156

155:                                              ; preds = %136
  br label %117

156:                                              ; preds = %154, %135, %117
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  br label %161

159:                                              ; preds = %66
  %160 = call i32 @Assert(i32 0)
  br label %161

161:                                              ; preds = %159, %156
  br label %162

162:                                              ; preds = %161, %58
  br label %517

163:                                              ; preds = %48
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @FRAMEOPTION_START_OFFSET, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %514

168:                                              ; preds = %163
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @FRAMEOPTION_ROWS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %234

173:                                              ; preds = %168
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @DatumGetInt64(i32 %176)
  store i64 %177, i64* %6, align 8
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @FRAMEOPTION_START_OFFSET_PRECEDING, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load i64, i64* %6, align 8
  %184 = sub nsw i64 0, %183
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %182, %173
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %6, align 8
  %190 = add nsw i64 %188, %189
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %185
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  store i64 0, i64* %199, align 8
  br label %231

200:                                              ; preds = %185
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 1
  %208 = icmp sgt i64 %203, %207
  br i1 %208, label %209, label %230

209:                                              ; preds = %200
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %213, 1
  %215 = call i32 @spool_tuples(%struct.TYPE_12__* %210, i64 %214)
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %218, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %209
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %223, %209
  br label %230

230:                                              ; preds = %229, %200
  br label %231

231:                                              ; preds = %230, %197
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  store i32 1, i32* %233, align 4
  br label %513

234:                                              ; preds = %168
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @FRAMEOPTION_RANGE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %388

239:                                              ; preds = %234
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %7, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 1
  %249 = zext i1 %248 to i32
  %250 = call i32 @Assert(i32 %249)
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @FRAMEOPTION_START_OFFSET_PRECEDING, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %239
  store i32 1, i32* %8, align 4
  br label %257

256:                                              ; preds = %239
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %256, %255
  store i32 0, i32* %9, align 4
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 16
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  %266 = zext i1 %265 to i32
  store i32 %266, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %267

267:                                              ; preds = %262, %257
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 10
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @tuplestore_select_read_pointer(i32 %270, i32 %273)
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %298

279:                                              ; preds = %267
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 8
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @TupIsNull(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %279
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @tuplestore_gettupleslot(i32 %288, i32 1, i32 1, i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %285
  %295 = load i32, i32* @ERROR, align 4
  %296 = call i32 @elog(i32 %295, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %297

297:                                              ; preds = %294, %285
  br label %298

298:                                              ; preds = %297, %279, %267
  br label %299

299:                                              ; preds = %384, %298
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 8
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @TupIsNull(i32 %302)
  %304 = icmp ne i64 %303, 0
  %305 = xor i1 %304, true
  br i1 %305, label %306, label %385

306:                                              ; preds = %299
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %7, align 4
  %311 = call i32 @slot_getattr(i32 %309, i32 %310, i32* %12)
  store i32 %311, i32* %10, align 4
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 15
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @slot_getattr(i32 %315, i32 %316, i32* %13)
  store i32 %317, i32* %11, align 4
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %306
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %345

323:                                              ; preds = %320, %306
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 14
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %323
  %329 = load i32, i32* %12, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i32, i32* %13, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %331, %328
  br label %385

335:                                              ; preds = %331
  br label %344

336:                                              ; preds = %323
  %337 = load i32, i32* %12, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %336
  %340 = load i32, i32* %13, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %339, %336
  br label %385

343:                                              ; preds = %339
  br label %344

344:                                              ; preds = %343, %335
  br label %365

345:                                              ; preds = %320
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 13
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 12
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* %11, align 4
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 11
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = call i32 @BoolGetDatum(i32 %356)
  %358 = load i32, i32* %9, align 4
  %359 = call i32 @BoolGetDatum(i32 %358)
  %360 = call i32 @FunctionCall5Coll(i32* %347, i32 %350, i32 %351, i32 %352, i32 %355, i32 %357, i32 %359)
  %361 = call i64 @DatumGetBool(i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %345
  br label %385

364:                                              ; preds = %345
  br label %365

365:                                              ; preds = %364, %344
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, 1
  store i64 %369, i64* %367, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @spool_tuples(%struct.TYPE_12__* %370, i64 %373)
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 9
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 8
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @tuplestore_gettupleslot(i32 %377, i32 1, i32 1, i32 %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %365
  br label %385

384:                                              ; preds = %365
  br label %299

385:                                              ; preds = %383, %363, %342, %334, %299
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 1
  store i32 1, i32* %387, align 4
  br label %512

388:                                              ; preds = %234
  %389 = load i32, i32* %4, align 4
  %390 = load i32, i32* @FRAMEOPTION_GROUPS, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %509

393:                                              ; preds = %388
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 11
  %396 = load i32, i32* %395, align 8
  %397 = call i64 @DatumGetInt64(i32 %396)
  store i64 %397, i64* %14, align 8
  %398 = load i32, i32* %4, align 4
  %399 = load i32, i32* @FRAMEOPTION_START_OFFSET_PRECEDING, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %393
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 5
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* %14, align 8
  %407 = sub nsw i64 %405, %406
  store i64 %407, i64* %15, align 8
  br label %414

408:                                              ; preds = %393
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 5
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* %14, align 8
  %413 = add nsw i64 %411, %412
  store i64 %413, i64* %15, align 8
  br label %414

414:                                              ; preds = %408, %402
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 9
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 10
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @tuplestore_select_read_pointer(i32 %417, i32 %420)
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %445

426:                                              ; preds = %414
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 8
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @TupIsNull(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %445

432:                                              ; preds = %426
  %433 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 9
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 8
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @tuplestore_gettupleslot(i32 %435, i32 1, i32 1, i32 %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %432
  %442 = load i32, i32* @ERROR, align 4
  %443 = call i32 @elog(i32 %442, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %444

444:                                              ; preds = %441, %432
  br label %445

445:                                              ; preds = %444, %426, %414
  br label %446

446:                                              ; preds = %501, %445
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 8
  %449 = load i32, i32* %448, align 4
  %450 = call i64 @TupIsNull(i32 %449)
  %451 = icmp ne i64 %450, 0
  %452 = xor i1 %451, true
  br i1 %452, label %453, label %502

453:                                              ; preds = %446
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 6
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* %15, align 8
  %458 = icmp sge i64 %456, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %453
  br label %502

460:                                              ; preds = %453
  %461 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 8
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @ExecCopySlot(i32 %463, i32 %466)
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = add nsw i64 %470, 1
  store i64 %471, i64* %469, align 8
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = call i32 @spool_tuples(%struct.TYPE_12__* %472, i64 %475)
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 9
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 8
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @tuplestore_gettupleslot(i32 %479, i32 1, i32 1, i32 %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %486, label %485

485:                                              ; preds = %460
  br label %502

486:                                              ; preds = %460
  %487 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 7
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 8
  %493 = load i32, i32* %492, align 4
  %494 = call i64 @are_peers(%struct.TYPE_12__* %487, i32 %490, i32 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %501, label %496

496:                                              ; preds = %486
  %497 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %498 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %497, i32 0, i32 6
  %499 = load i64, i64* %498, align 8
  %500 = add nsw i64 %499, 1
  store i64 %500, i64* %498, align 8
  br label %501

501:                                              ; preds = %496, %486
  br label %446

502:                                              ; preds = %485, %459, %446
  %503 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %503, i32 0, i32 7
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @ExecClearTuple(i32 %505)
  %507 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %507, i32 0, i32 1
  store i32 1, i32* %508, align 4
  br label %511

509:                                              ; preds = %388
  %510 = call i32 @Assert(i32 0)
  br label %511

511:                                              ; preds = %509, %502
  br label %512

512:                                              ; preds = %511, %385
  br label %513

513:                                              ; preds = %512, %231
  br label %516

514:                                              ; preds = %163
  %515 = call i32 @Assert(i32 0)
  br label %516

516:                                              ; preds = %514, %513
  br label %517

517:                                              ; preds = %516, %162
  br label %518

518:                                              ; preds = %517, %43
  %519 = load i32, i32* %5, align 4
  %520 = call i32 @MemoryContextSwitchTo(i32 %519)
  br label %521

521:                                              ; preds = %518, %78, %29
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @tuplestore_select_read_pointer(i32, i32) #1

declare dso_local i64 @TupIsNull(i32) #1

declare dso_local i32 @tuplestore_gettupleslot(i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @are_peers(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spool_tuples(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @DatumGetInt64(i32) #1

declare dso_local i32 @slot_getattr(i32, i32, i32*) #1

declare dso_local i64 @DatumGetBool(i32) #1

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
