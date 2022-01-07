; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_schemacmds.c_AlterSchemaOwner_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_schemacmds.c_AlterSchemaOwner_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@NamespaceRelationId = common dso_local global i64 0, align 8
@Natts_pg_namespace = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@Anum_pg_namespace_nspowner = common dso_local global i32 0, align 4
@NAMESPACENAME = common dso_local global i32 0, align 4
@Anum_pg_namespace_nspacl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32)* @AlterSchemaOwner_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AlterSchemaOwner_internal(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NamespaceRelationId, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @RelationGetRelid(i32 %24)
  %26 = load i64, i64* @NamespaceRelationId, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = call i64 @GETSTRUCT(%struct.TYPE_10__* %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %140

38:                                               ; preds = %3
  %39 = load i32, i32* @Natts_pg_namespace, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %8, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %9, align 8
  %43 = load i32, i32* @Natts_pg_namespace, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %10, align 8
  %46 = load i32, i32* @Natts_pg_namespace, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %11, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (...) @GetUserId()
  %53 = call i32 @pg_namespace_ownercheck(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %38
  %56 = load i64, i64* @ACLCHECK_NOT_OWNER, align 8
  %57 = load i32, i32* @OBJECT_SCHEMA, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @NameStr(i32 %60)
  %62 = call i32 @aclcheck_error(i64 %56, i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %55, %38
  %64 = call i32 (...) @GetUserId()
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @check_is_member_of_role(i32 %64, i32 %65)
  %67 = load i32, i32* @MyDatabaseId, align 4
  %68 = call i32 (...) @GetUserId()
  %69 = load i32, i32* @ACL_CREATE, align 4
  %70 = call i64 @pg_database_aclcheck(i32 %67, i32 %68, i32 %69)
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @ACLCHECK_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load i64, i64* %16, align 8
  %76 = load i32, i32* @OBJECT_DATABASE, align 4
  %77 = load i32, i32* @MyDatabaseId, align 4
  %78 = call i32 @get_database_name(i32 %77)
  %79 = call i32 @aclcheck_error(i64 %75, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %74, %63
  %81 = mul nuw i64 4, %44
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memset(i32* %45, i32 0, i32 %82)
  %84 = mul nuw i64 4, %47
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(i32* %48, i32 0, i32 %85)
  %87 = load i32, i32* @Anum_pg_namespace_nspowner, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %48, i64 %89
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ObjectIdGetDatum(i32 %91)
  %93 = load i32, i32* @Anum_pg_namespace_nspowner, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %42, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @NAMESPACENAME, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = load i32, i32* @Anum_pg_namespace_nspacl, align 4
  %100 = call i32 @SysCacheGetAttr(i32 %97, %struct.TYPE_10__* %98, i32 %99, i32* %14)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %80
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @DatumGetAclP(i32 %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32* @aclnewowner(i32 %105, i32 %108, i32 %109)
  store i32* %110, i32** %12, align 8
  %111 = load i32, i32* @Anum_pg_namespace_nspacl, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %48, i64 %113
  store i32 1, i32* %114, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @PointerGetDatum(i32* %115)
  %117 = load i32, i32* @Anum_pg_namespace_nspacl, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %42, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %103, %80
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @RelationGetDescr(i32 %123)
  %125 = call %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__* %122, i32 %124, i32* %42, i32* %45, i32* %48)
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %15, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %130 = call i32 @CatalogTupleUpdate(i32 %126, i32* %128, %struct.TYPE_10__* %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %132 = call i32 @heap_freetuple(%struct.TYPE_10__* %131)
  %133 = load i64, i64* @NamespaceRelationId, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @changeDependencyOnOwner(i64 %133, i32 %136, i32 %137)
  %139 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %139)
  br label %140

140:                                              ; preds = %121, %3
  %141 = load i64, i64* @NamespaceRelationId, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @InvokeObjectPostAlterHook(i64 %141, i32 %144, i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RelationGetRelid(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pg_namespace_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @check_is_member_of_role(i32, i32) #1

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32* @aclnewowner(i32, i32, i32) #1

declare dso_local i32 @DatumGetAclP(i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_10__*) #1

declare dso_local i32 @changeDependencyOnOwner(i64, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
