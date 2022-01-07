; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAttachPartition.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAttachPartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i32, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64, i64, i32, i64 }
%struct.TYPE_44__ = type { %struct.TYPE_40__*, i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_45__ = type { i64, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@ATT_TABLE = common dso_local global i32 0, align 4
@ATT_FOREIGN_TABLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\22%s\22 is already a partition\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot attach a typed table as partition\00", align 1
@InheritsRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsRelidSeqnoIndexId = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot attach inheritance child as partition\00", align 1
@Anum_pg_inherits_inhparent = common dso_local global i32 0, align 4
@InheritsParentIndexId = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"cannot attach inheritance parent as partition\00", align 1
@ERRCODE_DUPLICATE_TABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"circular inheritance not allowed\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\22%s\22 is already a child of \22%s\22.\00", align 1
@RELPERSISTENCE_TEMP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [75 x i8] c"cannot attach a temporary relation as partition of permanent relation \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"cannot attach a permanent relation as partition of temporary relation \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"cannot attach as partition of temporary relation of another session\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"cannot attach temporary relation of another session as partition\00", align 1
@ATTNAME = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"table \22%s\22 contains column \22%s\22 not found in parent \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"The new partition may contain only the columns present in parent.\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [59 x i8] c"trigger \22%s\22 prevents table \22%s\22 from becoming a partition\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"ROW triggers with transition tables are not supported on partitions\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"unexpected whole-row reference found in partition key\00", align 1
@NoLock = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_43__*, %struct.TYPE_44__*)* @ATExecAttachPartition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecAttachPartition(i32** %0, %struct.TYPE_43__* %1, %struct.TYPE_44__* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca %struct.TYPE_43__*, align 8
  %8 = alloca %struct.TYPE_43__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_45__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_43__*, align 8
  %24 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %5, align 8
  store %struct.TYPE_44__* %2, %struct.TYPE_44__** %6, align 8
  %25 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %26 = call i32 @RelationGetPartitionDesc(%struct.TYPE_43__* %25)
  %27 = call i32 @get_default_oid_from_partdesc(i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = call i64 @OidIsValid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @AccessExclusiveLock, align 4
  %34 = call i32 @LockRelationOid(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AccessExclusiveLock, align 4
  %40 = call %struct.TYPE_43__* @table_openrv(i32 %38, i32 %39)
  store %struct.TYPE_43__* %40, %struct.TYPE_43__** %7, align 8
  %41 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %42 = load i32, i32* @ATT_TABLE, align 4
  %43 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ATSimplePermissions(%struct.TYPE_43__* %41, i32 %44)
  %46 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_41__*, %struct.TYPE_41__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %35
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %57 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %56)
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 @ereport(i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %52, %35
  %61 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_41__*, %struct.TYPE_41__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @OidIsValid(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %60
  %75 = load i32, i32* @InheritsRelationId, align 4
  %76 = load i32, i32* @AccessShareLock, align 4
  %77 = call %struct.TYPE_43__* @table_open(i32 %75, i32 %76)
  store %struct.TYPE_43__* %77, %struct.TYPE_43__** %8, align 8
  %78 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %79 = load i32, i32* @BTEqualStrategyNumber, align 4
  %80 = load i32, i32* @F_OIDEQ, align 4
  %81 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %82 = call i32 @RelationGetRelid(%struct.TYPE_43__* %81)
  %83 = call i32 @ObjectIdGetDatum(i32 %82)
  %84 = call i32 @ScanKeyInit(i32* %12, i32 %78, i32 %79, i32 %80, i32 %83)
  %85 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %86 = load i32, i32* @InheritsRelidSeqnoIndexId, align 4
  %87 = call i32 @systable_beginscan(%struct.TYPE_43__* %85, i32 %86, i32 1, i32* null, i32 1, i32* %12)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @systable_getnext(i32 %88)
  %90 = call i64 @HeapTupleIsValid(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %74
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 @ereport(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %74
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @systable_endscan(i32 %99)
  %101 = load i32, i32* @Anum_pg_inherits_inhparent, align 4
  %102 = load i32, i32* @BTEqualStrategyNumber, align 4
  %103 = load i32, i32* @F_OIDEQ, align 4
  %104 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %105 = call i32 @RelationGetRelid(%struct.TYPE_43__* %104)
  %106 = call i32 @ObjectIdGetDatum(i32 %105)
  %107 = call i32 @ScanKeyInit(i32* %12, i32 %101, i32 %102, i32 %103, i32 %106)
  %108 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %109 = load i32, i32* @InheritsParentIndexId, align 4
  %110 = call i32 @systable_beginscan(%struct.TYPE_43__* %108, i32 %109, i32 1, i32* null, i32 1, i32* %12)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @systable_getnext(i32 %111)
  %113 = call i64 @HeapTupleIsValid(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %98
  %116 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @RELKIND_RELATION, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %126 = call i32 @errcode(i32 %125)
  %127 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %128 = call i32 @ereport(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %115, %98
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @systable_endscan(i32 %130)
  %132 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %133 = load i32, i32* @AccessShareLock, align 4
  %134 = call i32 @table_close(%struct.TYPE_43__* %132, i32 %133)
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %136 = call i32 @RelationGetRelid(%struct.TYPE_43__* %135)
  %137 = load i32, i32* @AccessExclusiveLock, align 4
  %138 = call i32* @find_all_inheritors(i32 %136, i32 %137, i32* null)
  store i32* %138, i32** %9, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %141 = call i32 @RelationGetRelid(%struct.TYPE_43__* %140)
  %142 = call i64 @list_member_oid(i32* %139, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %129
  %145 = load i32, i32* @ERROR, align 4
  %146 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %147 = call i32 @errcode(i32 %146)
  %148 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %150 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %149)
  %151 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %152 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %151)
  %153 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %152)
  %154 = call i32 @ereport(i32 %145, i32 %153)
  br label %155

155:                                              ; preds = %144, %129
  %156 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_41__*, %struct.TYPE_41__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %155
  %164 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_41__*, %struct.TYPE_41__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %163
  %172 = load i32, i32* @ERROR, align 4
  %173 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %174 = call i32 @errcode(i32 %173)
  %175 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %176 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %175)
  %177 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  %178 = call i32 @ereport(i32 %172, i32 %177)
  br label %179

179:                                              ; preds = %171, %163, %155
  %180 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_41__*, %struct.TYPE_41__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %203

187:                                              ; preds = %179
  %188 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_41__*, %struct.TYPE_41__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %187
  %196 = load i32, i32* @ERROR, align 4
  %197 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %198 = call i32 @errcode(i32 %197)
  %199 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %200 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %199)
  %201 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  %202 = call i32 @ereport(i32 %196, i32 %201)
  br label %203

203:                                              ; preds = %195, %187, %179
  %204 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_41__*, %struct.TYPE_41__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %203
  %212 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* @ERROR, align 4
  %218 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %219 = call i32 @errcode(i32 %218)
  %220 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0))
  %221 = call i32 @ereport(i32 %217, i32 %220)
  br label %222

222:                                              ; preds = %216, %211, %203
  %223 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_41__*, %struct.TYPE_41__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %222
  %231 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %230
  %236 = load i32, i32* @ERROR, align 4
  %237 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %238 = call i32 @errcode(i32 %237)
  %239 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  %240 = call i32 @ereport(i32 %236, i32 %239)
  br label %241

241:                                              ; preds = %235, %230, %222
  %242 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %243 = call %struct.TYPE_42__* @RelationGetDescr(%struct.TYPE_43__* %242)
  store %struct.TYPE_42__* %243, %struct.TYPE_42__** %15, align 8
  %244 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %247

247:                                              ; preds = %287, %241
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp sle i32 %248, %249
  br i1 %250, label %251, label %290

251:                                              ; preds = %247
  %252 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sub nsw i32 %253, 1
  %255 = call %struct.TYPE_45__* @TupleDescAttr(%struct.TYPE_42__* %252, i32 %254)
  store %struct.TYPE_45__* %255, %struct.TYPE_45__** %21, align 8
  %256 = load %struct.TYPE_45__*, %struct.TYPE_45__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i8* @NameStr(i32 %258)
  store i8* %259, i8** %22, align 8
  %260 = load %struct.TYPE_45__*, %struct.TYPE_45__** %21, align 8
  %261 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %251
  br label %287

265:                                              ; preds = %251
  %266 = load i32, i32* @ATTNAME, align 4
  %267 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %268 = call i32 @RelationGetRelid(%struct.TYPE_43__* %267)
  %269 = call i32 @ObjectIdGetDatum(i32 %268)
  %270 = load i8*, i8** %22, align 8
  %271 = call i32 @CStringGetDatum(i8* %270)
  %272 = call i32 @SearchSysCacheExists2(i32 %266, i32 %269, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %265
  %275 = load i32, i32* @ERROR, align 4
  %276 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %277 = call i32 @errcode(i32 %276)
  %278 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %279 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %278)
  %280 = load i8*, i8** %22, align 8
  %281 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %282 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %281)
  %283 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %279, i8* %280, i32 %282)
  %284 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %285 = call i32 @ereport(i32 %275, i32 %284)
  br label %286

286:                                              ; preds = %274, %265
  br label %287

287:                                              ; preds = %286, %264
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %13, align 4
  br label %247

290:                                              ; preds = %247
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i8* @FindTriggerIncompatibleWithInheritance(i32 %293)
  store i8* %294, i8** %17, align 8
  %295 = load i8*, i8** %17, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %307

297:                                              ; preds = %290
  %298 = load i32, i32* @ERROR, align 4
  %299 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %300 = call i32 @errcode(i32 %299)
  %301 = load i8*, i8** %17, align 8
  %302 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %303 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %302)
  %304 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i8* %301, i32 %303)
  %305 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0))
  %306 = call i32 @ereport(i32 %298, i32 %305)
  br label %307

