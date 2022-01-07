; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateForeignServer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateForeignServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@Natts_pg_foreign_server = common dso_local global i32 0, align 4
@ForeignServerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"server \22%s\22 already exists, skipping\00", align 1
@InvalidObjectAddress = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"server \22%s\22 already exists\00", align 1
@ACL_USAGE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FDW = common dso_local global i32 0, align 4
@ForeignServerOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_oid = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvname = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvowner = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvfdw = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvtype = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvversion = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvacl = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvoptions = common dso_local global i32 0, align 4
@ForeignDataWrapperRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @CreateForeignServer(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_17__, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %17 = load i32, i32* @Natts_pg_foreign_server, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @Natts_pg_foreign_server, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @ForeignServerRelationId, align 4
  %25 = load i32, i32* @RowExclusiveLock, align 4
  %26 = call %struct.TYPE_16__* @table_open(i32 %24, i32 %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %4, align 8
  %27 = call i32 (...) @GetUserId()
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @GetForeignServerByName(i32 %30, i32 1)
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i32, i32* @NOTICE, align 4
  %40 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @ereport(i32 %39, i32 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load i32, i32* @RowExclusiveLock, align 4
  %49 = call i32 @table_close(%struct.TYPE_16__* %47, i32 %48)
  %50 = bitcast %struct.TYPE_17__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 bitcast (%struct.TYPE_17__* @InvalidObjectAddress to i8*), i64 16, i1 false)
  store i32 1, i32* %16, align 4
  br label %226

51:                                               ; preds = %33
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = call i32 @ereport(i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_18__* @GetForeignDataWrapperByName(i32 %64, i32 0)
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %15, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ACL_USAGE, align 4
  %71 = call i64 @pg_foreign_data_wrapper_aclcheck(i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @ACLCHECK_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  %76 = load i64, i64* %12, align 8
  %77 = load i32, i32* @OBJECT_FDW, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @aclcheck_error(i64 %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %75, %61
  %83 = mul nuw i64 4, %18
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i32* %20, i32 0, i32 %84)
  %86 = mul nuw i64 4, %22
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memset(i32* %23, i32 0, i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = load i32, i32* @ForeignServerOidIndexId, align 4
  %91 = load i32, i32* @Anum_pg_foreign_server_oid, align 4
  %92 = call i32 @GetNewOidWithIndex(%struct.TYPE_16__* %89, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @ObjectIdGetDatum(i32 %93)
  %95 = load i32, i32* @Anum_pg_foreign_server_oid, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %20, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* @namein, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @CStringGetDatum(i32 %102)
  %104 = call i32 @DirectFunctionCall1(i32 %99, i32 %103)
  %105 = load i32, i32* @Anum_pg_foreign_server_srvname, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %20, i64 %107
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @ObjectIdGetDatum(i32 %109)
  %111 = load i32, i32* @Anum_pg_foreign_server_srvowner, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %20, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ObjectIdGetDatum(i32 %117)
  %119 = load i32, i32* @Anum_pg_foreign_server_srvfdw, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %20, i64 %121
  store i32 %118, i32* %122, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %82
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @CStringGetTextDatum(i64 %130)
  %132 = load i32, i32* @Anum_pg_foreign_server_srvtype, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %20, i64 %134
  store i32 %131, i32* %135, align 4
  br label %141

136:                                              ; preds = %82
  %137 = load i32, i32* @Anum_pg_foreign_server_srvtype, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %23, i64 %139
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %127
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @CStringGetTextDatum(i64 %149)
  %151 = load i32, i32* @Anum_pg_foreign_server_srvversion, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %20, i64 %153
  store i32 %150, i32* %154, align 4
  br label %160

155:                                              ; preds = %141
  %156 = load i32, i32* @Anum_pg_foreign_server_srvversion, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %23, i64 %158
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %146
  %161 = load i32, i32* @Anum_pg_foreign_server_srvacl, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %23, i64 %163
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* @ForeignServerRelationId, align 4
  %166 = call i32 @PointerGetDatum(i32* null)
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @transformGenericOptions(i32 %165, i32 %166, i32 %169, i32 %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @DatumGetPointer(i32 %174)
  %176 = call i64 @PointerIsValid(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %160
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @Anum_pg_foreign_server_srvoptions, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %20, i64 %182
  store i32 %179, i32* %183, align 4
  br label %189

184:                                              ; preds = %160
  %185 = load i32, i32* @Anum_pg_foreign_server_srvoptions, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %23, i64 %187
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %178
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @heap_form_tuple(i32 %192, i32* %20, i32* %23)
  store i32 %193, i32* %9, align 4
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @CatalogTupleInsert(%struct.TYPE_16__* %194, i32 %195)
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @heap_freetuple(i32 %197)
  %199 = load i32, i32* @ForeignServerRelationId, align 4
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  store i32 %199, i32* %200, align 4
  %201 = load i32, i32* %10, align 4
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 %201, i32* %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i64 0, i64* %203, align 8
  %204 = load i32, i32* @ForeignDataWrapperRelationId, align 4
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store i32 %204, i32* %205, align 4
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %208, i32* %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i64 0, i64* %210, align 8
  %211 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %212 = call i32 @recordDependencyOn(%struct.TYPE_17__* %13, %struct.TYPE_17__* %14, i32 %211)
  %213 = load i32, i32* @ForeignServerRelationId, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @recordDependencyOnOwner(i32 %213, i32 %214, i32 %215)
  %217 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_17__* %13, i32 0)
  %218 = load i32, i32* @ForeignServerRelationId, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @InvokeObjectPostCreateHook(i32 %218, i32 %219, i32 0)
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %222 = load i32, i32* @RowExclusiveLock, align 4
  %223 = call i32 @table_close(%struct.TYPE_16__* %221, i32 %222)
  %224 = bitcast %struct.TYPE_17__* %2 to i8*
  %225 = bitcast %struct.TYPE_17__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %225, i64 16, i1 false)
  store i32 1, i32* %16, align 4
  br label %226

226:                                              ; preds = %189, %38
  %227 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = bitcast %struct.TYPE_17__* %2 to { i64, i64 }*
  %229 = load { i64, i64 }, { i64, i64 }* %228, align 8
  ret { i64, i64 } %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_16__* @table_open(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32* @GetForeignServerByName(i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_16__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.TYPE_18__* @GetForeignDataWrapperByName(i32, i32) #2

declare dso_local i64 @pg_foreign_data_wrapper_aclcheck(i32, i32, i32) #2

declare dso_local i32 @aclcheck_error(i64, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @GetNewOidWithIndex(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i32 @CStringGetTextDatum(i64) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i32, i32) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i32, i32) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
