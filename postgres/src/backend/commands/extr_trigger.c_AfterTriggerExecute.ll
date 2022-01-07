; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerExecute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerExecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_19__ = type { i32, i32*, i32*, i32*, i32*, i32, i32, i32*, %struct.TYPE_16__*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not find trigger %u\00", align 1
@AFTER_TRIGGER_TUP_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to fetch tuple1 for AFTER trigger\00", align 1
@TRIGGER_EVENT_OPMASK = common dso_local global i32 0, align 4
@TRIGGER_EVENT_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to fetch tuple2 for AFTER trigger\00", align 1
@SnapshotAny = common dso_local global i32 0, align 4
@AFTER_TRIGGER_2CTID = common dso_local global i32 0, align 4
@T_TriggerData = common dso_local global i32 0, align 4
@TRIGGER_EVENT_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_18__*, i32*, i32*, i32, i32*, i32*)* @AfterTriggerExecute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AfterTriggerExecute(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2, %struct.TYPE_18__* %3, i32* %4, i32* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_19__, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %19, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %32 = call %struct.TYPE_21__* @GetTriggerSharedData(%struct.TYPE_22__* %31)
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %20, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %21, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i32* null, i32** %38, align 8
  store i32 0, i32* %24, align 4
  br label %39

39:                                               ; preds = %65, %9
  %40 = load i32, i32* %24, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = load i32, i32* %24, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %21, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load i32, i32* %24, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 8
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %63, align 8
  br label %68

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %24, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %24, align 4
  br label %39

68:                                               ; preds = %56, %39
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = icmp eq %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i64, i64* %21, align 8
  %75 = call i32 (i32, i8*, ...) @elog(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @InstrStartNode(i32* %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AFTER_TRIGGER_TUP_BITS, align 4
  %90 = and i32 %88, %89
  switch i32 %90, label %139 [
    i32 129, label %91
    i32 128, label %117
  ]

91:                                               ; preds = %85
  %92 = call i32* (...) @GetCurrentFDWTuplestore()
  store i32* %92, i32** %27, align 8
  %93 = load i32*, i32** %27, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @tuplestore_gettupleslot(i32* %93, i32 1, i32 0, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @elog(i32 %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %91
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TRIGGER_EVENT_OPMASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @TRIGGER_EVENT_UPDATE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load i32*, i32** %27, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 @tuplestore_gettupleslot(i32* %109, i32 1, i32 0, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @ERROR, align 4
  %115 = call i32 (i32, i8*, ...) @elog(i32 %114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108, %100
  br label %117

117:                                              ; preds = %85, %116
  %118 = load i32*, i32** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  store i32* %118, i32** %119, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = call i32* @ExecFetchSlotHeapTuple(i32* %120, i32 1, i32* %25)
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  store i32* %121, i32** %122, align 8
  %123 = load i32*, i32** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i32* %123, i32** %124, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TRIGGER_EVENT_OPMASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @TRIGGER_EVENT_UPDATE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %117
  %133 = load i32*, i32** %18, align 8
  %134 = call i32* @ExecFetchSlotHeapTuple(i32* %133, i32 1, i32* %26)
  br label %136

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i32* [ %134, %132 ], [ null, %135 ]
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  store i32* %137, i32** %138, align 8
  br label %204

139:                                              ; preds = %85
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 2
  %142 = call i32 @ItemPointerIsValid(i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load i32*, i32** %10, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %147 = call i32* @ExecGetTriggerOldSlot(i32* %145, %struct.TYPE_20__* %146)
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  store i32* %147, i32** %148, align 8
  %149 = load i32, i32* %19, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i32, i32* @SnapshotAny, align 4
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @table_tuple_fetch_row_version(i32 %149, i32* %151, i32 %152, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %144
  %158 = load i32, i32* @ERROR, align 4
  %159 = call i32 (i32, i8*, ...) @elog(i32 %158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %144
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = call i32* @ExecFetchSlotHeapTuple(i32* %162, i32 0, i32* %25)
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  store i32* %163, i32** %164, align 8
  br label %167

165:                                              ; preds = %139
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %165, %160
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @AFTER_TRIGGER_TUP_BITS, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @AFTER_TRIGGER_2CTID, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %201

175:                                              ; preds = %167
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = call i32 @ItemPointerIsValid(i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %175
  %181 = load i32*, i32** %10, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %183 = call i32* @ExecGetTriggerNewSlot(i32* %181, %struct.TYPE_20__* %182)
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i32* %183, i32** %184, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = load i32, i32* @SnapshotAny, align 4
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @table_tuple_fetch_row_version(i32 %185, i32* %187, i32 %188, i32* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %180
  %194 = load i32, i32* @ERROR, align 4
  %195 = call i32 (i32, i8*, ...) @elog(i32 %194, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %180
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i32* @ExecFetchSlotHeapTuple(i32* %198, i32 0, i32* %26)
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  store i32* %199, i32** %200, align 8
  br label %203

201:                                              ; preds = %175, %167
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  store i32* null, i32** %202, align 8
  br label %203

203:                                              ; preds = %201, %196
  br label %204

204:                                              ; preds = %203, %136
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 7
  store i32* null, i32** %205, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 9
  store i32 0, i32* %206, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = icmp ne %struct.TYPE_17__* %209, null
  br i1 %210, label %211, label %246

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 9
  store i32 %222, i32* %223, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  br label %228

228:                                              ; preds = %217, %211
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %228
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 7
  store i32* %239, i32** %240, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  store i32 1, i32* %244, align 8
  br label %245

245:                                              ; preds = %234, %228
  br label %246

246:                                              ; preds = %245, %204
  %247 = load i32, i32* @T_TriggerData, align 4
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 6
  store i32 %247, i32* %248, align 4
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @TRIGGER_EVENT_OPMASK, align 4
  %253 = load i32, i32* @TRIGGER_EVENT_ROW, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %251, %254
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i32 %255, i32* %256, align 8
  %257 = load i32, i32* %19, align 4
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 5
  store i32 %257, i32* %258, align 8
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @MemoryContextReset(i32 %259)
  %261 = load i32, i32* %24, align 4
  %262 = load i32*, i32** %14, align 8
  %263 = load i32, i32* %16, align 4
  %264 = call i32* @ExecCallTriggerFunc(%struct.TYPE_19__* %22, i32 %261, i32* %262, i32* null, i32 %263)
  store i32* %264, i32** %23, align 8
  %265 = load i32*, i32** %23, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %280

267:                                              ; preds = %246
  %268 = load i32*, i32** %23, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %268, %270
  br i1 %271, label %272, label %280

272:                                              ; preds = %267
  %273 = load i32*, i32** %23, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %273, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load i32*, i32** %23, align 8
  %279 = call i32 @heap_freetuple(i32* %278)
  br label %280

280:                                              ; preds = %277, %272, %267, %246
  %281 = load i32, i32* %25, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @heap_freetuple(i32* %285)
  br label %287

287:                                              ; preds = %283, %280
  %288 = load i32, i32* %26, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @heap_freetuple(i32* %292)
  br label %294

294:                                              ; preds = %290, %287
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @ExecClearTuple(i32* %300)
  br label %302

302:                                              ; preds = %298, %294
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = call i32 @ExecClearTuple(i32* %308)
  br label %310

310:                                              ; preds = %306, %302
  %311 = load i32*, i32** %15, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load i32*, i32** %15, align 8
  %315 = load i32, i32* %24, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = call i32 @InstrStopNode(i32* %317, i32 1)
  br label %319

319:                                              ; preds = %313, %310
  ret void
}

declare dso_local %struct.TYPE_21__* @GetTriggerSharedData(%struct.TYPE_22__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @InstrStartNode(i32*) #1

declare dso_local i32* @GetCurrentFDWTuplestore(...) #1

declare dso_local i32 @tuplestore_gettupleslot(i32*, i32, i32, i32*) #1

declare dso_local i32* @ExecFetchSlotHeapTuple(i32*, i32, i32*) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32* @ExecGetTriggerOldSlot(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @table_tuple_fetch_row_version(i32, i32*, i32, i32*) #1

declare dso_local i32* @ExecGetTriggerNewSlot(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32* @ExecCallTriggerFunc(%struct.TYPE_19__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @heap_freetuple(i32*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i32 @InstrStopNode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
