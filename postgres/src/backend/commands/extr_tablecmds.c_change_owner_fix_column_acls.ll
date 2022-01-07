; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_change_owner_fix_column_acls.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_change_owner_fix_column_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_attribute_attrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@AttributeRelidNumIndexId = common dso_local global i32 0, align 4
@Natts_pg_attribute = common dso_local global i32 0, align 4
@Anum_pg_attribute_attacl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @change_owner_fix_column_acls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_owner_fix_column_acls(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* @AttributeRelationId, align 4
  %22 = load i32, i32* @RowExclusiveLock, align 4
  %23 = call i32 @table_open(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %25 = load i32, i32* @Anum_pg_attribute_attrelid, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AttributeRelidNumIndexId, align 4
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %34 = call i32 @systable_beginscan(i32 %31, i32 %32, i32 1, i32* null, i32 1, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %105, %102, %3
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.TYPE_11__* @systable_getnext(i32 %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %10, align 8
  %38 = call i64 @HeapTupleIsValid(%struct.TYPE_11__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = call i32 @GETSTRUCT(%struct.TYPE_11__* %41)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %11, align 8
  %45 = load i32, i32* @Natts_pg_attribute, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %12, align 8
  %48 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  %49 = load i32, i32* @Natts_pg_attribute, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %14, align 8
  %52 = load i32, i32* @Natts_pg_attribute, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %15, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  store i32 2, i32* %20, align 4
  br label %102

60:                                               ; preds = %40
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @RelationGetDescr(i32 %63)
  %65 = call i32 @heap_getattr(%struct.TYPE_11__* %61, i32 %62, i32 %64, i32* %18)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 2, i32* %20, align 4
  br label %102

69:                                               ; preds = %60
  %70 = mul nuw i64 4, %50
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memset(i32* %51, i32 0, i32 %71)
  %73 = mul nuw i64 4, %53
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i32* %54, i32 0, i32 %74)
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @DatumGetAclP(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32* @aclnewowner(i32 %77, i32 %78, i32 %79)
  store i32* %80, i32** %16, align 8
  %81 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %54, i64 %83
  store i32 1, i32* %84, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @PointerGetDatum(i32* %85)
  %87 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %48, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @RelationGetDescr(i32 %92)
  %94 = call %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__* %91, i32 %93, i32* %48, i32* %51, i32* %54)
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %19, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %99 = call i32 @CatalogTupleUpdate(i32 %95, i32* %97, %struct.TYPE_11__* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %101 = call i32 @heap_freetuple(%struct.TYPE_11__* %100)
  store i32 0, i32* %20, align 4
  br label %102

102:                                              ; preds = %69, %68, %59
  %103 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %20, align 4
  switch i32 %104, label %112 [
    i32 0, label %105
    i32 2, label %35
  ]

105:                                              ; preds = %102
  br label %35

106:                                              ; preds = %35
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @systable_endscan(i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @RowExclusiveLock, align 4
  %111 = call i32 @table_close(i32 %109, i32 %110)
  ret void

112:                                              ; preds = %102
  unreachable
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @heap_getattr(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @aclnewowner(i32, i32, i32) #1

declare dso_local i32 @DatumGetAclP(i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
