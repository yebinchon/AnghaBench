; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterUserMapping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_foreigncmds.c_AlterUserMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32 }

@Natts_pg_user_mapping = common dso_local global i32 0, align 4
@UserMappingRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ROLESPEC_PUBLIC = common dso_local global i64 0, align 8
@ACL_ID_PUBLIC = common dso_local global i32 0, align 4
@USERMAPPINGUSERSERVER = common dso_local global i32 0, align 4
@Anum_pg_user_mapping_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"user mapping for \22%s\22 does not exist for server \22%s\22\00", align 1
@USERMAPPINGOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cache lookup failed for user mapping %u\00", align 1
@Anum_pg_user_mapping_umoptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterUserMapping(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %17 = load i32, i32* @Natts_pg_user_mapping, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load i32, i32* @Natts_pg_user_mapping, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %24 = load i32, i32* @Natts_pg_user_mapping, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %13, align 8
  %31 = load i32, i32* @UserMappingRelationId, align 4
  %32 = load i32, i32* @RowExclusiveLock, align 4
  %33 = call i32 @table_open(i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ROLESPEC_PUBLIC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @ACL_ID_PUBLIC, align 4
  store i32 %40, i32* %9, align 4
  br label %46

41:                                               ; preds = %1
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @get_rolespec_oid(i64 %44, i32 0)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %39
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_18__* @GetForeignServerByName(i32 %49, i32 0)
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %11, align 8
  %51 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %52 = load i32, i32* @Anum_pg_user_mapping_oid, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ObjectIdGetDatum(i32 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ObjectIdGetDatum(i32 %57)
  %59 = call i32 @GetSysCacheOid2(i32 %51, i32 %52, i32 %54, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @OidIsValid(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %46
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %66 = call i32 @errcode(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @MappingUserName(i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  %73 = call i32 @ereport(i32 %64, i32 %72)
  br label %74

74:                                               ; preds = %63, %46
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @user_mapping_ddl_aclcheck(i32 %75, i32 %78, i32 %81)
  %83 = load i32, i32* @USERMAPPINGOID, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @ObjectIdGetDatum(i32 %84)
  %86 = call %struct.TYPE_17__* @SearchSysCacheCopy1(i32 %83, i32 %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %4, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = call i32 @HeapTupleIsValid(%struct.TYPE_17__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %74
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @elog(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %74
  %95 = mul nuw i64 4, %18
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memset(i32* %20, i32 0, i32 %96)
  %98 = mul nuw i64 4, %22
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memset(i32* %23, i32 0, i32 %99)
  %101 = mul nuw i64 4, %25
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memset(i32* %26, i32 0, i32 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %94
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.TYPE_19__* @GetForeignDataWrapper(i32 %111)
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %14, align 8
  %113 = load i32, i32* @USERMAPPINGUSERSERVER, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = load i32, i32* @Anum_pg_user_mapping_umoptions, align 4
  %116 = call i32 @SysCacheGetAttr(i32 %113, %struct.TYPE_17__* %114, i32 %115, i32* %16)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = call i32 @PointerGetDatum(i32* null)
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %119, %108
  %122 = load i32, i32* @UserMappingRelationId, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @transformGenericOptions(i32 %122, i32 %123, i64 %126, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @DatumGetPointer(i32 %131)
  %133 = call i64 @PointerIsValid(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %121
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @Anum_pg_user_mapping_umoptions, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %20, i64 %139
  store i32 %136, i32* %140, align 4
  br label %146

141:                                              ; preds = %121
  %142 = load i32, i32* @Anum_pg_user_mapping_umoptions, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %23, i64 %144
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %135
  %147 = load i32, i32* @Anum_pg_user_mapping_umoptions, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %26, i64 %149
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %146, %94
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @RelationGetDescr(i32 %153)
  %155 = call %struct.TYPE_17__* @heap_modify_tuple(%struct.TYPE_17__* %152, i32 %154, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_17__* %155, %struct.TYPE_17__** %4, align 8
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %160 = call i32 @CatalogTupleUpdate(i32 %156, i32* %158, %struct.TYPE_17__* %159)
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @UserMappingRelationId, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @ObjectAddressSet(i32 %161, i32 %162, i32 %163)
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %166 = call i32 @heap_freetuple(%struct.TYPE_17__* %165)
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @RowExclusiveLock, align 4
  %169 = call i32 @table_close(i32 %167, i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %171)
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @get_rolespec_oid(i64, i32) #2

declare dso_local %struct.TYPE_18__* @GetForeignServerByName(i32, i32) #2

declare dso_local i32 @GetSysCacheOid2(i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32, i32) #2

declare dso_local i32 @MappingUserName(i32) #2

declare dso_local i32 @user_mapping_ddl_aclcheck(i32, i32, i32) #2

declare dso_local %struct.TYPE_17__* @SearchSysCacheCopy1(i32, i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_17__*) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_19__* @GetForeignDataWrapper(i32) #2

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_17__*, i32, i32*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32 @transformGenericOptions(i32, i32, i64, i32) #2

declare dso_local i64 @PointerIsValid(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local %struct.TYPE_17__* @heap_modify_tuple(%struct.TYPE_17__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_17__*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
