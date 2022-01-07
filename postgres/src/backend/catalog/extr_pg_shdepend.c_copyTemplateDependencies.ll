; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_copyTemplateDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_copyTemplateDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Natts_pg_shdepend = common dso_local global i32 0, align 4
@SharedDependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_shdepend_dbid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@SharedDependDependerIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copyTemplateDependencies(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* @Natts_pg_shdepend, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @Natts_pg_shdepend, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i32, i32* @Natts_pg_shdepend, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i32, i32* @SharedDependRelationId, align 4
  %27 = load i32, i32* @RowExclusiveLock, align 4
  %28 = call i32 @table_open(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @RelationGetDescr(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @CatalogOpenIndexes(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %34 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %35 = load i32, i32* @BTEqualStrategyNumber, align 4
  %36 = load i32, i32* @F_OIDEQ, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ObjectIdGetDatum(i32 %37)
  %39 = call i32 @ScanKeyInit(i32* %33, i32 %34, i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SharedDependDependerIndexId, align 4
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %43 = call i32 @systable_beginscan(i32 %40, i32 %41, i32 1, i32* null, i32 1, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = mul nuw i64 4, %17
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i32* %19, i32 0, i32 %45)
  %47 = mul nuw i64 4, %21
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %22, i32 0, i32 %48)
  %50 = mul nuw i64 4, %24
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32* %25, i32 0, i32 %51)
  %53 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %25, i64 %55
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ObjectIdGetDatum(i32 %57)
  %59 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %19, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %68, %2
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @systable_getnext(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = call i64 @HeapTupleIsValid(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @heap_modify_tuple(i32 %69, i32 %70, i32* %19, i32* %22, i32* %25)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @CatalogTupleInsertWithInfo(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @heap_freetuple(i32 %76)
  br label %63

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @systable_endscan(i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @CatalogCloseIndexes(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @RowExclusiveLock, align 4
  %85 = call i32 @table_close(i32 %83, i32 %84)
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogOpenIndexes(i32) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @HeapTupleIsValid(i32) #2

declare dso_local i32 @systable_getnext(i32) #2

declare dso_local i32 @heap_modify_tuple(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsertWithInfo(i32, i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @systable_endscan(i32) #2

declare dso_local i32 @CatalogCloseIndexes(i32) #2

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
