; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_publication_add_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_publication_add_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@Natts_pg_publication_rel = common dso_local global i32 0, align 4
@PublicationRelRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@PUBLICATIONRELMAP = common dso_local global i32 0, align 4
@InvalidObjectAddress = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"relation \22%s\22 is already member of publication \22%s\22\00", align 1
@PublicationRelObjectIndexId = common dso_local global i32 0, align 4
@Anum_pg_publication_rel_oid = common dso_local global i32 0, align 4
@Anum_pg_publication_rel_prpubid = common dso_local global i32 0, align 4
@Anum_pg_publication_rel_prrelid = common dso_local global i32 0, align 4
@PublicationRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_AUTO = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @publication_add_relation(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @Natts_pg_publication_rel, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @Natts_pg_publication_rel, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @RelationGetRelid(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.TYPE_3__* @GetPublication(i32 %28)
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %15, align 8
  %30 = load i32, i32* @PublicationRelRelationId, align 4
  %31 = load i32, i32* @RowExclusiveLock, align 4
  %32 = call i32 @table_open(i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @PUBLICATIONRELMAP, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @ObjectIdGetDatum(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ObjectIdGetDatum(i32 %36)
  %38 = call i64 @SearchSysCacheExists2(i32 %33, i32 %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @RowExclusiveLock, align 4
  %43 = call i32 @table_close(i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @InvalidObjectAddress, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %120

48:                                               ; preds = %40
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @RelationGetRelationName(i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = call i32 @ereport(i32 %49, i32 %57)
  br label %59

59:                                               ; preds = %48, %3
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @check_publication_add_relation(i32 %60)
  %62 = mul nuw i64 4, %20
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memset(i32* %22, i32 0, i32 %63)
  %65 = mul nuw i64 4, %24
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %25, i32 0, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PublicationRelObjectIndexId, align 4
  %70 = load i32, i32* @Anum_pg_publication_rel_oid, align 4
  %71 = call i32 @GetNewOidWithIndex(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @ObjectIdGetDatum(i32 %72)
  %74 = load i32, i32* @Anum_pg_publication_rel_oid, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %22, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ObjectIdGetDatum(i32 %78)
  %80 = load i32, i32* @Anum_pg_publication_rel_prpubid, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %22, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @ObjectIdGetDatum(i32 %84)
  %86 = load i32, i32* @Anum_pg_publication_rel_prrelid, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %22, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @RelationGetDescr(i32 %90)
  %92 = call i32 @heap_form_tuple(i32 %91, i32* %22, i32* %25)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @CatalogTupleInsert(i32 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @heap_freetuple(i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @PublicationRelRelationId, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ObjectAddressSet(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @PublicationRelationId, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @ObjectAddressSet(i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %107 = call i32 @recordDependencyOn(i32* %16, i32* %17, i32 %106)
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @RelationRelationId, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @ObjectAddressSet(i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %113 = call i32 @recordDependencyOn(i32* %16, i32* %17, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @RowExclusiveLock, align 4
  %116 = call i32 @table_close(i32 %114, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @CacheInvalidateRelcache(i32 %117)
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %120

120:                                              ; preds = %59, %46
  %121 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RelationGetRelid(i32) #2

declare dso_local %struct.TYPE_3__* @GetPublication(i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i64 @SearchSysCacheExists2(i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32, i32) #2

declare dso_local i32 @RelationGetRelationName(i32) #2

declare dso_local i32 @check_publication_add_relation(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #2

declare dso_local i32 @recordDependencyOn(i32*, i32*, i32) #2

declare dso_local i32 @CacheInvalidateRelcache(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