307:                                              ; preds = %297, %290
  %308 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %309 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %308)
  %310 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %311 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_40__*, %struct.TYPE_40__** %312, align 8
  %314 = call i32 @check_new_partition_bound(i32 %309, %struct.TYPE_43__* %310, %struct.TYPE_40__* %313)
  %315 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %316 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %317 = call i32 @CreateInheritance(%struct.TYPE_43__* %315, %struct.TYPE_43__* %316)
  %318 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %319 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %320 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_40__*, %struct.TYPE_40__** %321, align 8
  %323 = call i32 @StorePartitionBound(%struct.TYPE_43__* %318, %struct.TYPE_43__* %319, %struct.TYPE_40__* %322)
  %324 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %325 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %326 = call i32 @AttachPartitionEnsureIndexes(%struct.TYPE_43__* %324, %struct.TYPE_43__* %325)
  %327 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %328 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %329 = call i32 @CloneRowTriggersToPartition(%struct.TYPE_43__* %327, %struct.TYPE_43__* %328)
  %330 = load i32**, i32*** %4, align 8
  %331 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %332 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %333 = call i32 @CloneForeignKeyConstraints(i32** %330, %struct.TYPE_43__* %331, %struct.TYPE_43__* %332)
  %334 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %335 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %336 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_40__*, %struct.TYPE_40__** %337, align 8
  %339 = call i32* @get_qual_from_partbound(%struct.TYPE_43__* %334, %struct.TYPE_43__* %335, %struct.TYPE_40__* %338)
  store i32* %339, i32** %20, align 8
  %340 = load i32*, i32** %20, align 8
  %341 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %342 = call i32 @RelationGetPartitionQual(%struct.TYPE_43__* %341)
  %343 = call i32* @list_concat(i32* %340, i32 %342)
  store i32* %343, i32** %10, align 8
  %344 = load i32*, i32** %10, align 8
  %345 = icmp ne i32* %344, null
  br i1 %345, label %346, label %367

