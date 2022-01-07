; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, i32*, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64 }

@VACOPT_FULL = common dso_local global i32 0, align 4
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@PROC_IN_VACUUM = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_15__* null, align 8
@PROC_VACUUM_FOR_WRAPAROUND = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@VACOPT_VACUUM = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"skipping \22%s\22 --- cannot vacuum non-tables or special system tables\00", align 1
@VACOPT_TERNARY_DEFAULT = common dso_local global i64 0, align 8
@VACOPT_TERNARY_ENABLED = common dso_local global i8* null, align 8
@VACOPT_TERNARY_DISABLED = common dso_local global i8* null, align 8
@VACOPT_SKIPTOAST = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@SECURITY_RESTRICTED_OPERATION = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@VACOPT_VERBOSE = common dso_local global i32 0, align 4
@CLUOPT_VERBOSE = common dso_local global i32 0, align 4
@vac_strategy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, %struct.TYPE_17__*)* @vacuum_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vacuum_rel(i64 %0, i32* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = call i32 (...) @StartTransactionCommand()
  %21 = call i32 (...) @GetTransactionSnapshot()
  %22 = call i32 @PushActiveSnapshot(i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VACOPT_FULL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ProcArrayLock, align 4
  %31 = load i32, i32* @LW_EXCLUSIVE, align 4
  %32 = call i32 @LWLockAcquire(i32 %30, i32 %31)
  %33 = load i32, i32* @PROC_IN_VACUUM, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MyPgXact, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load i32, i32* @PROC_VACUUM_FOR_WRAPAROUND, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MyPgXact, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %29
  %49 = load i32, i32* @ProcArrayLock, align 4
  %50 = call i32 @LWLockRelease(i32 %49)
  br label %51

51:                                               ; preds = %48, %3
  %52 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @VACOPT_FULL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @AccessExclusiveLock, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.TYPE_19__* @vacuum_open_relation(i64 %65, i32* %66, i32 %69, i32 %74, i32 %75)
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %9, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = icmp ne %struct.TYPE_19__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %63
  %80 = call i32 (...) @PopActiveSnapshot()
  %81 = call i32 (...) @CommitTransactionCommand()
  store i32 0, i32* %4, align 4
  br label %323

82:                                               ; preds = %63
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %84 = call i32 @RelationGetRelid(%struct.TYPE_19__* %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @VACOPT_VACUUM, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @vacuum_is_relation_owner(i32 %84, %struct.TYPE_20__* %87, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %82
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @relation_close(%struct.TYPE_19__* %96, i32 %97)
  %99 = call i32 (...) @PopActiveSnapshot()
  %100 = call i32 (...) @CommitTransactionCommand()
  store i32 0, i32* %4, align 4
  br label %323

101:                                              ; preds = %82
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RELKIND_RELATION, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %101
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RELKIND_MATVIEW, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %109
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %117
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %125
  %134 = load i32, i32* @WARNING, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %136 = call i32 @RelationGetRelationName(%struct.TYPE_19__* %135)
  %137 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = call i32 @ereport(i32 %134, i32 %137)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @relation_close(%struct.TYPE_19__* %139, i32 %140)
  %142 = call i32 (...) @PopActiveSnapshot()
  %143 = call i32 (...) @CommitTransactionCommand()
  store i32 0, i32* %4, align 4
  br label %323

144:                                              ; preds = %125, %117, %109, %101
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %146 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_19__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @relation_close(%struct.TYPE_19__* %149, i32 %150)
  %152 = call i32 (...) @PopActiveSnapshot()
  %153 = call i32 (...) @CommitTransactionCommand()
  store i32 0, i32* %4, align 4
  br label %323

154:                                              ; preds = %144
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @relation_close(%struct.TYPE_19__* %163, i32 %164)
  %166 = call i32 (...) @PopActiveSnapshot()
  %167 = call i32 (...) @CommitTransactionCommand()
  store i32 1, i32* %4, align 4
  br label %323

168:                                              ; preds = %154
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @LockRelationIdForSession(i32* %10, i32 %173)
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @VACOPT_TERNARY_DEFAULT, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %204

180:                                              ; preds = %168
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %193, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = bitcast i32* %188 to %struct.TYPE_18__*
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %185, %180
  %194 = load i8*, i8** @VACOPT_TERNARY_ENABLED, align 8
  %195 = ptrtoint i8* %194 to i64
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  br label %203

198:                                              ; preds = %185
  %199 = load i8*, i8** @VACOPT_TERNARY_DISABLED, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %198, %193
  br label %204

204:                                              ; preds = %203, %168
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @VACOPT_TERNARY_DEFAULT, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %234

210:                                              ; preds = %204
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %223, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = bitcast i32* %218 to %struct.TYPE_18__*
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %215, %210
  %224 = load i8*, i8** @VACOPT_TERNARY_ENABLED, align 8
  %225 = ptrtoint i8* %224 to i64
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 3
  store i64 %225, i64* %227, align 8
  br label %233

228:                                              ; preds = %215
  %229 = load i8*, i8** @VACOPT_TERNARY_DISABLED, align 8
  %230 = ptrtoint i8* %229 to i64
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 3
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %228, %223
  br label %234

234:                                              ; preds = %233, %204
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @VACOPT_SKIPTOAST, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %254, label %241

241:                                              ; preds = %234
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @VACOPT_FULL, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %241
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %11, align 8
  br label %256

254:                                              ; preds = %241, %234
  %255 = load i64, i64* @InvalidOid, align 8
  store i64 %255, i64* %11, align 8
  br label %256

256:                                              ; preds = %254, %248
  %257 = call i32 @GetUserIdAndSecContext(i64* %12, i32* %13)
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* @SECURITY_RESTRICTED_OPERATION, align 4
  %265 = or i32 %263, %264
  %266 = call i32 @SetUserIdAndSecContext(i64 %262, i32 %265)
  %267 = call i32 (...) @NewGUCNestLevel()
  store i32 %267, i32* %14, align 4
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @VACOPT_FULL, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %293

274:                                              ; preds = %256
  store i32 0, i32* %15, align 4
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %276 = load i32, i32* @NoLock, align 4
  %277 = call i32 @relation_close(%struct.TYPE_19__* %275, i32 %276)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @VACOPT_VERBOSE, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %274
  %285 = load i32, i32* @CLUOPT_VERBOSE, align 4
  %286 = load i32, i32* %15, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %15, align 4
  br label %288

288:                                              ; preds = %284, %274
  %289 = load i64, i64* %5, align 8
  %290 = load i64, i64* @InvalidOid, align 8
  %291 = load i32, i32* %15, align 4
  %292 = call i32 @cluster_rel(i64 %289, i64 %290, i32 %291)
  br label %298

293:                                              ; preds = %256
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %296 = load i32, i32* @vac_strategy, align 4
  %297 = call i32 @table_relation_vacuum(%struct.TYPE_19__* %294, %struct.TYPE_17__* %295, i32 %296)
  br label %298

298:                                              ; preds = %293, %288
  %299 = load i32, i32* %14, align 4
  %300 = call i32 @AtEOXact_GUC(i32 0, i32 %299)
  %301 = load i64, i64* %12, align 8
  %302 = load i32, i32* %13, align 4
  %303 = call i32 @SetUserIdAndSecContext(i64 %301, i32 %302)
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %305 = icmp ne %struct.TYPE_19__* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %298
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %308 = load i32, i32* @NoLock, align 4
  %309 = call i32 @relation_close(%struct.TYPE_19__* %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %298
  %311 = call i32 (...) @PopActiveSnapshot()
  %312 = call i32 (...) @CommitTransactionCommand()
  %313 = load i64, i64* %11, align 8
  %314 = load i64, i64* @InvalidOid, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load i64, i64* %11, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %319 = call i32 @vacuum_rel(i64 %317, i32* null, %struct.TYPE_17__* %318)
  br label %320

320:                                              ; preds = %316, %310
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @UnlockRelationIdForSession(i32* %10, i32 %321)
  store i32 1, i32* %4, align 4
  br label %323

323:                                              ; preds = %320, %162, %148, %133, %95, %79
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local %struct.TYPE_19__* @vacuum_open_relation(i64, i32*, i32, i32, i32) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @vacuum_is_relation_owner(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_19__*) #1

declare dso_local i32 @relation_close(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_19__*) #1

declare dso_local i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_19__*) #1

declare dso_local i32 @LockRelationIdForSession(i32*, i32) #1

declare dso_local i32 @GetUserIdAndSecContext(i64*, i32*) #1

declare dso_local i32 @SetUserIdAndSecContext(i64, i32) #1

declare dso_local i32 @NewGUCNestLevel(...) #1

declare dso_local i32 @cluster_rel(i64, i64, i32) #1

declare dso_local i32 @table_relation_vacuum(%struct.TYPE_19__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @AtEOXact_GUC(i32, i32) #1

declare dso_local i32 @UnlockRelationIdForSession(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
