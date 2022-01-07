; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeOwnerInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeOwnerInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@Natts_pg_type = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@Anum_pg_type_typowner = common dso_local global i32 0, align 4
@Anum_pg_type_typacl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterTypeOwnerInternal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @Natts_pg_type, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @Natts_pg_type, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* @Natts_pg_type, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = load i32, i32* @TypeRelationId, align 4
  %26 = load i32, i32* @RowExclusiveLock, align 4
  %27 = call i32 @table_open(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @TYPEOID, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call %struct.TYPE_10__* @SearchSysCacheCopy1(i32 %28, i32 %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %6, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = call i64 @GETSTRUCT(%struct.TYPE_10__* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %7, align 8
  %43 = mul nuw i64 4, %20
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(i32* %21, i32 0, i32 %44)
  %46 = mul nuw i64 4, %23
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i32* %24, i32 0, i32 %47)
  %49 = load i32, i32* @Anum_pg_type_typowner, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %24, i64 %51
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ObjectIdGetDatum(i32 %53)
  %55 = load i32, i32* @Anum_pg_type_typowner, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %18, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = load i32, i32* @Anum_pg_type_typacl, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @RelationGetDescr(i32 %61)
  %63 = call i32 @heap_getattr(%struct.TYPE_10__* %59, i32 %60, i32 %62, i32* %14)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %39
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @DatumGetAclP(i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32* @aclnewowner(i32 %68, i32 %71, i32 %72)
  store i32* %73, i32** %12, align 8
  %74 = load i32, i32* @Anum_pg_type_typacl, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %24, i64 %76
  store i32 1, i32* %77, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @PointerGetDatum(i32* %78)
  %80 = load i32, i32* @Anum_pg_type_typacl, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %18, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %66, %39
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @RelationGetDescr(i32 %86)
  %88 = call %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__* %85, i32 %87, i32* %18, i32* %21, i32* %24)
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = call i32 @CatalogTupleUpdate(i32 %89, i32* %91, %struct.TYPE_10__* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @OidIsValid(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %84
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  call void @AlterTypeOwnerInternal(i32 %102, i32 %103)
  br label %104

104:                                              ; preds = %99, %84
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @RowExclusiveLock, align 4
  %107 = call i32 @table_close(i32 %105, i32 %106)
  %108 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_10__* @SearchSysCacheCopy1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @heap_getattr(%struct.TYPE_10__*, i32, i32, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32* @aclnewowner(i32, i32, i32) #2

declare dso_local i32 @DatumGetAclP(i32) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i64 @OidIsValid(i32) #2

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
