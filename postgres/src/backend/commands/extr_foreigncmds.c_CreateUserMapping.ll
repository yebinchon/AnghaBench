; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateUserMapping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_CreateUserMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@Natts_pg_user_mapping = common dso_local global i32 0, align 4
@UserMappingRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ROLESPEC_PUBLIC = common dso_local global i64 0, align 8
@ACL_ID_PUBLIC = common dso_local global i32 0, align 4
@USERMAPPINGUSERSERVER = common dso_local global i32 0, align 4
@Anum_pg_user_mapping_oid = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"user mapping for \22%s\22 already exists for server \22%s\22, skipping\00", align 1
@InvalidObjectAddress = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"user mapping for \22%s\22 already exists for server \22%s\22\00", align 1
@UserMappingOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_user_mapping_umuser = common dso_local global i32 0, align 4
@Anum_pg_user_mapping_umserver = common dso_local global i32 0, align 4
@Anum_pg_user_mapping_umoptions = common dso_local global i32 0, align 4
@ForeignServerRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @CreateUserMapping(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_20__, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %18 = load i32, i32* @Natts_pg_user_mapping, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @Natts_pg_user_mapping, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %16, align 8
  %29 = load i32, i32* @UserMappingRelationId, align 4
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = call %struct.TYPE_19__* @table_open(i32 %29, i32 %30)
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %4, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ROLESPEC_PUBLIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @ACL_ID_PUBLIC, align 4
  store i32 %38, i32* %10, align 4
  br label %44

39:                                               ; preds = %1
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @get_rolespec_oid(i64 %42, i32 0)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %39, %37
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_21__* @GetForeignServerByName(i32 %47, i32 0)
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %14, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @user_mapping_ddl_aclcheck(i32 %49, i32 %52, i32 %55)
  %57 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %58 = load i32, i32* @Anum_pg_user_mapping_oid, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ObjectIdGetDatum(i32 %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ObjectIdGetDatum(i32 %63)
  %65 = call i32 @GetSysCacheOid2(i32 %57, i32 %58, i32 %60, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @OidIsValid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %44
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load i32, i32* @NOTICE, align 4
  %76 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @MappingUserName(i32 %78)
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82)
  %84 = call i32 @ereport(i32 %75, i32 %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %86 = load i32, i32* @RowExclusiveLock, align 4
  %87 = call i32 @table_close(%struct.TYPE_19__* %85, i32 %86)
  %88 = bitcast %struct.TYPE_20__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 bitcast (%struct.TYPE_20__* @InvalidObjectAddress to i8*), i64 16, i1 false)
  store i32 1, i32* %17, align 4
  br label %201

89:                                               ; preds = %69
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @MappingUserName(i32 %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97)
  %99 = call i32 @ereport(i32 %90, i32 %98)
  br label %100

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %44
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.TYPE_22__* @GetForeignDataWrapper(i32 %104)
  store %struct.TYPE_22__* %105, %struct.TYPE_22__** %15, align 8
  %106 = mul nuw i64 4, %19
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i32* %21, i32 0, i32 %107)
  %109 = mul nuw i64 4, %23
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i32* %24, i32 0, i32 %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = load i32, i32* @UserMappingOidIndexId, align 4
  %114 = load i32, i32* @Anum_pg_user_mapping_oid, align 4
  %115 = call i32 @GetNewOidWithIndex(%struct.TYPE_19__* %112, i32 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @ObjectIdGetDatum(i32 %116)
  %118 = load i32, i32* @Anum_pg_user_mapping_oid, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %21, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @ObjectIdGetDatum(i32 %122)
  %124 = load i32, i32* @Anum_pg_user_mapping_umuser, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %21, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ObjectIdGetDatum(i32 %130)
  %132 = load i32, i32* @Anum_pg_user_mapping_umserver, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %21, i64 %134
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* @UserMappingRelationId, align 4
  %137 = call i32 @PointerGetDatum(i32* null)
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @transformGenericOptions(i32 %136, i32 %137, i32 %140, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @DatumGetPointer(i32 %145)
  %147 = call i64 @PointerIsValid(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %101
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @Anum_pg_user_mapping_umoptions, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %21, i64 %153
  store i32 %150, i32* %154, align 4
  br label %160

155:                                              ; preds = %101
  %156 = load i32, i32* @Anum_pg_user_mapping_umoptions, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %24, i64 %158
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %149
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @heap_form_tuple(i32 %163, i32* %21, i32* %24)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @CatalogTupleInsert(%struct.TYPE_19__* %165, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @heap_freetuple(i32 %168)
  %170 = load i32, i32* @UserMappingRelationId, align 4
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* %11, align 4
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 %172, i32* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* @ForeignServerRelationId, align 4
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  store i32 %175, i32* %176, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store i32 %179, i32* %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %183 = call i32 @recordDependencyOn(%struct.TYPE_20__* %12, %struct.TYPE_20__* %13, i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = call i64 @OidIsValid(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %160
  %188 = load i32, i32* @UserMappingRelationId, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @recordDependencyOnOwner(i32 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %160
  %193 = load i32, i32* @UserMappingRelationId, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @InvokeObjectPostCreateHook(i32 %193, i32 %194, i32 0)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = load i32, i32* @RowExclusiveLock, align 4
  %198 = call i32 @table_close(%struct.TYPE_19__* %196, i32 %197)
  %199 = bitcast %struct.TYPE_20__* %2 to i8*
  %200 = bitcast %struct.TYPE_20__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 16, i1 false)
  store i32 1, i32* %17, align 4
  br label %201

201:                                              ; preds = %192, %74
  %202 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = bitcast %struct.TYPE_20__* %2 to { i64, i64 }*
  %204 = load { i64, i64 }, { i64, i64 }* %203, align 8
  ret { i64, i64 } %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_19__* @table_open(i32, i32) #2

declare dso_local i32 @get_rolespec_oid(i64, i32) #2

declare dso_local %struct.TYPE_21__* @GetForeignServerByName(i32, i32) #2

declare dso_local i32 @user_mapping_ddl_aclcheck(i32, i32, i32) #2

declare dso_local i32 @GetSysCacheOid2(i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i64 @OidIsValid(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32, i32) #2

declare dso_local i32 @MappingUserName(i32) #2

declare dso_local i32 @table_close(%struct.TYPE_19__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.TYPE_22__* @GetForeignDataWrapper(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @GetNewOidWithIndex(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i32, i32) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i32, i32) #2

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
