; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slotfuncs.c_copy_replication_slot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slotfuncs.c_copy_replication_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i8*, i8*, i64 }
%struct.TYPE_7__ = type { i64, i64, i32, i8*, i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32, i8*, i8* }
%struct.TYPE_8__ = type { i64, i64, i8*, i8* }

@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"return type must be a row type\00", align 1
@ReplicationSlotControlLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i32 0, align 4
@ReplicationSlotCtl = common dso_local global %struct.TYPE_10__* null, align 8
@RS_TEMPORARY = common dso_local global i64 0, align 8
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"replication slot \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"cannot copy physical replication slot \22%s\22 as a logical replication slot\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"cannot copy logical replication slot \22%s\22 as a physical replication slot\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"cannot copy a replication slot that doesn't reserve WAL\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"could not copy replication slot \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"The source replication slot was modified incompatibly during the copy operation.\00", align 1
@MyReplicationSlot = common dso_local global %struct.TYPE_11__* null, align 8
@wal_segment_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @copy_replication_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_replication_slot(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %27 = call i32* @PG_GETARG_NAME(i32 0)
  store i32* %27, i32** %6, align 8
  %28 = call i32* @PG_GETARG_NAME(i32 1)
  store i32* %28, i32** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @get_call_result_type(i32 %29, i32* null, i32* %16)
  %31 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %2
  %37 = call i32 (...) @check_permissions()
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @CheckLogicalDecodingRequirements()
  br label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @CheckSlotRequirements()
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* @ReplicationSlotControlLock, align 4
  %46 = load i32, i32* @LW_SHARED, align 4
  %47 = call i32 @LWLockAcquire(i32 %45, i32 %46)
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %108, %44
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* @max_replication_slots, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ReplicationSlotCtl, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %19, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %52
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @NameStr(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @NameStr(i32 %70)
  %72 = call i64 @strcmp(i8* %68, i8* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %63
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @SpinLockAcquire(i32* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %79 = call i32 @SlotIsLogical(%struct.TYPE_9__* %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RS_TEMPORARY, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %74
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @NameStr(i32 %97)
  %99 = call i8* @pstrdup(i8* %98)
  br label %101

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100, %93
  %102 = phi i8* [ %99, %93 ], [ null, %100 ]
  store i8* %102, i8** %12, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = call i32 @SpinLockRelease(i32* %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %8, align 8
  br label %111

107:                                              ; preds = %63, %52
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %48

111:                                              ; preds = %101, %48
  %112 = load i32, i32* @ReplicationSlotControlLock, align 4
  %113 = call i32 @LWLockRelease(i32 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = icmp eq %struct.TYPE_9__* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %119 = call i32 @errcode(i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @NameStr(i32 %121)
  %123 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  %124 = call i32 @ereport(i32 %117, i32 %123)
  br label %125

125:                                              ; preds = %116, %111
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @NameStr(i32 %137)
  %139 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  br label %145

140:                                              ; preds = %129
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @NameStr(i32 %142)
  %144 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = phi i32 [ %139, %135 ], [ %144, %140 ]
  %147 = call i32 @ereport(i32 %130, i32 %146)
  br label %148

148:                                              ; preds = %145, %125
  %149 = load i64, i64* %9, align 8
  %150 = call i64 @XLogRecPtrIsInvalid(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @Assert(i32 %156)
  %158 = load i32, i32* @ERROR, align 4
  %159 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %160 = call i32 @errcode(i32 %159)
  %161 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %162 = call i32 @ereport(i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %152, %148
  %164 = call i32 (...) @PG_NARGS()
  %165 = icmp sge i32 %164, 3
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 @PG_GETARG_BOOL(i32 2)
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %166, %163
  %169 = call i32 (...) @PG_NARGS()
  %170 = icmp sge i32 %169, 4
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @Assert(i32 %172)
  %174 = call i32* @PG_GETARG_NAME(i32 3)
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @NameStr(i32 %175)
  store i8* %176, i8** %12, align 8
  br label %177

177:                                              ; preds = %171, %168
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @NameStr(i32 %182)
  %184 = load i8*, i8** %12, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @create_logical_replication_slot(i8* %183, i8* %184, i32 %185, i64 %186)
  br label %195

188:                                              ; preds = %177
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @NameStr(i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @create_physical_replication_slot(i8* %191, i32 1, i32 %192, i64 %193)
  br label %195

195:                                              ; preds = %188, %180
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = call i32 @SpinLockAcquire(i32* %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  store i8* %201, i8** %20, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  store i8* %204, i8** %21, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 4
  %208 = load i8*, i8** %207, align 8
  store i8* %208, i8** %22, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %23, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %24, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i8* @NameStr(i32 %220)
  %222 = call i8* @pstrdup(i8* %221)
  store i8* %222, i8** %26, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %224 = call i32 @SlotIsLogical(%struct.TYPE_9__* %223)
  store i32 %224, i32* %25, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = call i32 @SpinLockRelease(i32* %226)
  %228 = load i64, i64* %24, align 8
  %229 = load i64, i64* %9, align 8
  %230 = icmp slt i64 %228, %229
  br i1 %230, label %242, label %231

231:                                              ; preds = %195
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %25, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %242, label %235

235:                                              ; preds = %231
  %236 = load i8*, i8** %26, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @NameStr(i32 %238)
  %240 = call i64 @strcmp(i8* %236, i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %235, %231, %195
  %243 = load i32, i32* @ERROR, align 4
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @NameStr(i32 %245)
  %247 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %246)
  %248 = call i32 @errdetail(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  %249 = call i32 @ereport(i32 %243, i32 %248)
  br label %250

250:                                              ; preds = %242, %235
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = call i32 @SpinLockAcquire(i32* %252)
  %254 = load i8*, i8** %20, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** %21, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  %260 = load i8*, i8** %22, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 3
  store i8* %260, i8** %263, align 8
  %264 = load i8*, i8** %23, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  store i8* %264, i8** %267, align 8
  %268 = load i64, i64* %24, align 8
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 1
  store i64 %268, i64* %271, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  %274 = call i32 @SpinLockRelease(i32* %273)
  %275 = call i32 (...) @ReplicationSlotMarkDirty()
  %276 = call i32 @ReplicationSlotsComputeRequiredXmin(i32 0)
  %277 = call i32 (...) @ReplicationSlotsComputeRequiredLSN()
  %278 = call i32 (...) @ReplicationSlotSave()
  %279 = load i32, i32* %5, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %250
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %281
  %285 = call i32 (...) @ReplicationSlotPersist()
  br label %286

286:                                              ; preds = %284, %281, %250
  %287 = load i32*, i32** %7, align 8
  %288 = call i32 @NameGetDatum(i32* %287)
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %288, i32* %289, align 4
  %290 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %290, align 4
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i64 @XLogRecPtrIsInvalid(i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %286
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyReplicationSlot, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @LSNGetDatum(i64 %301)
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %302, i32* %303, align 4
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %304, align 4
  br label %307

305:                                              ; preds = %286
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 1, i32* %306, align 4
  br label %307

307:                                              ; preds = %305, %297
  %308 = load i32, i32* %16, align 4
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %311 = call i32 @heap_form_tuple(i32 %308, i32* %309, i32* %310)
  store i32 %311, i32* %17, align 4
  %312 = load i32, i32* %17, align 4
  %313 = call i32 @HeapTupleGetDatum(i32 %312)
  store i32 %313, i32* %15, align 4
  %314 = call i32 (...) @ReplicationSlotRelease()
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @PG_RETURN_DATUM(i32 %315)
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32* @PG_GETARG_NAME(i32) #1

declare dso_local i64 @get_call_result_type(i32, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @check_permissions(...) #1

declare dso_local i32 @CheckLogicalDecodingRequirements(...) #1

declare dso_local i32 @CheckSlotRequirements(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SlotIsLogical(%struct.TYPE_9__*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @XLogRecPtrIsInvalid(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_NARGS(...) #1

declare dso_local i32 @PG_GETARG_BOOL(i32) #1

declare dso_local i32 @create_logical_replication_slot(i8*, i8*, i32, i64) #1

declare dso_local i32 @create_physical_replication_slot(i8*, i32, i32, i64) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @ReplicationSlotMarkDirty(...) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredXmin(i32) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredLSN(...) #1

declare dso_local i32 @ReplicationSlotSave(...) #1

declare dso_local i32 @ReplicationSlotPersist(...) #1

declare dso_local i32 @NameGetDatum(i32*) #1

declare dso_local i32 @LSNGetDatum(i64) #1

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

declare dso_local i32 @ReplicationSlotRelease(...) #1

declare dso_local i32 @PG_RETURN_DATUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
