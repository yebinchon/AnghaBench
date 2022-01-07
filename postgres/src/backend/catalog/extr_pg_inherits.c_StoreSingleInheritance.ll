; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_inherits.c_StoreSingleInheritance.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_inherits.c_StoreSingleInheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Natts_pg_inherits = common dso_local global i32 0, align 4
@InheritsRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhparent = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhseqno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StoreSingleInheritance(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @Natts_pg_inherits, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @Natts_pg_inherits, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i32, i32* @InheritsRelationId, align 4
  %20 = load i32, i32* @RowExclusiveLock, align 4
  %21 = call i32 @table_open(i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %15, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = load i32, i32* @Anum_pg_inherits_inhparent, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %15, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @Int32GetDatum(i32 %34)
  %36 = load i32, i32* @Anum_pg_inherits_inhseqno, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %15, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = mul nuw i64 4, %17
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32* %18, i32 0, i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @RelationGetDescr(i32 %43)
  %45 = call i32 @heap_form_tuple(i32 %44, i32* %15, i32* %18)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @CatalogTupleInsert(i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @heap_freetuple(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @RowExclusiveLock, align 4
  %53 = call i32 @table_close(i32 %51, i32 %52)
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

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
