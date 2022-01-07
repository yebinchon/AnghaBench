; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_db_role_setting.c_AlterSetting.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_db_role_setting.c_AlterSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }

@DbRoleSettingRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_db_role_setting_setdatabase = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_db_role_setting_setrole = common dso_local global i32 0, align 4
@DbRoleSettingDatidRolidIndexId = common dso_local global i32 0, align 4
@VAR_RESET_ALL = common dso_local global i64 0, align 8
@Anum_pg_db_role_setting_setconfig = common dso_local global i32 0, align 4
@Natts_pg_db_role_setting = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterSetting(i32 %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_14__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = call i8* @ExtractSetVariableArgs(%struct.TYPE_13__* %33)
  store i8* %34, i8** %7, align 8
  %35 = load i32, i32* @DbRoleSettingRelationId, align 4
  %36 = load i32, i32* @RowExclusiveLock, align 4
  %37 = call i32 @table_open(i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %39 = load i32, i32* @Anum_pg_db_role_setting_setdatabase, align 4
  %40 = load i32, i32* @BTEqualStrategyNumber, align 4
  %41 = load i32, i32* @F_OIDEQ, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ObjectIdGetDatum(i32 %42)
  %44 = call i32 @ScanKeyInit(i32* %38, i32 %39, i32 %40, i32 %41, i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %46 = load i32, i32* @Anum_pg_db_role_setting_setrole, align 4
  %47 = load i32, i32* @BTEqualStrategyNumber, align 4
  %48 = load i32, i32* @F_OIDEQ, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ObjectIdGetDatum(i32 %49)
  %51 = call i32 @ScanKeyInit(i32* %45, i32 %46, i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @DbRoleSettingDatidRolidIndexId, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %55 = call i32 @systable_beginscan(i32 %52, i32 %53, i32 1, i32* null, i32 2, i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.TYPE_14__* @systable_getnext(i32 %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %8, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VAR_RESET_ALL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %127

63:                                               ; preds = %3
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = call i64 @HeapTupleIsValid(%struct.TYPE_14__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %126

67:                                               ; preds = %63
  store i32* null, i32** %12, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @RelationGetDescr(i32 %70)
  %72 = call i32 @heap_getattr(%struct.TYPE_14__* %68, i32 %69, i32 %71, i32* %14)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  %77 = call i32* @DatumGetArrayTypeP(i32 %76)
  %78 = call i32* @GUCArrayReset(i32* %77)
  store i32* %78, i32** %12, align 8
  br label %79

79:                                               ; preds = %75, %67
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  %83 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %15, align 8
  %86 = alloca i32, i64 %84, align 16
  store i64 %84, i64* %16, align 8
  %87 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %88 = zext i32 %87 to i64
  %89 = alloca i32, i64 %88, align 16
  store i64 %88, i64* %17, align 8
  %90 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %91 = zext i32 %90 to i64
  %92 = alloca i32, i64 %91, align 16
  store i64 %91, i64* %18, align 8
  %93 = mul nuw i64 4, %91
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memset(i32* %92, i32 0, i32 %94)
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @PointerGetDatum(i32* %96)
  %98 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %86, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %92, i64 %104
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %89, i64 %108
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @RelationGetDescr(i32 %111)
  %113 = call %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__* %110, i32 %112, i32* %86, i32* %89, i32* %92)
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %19, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %118 = call i32 @CatalogTupleUpdate(i32 %114, i32* %116, %struct.TYPE_14__* %117)
  %119 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %119)
  br label %125

120:                                              ; preds = %79
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = call i32 @CatalogTupleDelete(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %120, %82
  br label %126

126:                                              ; preds = %125, %63
  br label %253

127:                                              ; preds = %3
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = call i64 @HeapTupleIsValid(%struct.TYPE_14__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %207

131:                                              ; preds = %127
  %132 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %133 = zext i32 %132 to i64
  %134 = call i8* @llvm.stacksave()
  store i8* %134, i8** %20, align 8
  %135 = alloca i32, i64 %133, align 16
  store i64 %133, i64* %21, align 8
  %136 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %137 = zext i32 %136 to i64
  %138 = alloca i32, i64 %137, align 16
  store i64 %137, i64* %22, align 8
  %139 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %140 = zext i32 %139 to i64
  %141 = alloca i32, i64 %140, align 16
  store i64 %140, i64* %23, align 8
  %142 = mul nuw i64 4, %140
  %143 = trunc i64 %142 to i32
  %144 = call i32 @memset(i32* %141, i32 0, i32 %143)
  %145 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %141, i64 %147
  store i32 1, i32* %148, align 4
  %149 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %138, i64 %151
  store i32 0, i32* %152, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @RelationGetDescr(i32 %155)
  %157 = call i32 @heap_getattr(%struct.TYPE_14__* %153, i32 %154, i32 %156, i32* %26)
  store i32 %157, i32* %25, align 4
  %158 = load i32, i32* %26, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %131
  br label %164

161:                                              ; preds = %131
  %162 = load i32, i32* %25, align 4
  %163 = call i32* @DatumGetArrayTypeP(i32 %162)
  br label %164

164:                                              ; preds = %161, %160
  %165 = phi i32* [ null, %160 ], [ %163, %161 ]
  store i32* %165, i32** %27, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i32*, i32** %27, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = call i32* @GUCArrayAdd(i32* %169, i32 %172, i8* %173)
  store i32* %174, i32** %27, align 8
  br label %181

175:                                              ; preds = %164
  %176 = load i32*, i32** %27, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32* @GUCArrayDelete(i32* %176, i32 %179)
  store i32* %180, i32** %27, align 8
  br label %181

181:                                              ; preds = %175, %168
  %182 = load i32*, i32** %27, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %200

184:                                              ; preds = %181
  %185 = load i32*, i32** %27, align 8
  %186 = call i32 @PointerGetDatum(i32* %185)
  %187 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %135, i64 %189
  store i32 %186, i32* %190, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @RelationGetDescr(i32 %192)
  %194 = call %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__* %191, i32 %193, i32* %135, i32* %138, i32* %141)
  store %struct.TYPE_14__* %194, %struct.TYPE_14__** %24, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %199 = call i32 @CatalogTupleUpdate(i32 %195, i32* %197, %struct.TYPE_14__* %198)
  br label %205

200:                                              ; preds = %181
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = call i32 @CatalogTupleDelete(i32 %201, i32* %203)
  br label %205

205:                                              ; preds = %200, %184
  %206 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %206)
  br label %252

207:                                              ; preds = %127
  %208 = load i8*, i8** %7, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %251

210:                                              ; preds = %207
  %211 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %212 = zext i32 %211 to i64
  %213 = call i8* @llvm.stacksave()
  store i8* %213, i8** %29, align 8
  %214 = alloca i32, i64 %212, align 16
  store i64 %212, i64* %30, align 8
  %215 = load i32, i32* @Natts_pg_db_role_setting, align 4
  %216 = zext i32 %215 to i64
  %217 = alloca i32, i64 %216, align 16
  store i64 %216, i64* %31, align 8
  %218 = mul nuw i64 4, %216
  %219 = trunc i64 %218 to i32
  %220 = call i32 @memset(i32* %217, i32 0, i32 %219)
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i8*, i8** %7, align 8
  %225 = call i32* @GUCArrayAdd(i32* null, i32 %223, i8* %224)
  store i32* %225, i32** %32, align 8
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @ObjectIdGetDatum(i32 %226)
  %228 = load i32, i32* @Anum_pg_db_role_setting_setdatabase, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %214, i64 %230
  store i32 %227, i32* %231, align 4
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @ObjectIdGetDatum(i32 %232)
  %234 = load i32, i32* @Anum_pg_db_role_setting_setrole, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %214, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = load i32*, i32** %32, align 8
  %239 = call i32 @PointerGetDatum(i32* %238)
  %240 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %241 = sub nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %214, i64 %242
  store i32 %239, i32* %243, align 4
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @RelationGetDescr(i32 %244)
  %246 = call %struct.TYPE_14__* @heap_form_tuple(i32 %245, i32* %214, i32* %217)
  store %struct.TYPE_14__* %246, %struct.TYPE_14__** %28, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %249 = call i32 @CatalogTupleInsert(i32 %247, %struct.TYPE_14__* %248)
  %250 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %250)
  br label %251

251:                                              ; preds = %210, %207
  br label %252

252:                                              ; preds = %251, %205
  br label %253

253:                                              ; preds = %252, %126
  %254 = load i32, i32* @DbRoleSettingRelationId, align 4
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @InvokeObjectPostAlterHookArg(i32 %254, i32 %255, i32 0, i32 %256, i32 0)
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @systable_endscan(i32 %258)
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* @NoLock, align 4
  %262 = call i32 @table_close(i32 %260, i32 %261)
  ret void
}

declare dso_local i8* @ExtractSetVariableArgs(%struct.TYPE_13__*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_14__*) #1

declare dso_local i32 @heap_getattr(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @GUCArrayReset(i32*) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32* @GUCArrayAdd(i32*, i32, i8*) #1

declare dso_local i32* @GUCArrayDelete(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @InvokeObjectPostAlterHookArg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
