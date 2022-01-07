; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_AlterDatabaseOwner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_AlterDatabaseOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@DatabaseRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_database_datname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@DatabaseNameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"database \22%s\22 does not exist\00", align 1
@Natts_pg_database = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"permission denied to change owner of database\00", align 1
@Anum_pg_database_datdba = common dso_local global i32 0, align 4
@Anum_pg_database_datacl = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterDatabaseOwner(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* @DatabaseRelationId, align 4
  %21 = load i32, i32* @RowExclusiveLock, align 4
  %22 = call i32 @table_open(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @Anum_pg_database_datname, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_NAMEEQ, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @CStringGetDatum(i8* %26)
  %28 = call i32 @ScanKeyInit(i32* %8, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DatabaseNameIndexId, align 4
  %31 = call i32 @systable_beginscan(i32 %29, i32 %30, i32 1, i32* null, i32 1, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.TYPE_11__* @systable_getnext(i32 %32)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = call i32 @HeapTupleIsValid(%struct.TYPE_11__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = call i32 @ereport(i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = call i64 @GETSTRUCT(%struct.TYPE_11__* %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %10, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %147

56:                                               ; preds = %44
  %57 = load i32, i32* @Natts_pg_database, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %12, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %13, align 8
  %61 = load i32, i32* @Natts_pg_database, align 4
  %62 = zext i32 %61 to i64
  %63 = alloca i32, i64 %62, align 16
  store i64 %62, i64* %14, align 8
  %64 = load i32, i32* @Natts_pg_database, align 4
  %65 = zext i32 %64 to i64
  %66 = alloca i32, i64 %65, align 16
  store i64 %65, i64* %15, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (...) @GetUserId()
  %69 = call i32 @pg_database_ownercheck(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %73 = load i32, i32* @OBJECT_DATABASE, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @aclcheck_error(i32 %72, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %71, %56
  %77 = call i32 (...) @GetUserId()
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @check_is_member_of_role(i32 %77, i32 %78)
  %80 = call i32 (...) @have_createdb_privilege()
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @ERROR, align 4
  %84 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %87 = call i32 @ereport(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  %89 = mul nuw i64 4, %62
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(i32* %63, i32 0, i32 %90)
  %92 = mul nuw i64 4, %65
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memset(i32* %66, i32 0, i32 %93)
  %95 = load i32, i32* @Anum_pg_database_datdba, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %66, i64 %97
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @ObjectIdGetDatum(i32 %99)
  %101 = load i32, i32* @Anum_pg_database_datdba, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %60, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = load i32, i32* @Anum_pg_database_datacl, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @RelationGetDescr(i32 %107)
  %109 = call i32 @heap_getattr(%struct.TYPE_11__* %105, i32 %106, i32 %108, i32* %18)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %88
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @DatumGetAclP(i32 %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32* @aclnewowner(i32 %114, i32 %117, i32 %118)
  store i32* %119, i32** %16, align 8
  %120 = load i32, i32* @Anum_pg_database_datacl, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %66, i64 %122
  store i32 1, i32* %123, align 4
  %124 = load i32*, i32** %16, align 8
  %125 = call i32 @PointerGetDatum(i32* %124)
  %126 = load i32, i32* @Anum_pg_database_datacl, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %60, i64 %128
  store i32 %125, i32* %129, align 4
  br label %130

130:                                              ; preds = %112, %88
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @RelationGetDescr(i32 %132)
  %134 = call %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__* %131, i32 %133, i32* %60, i32* %63, i32* %66)
  store %struct.TYPE_11__* %134, %struct.TYPE_11__** %19, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %139 = call i32 @CatalogTupleUpdate(i32 %135, i32* %137, %struct.TYPE_11__* %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %141 = call i32 @heap_freetuple(%struct.TYPE_11__* %140)
  %142 = load i32, i32* @DatabaseRelationId, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @changeDependencyOnOwner(i32 %142, i32 %143, i32 %144)
  %146 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %146)
  br label %147

147:                                              ; preds = %130, %44
  %148 = load i32, i32* @DatabaseRelationId, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @InvokeObjectPostAlterHook(i32 %148, i32 %149, i32 0)
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @DatabaseRelationId, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @ObjectAddressSet(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @systable_endscan(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @NoLock, align 4
  %159 = call i32 @table_close(i32 %157, i32 %158)
  %160 = load i32, i32* %11, align 4
  ret i32 %160
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_11__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pg_database_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #1

declare dso_local i32 @check_is_member_of_role(i32, i32) #1

declare dso_local i32 @have_createdb_privilege(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @heap_getattr(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @aclnewowner(i32, i32, i32) #1

declare dso_local i32 @DatumGetAclP(i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_11__*) #1

declare dso_local i32 @changeDependencyOnOwner(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