346:                                              ; preds = %307
  %347 = load i32*, i32** %10, align 8
  %348 = call i64 @eval_const_expressions(i32* null, i32* %347)
  %349 = inttoptr i64 %348 to i32*
  store i32* %349, i32** %10, align 8
  %350 = load i32*, i32** %10, align 8
  %351 = call i32 @make_ands_explicit(i32* %350)
  %352 = call i32* @list_make1(i32 %351)
  store i32* %352, i32** %10, align 8
  %353 = load i32*, i32** %10, align 8
  %354 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %355 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %356 = call i32* @map_partition_varattnos(i32* %353, i32 1, %struct.TYPE_43__* %354, %struct.TYPE_43__* %355, i32* %18)
  store i32* %356, i32** %10, align 8
  %357 = load i32, i32* %18, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %346
  %360 = load i32, i32* @ERROR, align 4
  %361 = call i32 @elog(i32 %360, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  br label %362

362:                                              ; preds = %359, %346
  %363 = load i32**, i32*** %4, align 8
  %364 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %365 = load i32*, i32** %10, align 8
  %366 = call i32 @QueuePartitionConstraintValidation(i32** %363, %struct.TYPE_43__* %364, i32* %365, i32 0)
  br label %367

367:                                              ; preds = %362, %307
  %368 = load i32, i32* %19, align 4
  %369 = call i64 @OidIsValid(i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %397

371:                                              ; preds = %367
  %372 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_40__*, %struct.TYPE_40__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  %378 = xor i1 %377, true
  %379 = zext i1 %378 to i32
  %380 = call i32 @Assert(i32 %379)
  %381 = load i32, i32* %19, align 4
  %382 = load i32, i32* @NoLock, align 4
  %383 = call %struct.TYPE_43__* @table_open(i32 %381, i32 %382)
  store %struct.TYPE_43__* %383, %struct.TYPE_43__** %23, align 8
  %384 = load i32*, i32** %20, align 8
  %385 = call i32* @get_proposed_default_constraint(i32* %384)
  store i32* %385, i32** %24, align 8
  %386 = load i32*, i32** %24, align 8
  %387 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %388 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %389 = call i32* @map_partition_varattnos(i32* %386, i32 1, %struct.TYPE_43__* %387, %struct.TYPE_43__* %388, i32* null)
  store i32* %389, i32** %24, align 8
  %390 = load i32**, i32*** %4, align 8
  %391 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %392 = load i32*, i32** %24, align 8
  %393 = call i32 @QueuePartitionConstraintValidation(i32** %390, %struct.TYPE_43__* %391, i32* %392, i32 1)
  %394 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %395 = load i32, i32* @NoLock, align 4
  %396 = call i32 @table_close(%struct.TYPE_43__* %394, i32 %395)
  br label %397

397:                                              ; preds = %371, %367
  %398 = load i32, i32* %16, align 4
  %399 = load i32, i32* @RelationRelationId, align 4
  %400 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %401 = call i32 @RelationGetRelid(%struct.TYPE_43__* %400)
  %402 = call i32 @ObjectAddressSet(i32 %398, i32 %399, i32 %401)
  %403 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %404 = load i32, i32* @NoLock, align 4
  %405 = call i32 @table_close(%struct.TYPE_43__* %403, i32 %404)
  %406 = load i32, i32* %16, align 4
  ret i32 %406
}

declare dso_local i32 @get_default_oid_from_partdesc(i32) #1

declare dso_local i32 @RelationGetPartitionDesc(%struct.TYPE_43__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local %struct.TYPE_43__* @table_openrv(i32, i32) #1

declare dso_local i32 @ATSimplePermissions(%struct.TYPE_43__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_43__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_43__*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_43__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_43__*, i32) #1

declare dso_local i32* @find_all_inheritors(i32, i32, i32*) #1

declare dso_local i64 @list_member_oid(i32*, i32) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local %struct.TYPE_42__* @RelationGetDescr(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_45__* @TupleDescAttr(%struct.TYPE_42__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @SearchSysCacheExists2(i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i8* @FindTriggerIncompatibleWithInheritance(i32) #1

declare dso_local i32 @check_new_partition_bound(i32, %struct.TYPE_43__*, %struct.TYPE_40__*) #1

declare dso_local i32 @CreateInheritance(%struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32 @StorePartitionBound(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_40__*) #1

declare dso_local i32 @AttachPartitionEnsureIndexes(%struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32 @CloneRowTriggersToPartition(%struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32 @CloneForeignKeyConstraints(i32**, %struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i32* @get_qual_from_partbound(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_40__*) #1

declare dso_local i32* @list_concat(i32*, i32) #1

declare dso_local i32 @RelationGetPartitionQual(%struct.TYPE_43__*) #1

declare dso_local i64 @eval_const_expressions(i32*, i32*) #1

declare dso_local i32* @list_make1(i32) #1

declare dso_local i32 @make_ands_explicit(i32*) #1

declare dso_local i32* @map_partition_varattnos(i32*, i32, %struct.TYPE_43__*, %struct.TYPE_43__*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @QueuePartitionConstraintValidation(i32**, %struct.TYPE_43__*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @get_proposed_default_constraint(i32*) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
