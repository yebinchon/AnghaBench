; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_DeleteComments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_DeleteComments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@Anum_pg_description_objoid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_description_classoid = common dso_local global i32 0, align 4
@Anum_pg_description_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DescriptionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@DescriptionObjIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteComments(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_description_objoid, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_OIDEQ, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %20 = load i32, i32* @Anum_pg_description_classoid, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_OIDEQ, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %30 = load i32, i32* @Anum_pg_description_objsubid, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_INT4EQ, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @Int32GetDatum(i64 %33)
  %35 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %34)
  store i32 3, i32* %9, align 4
  br label %37

36:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* @DescriptionRelationId, align 4
  %39 = load i32, i32* @RowExclusiveLock, align 4
  %40 = call i32 @table_open(i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DescriptionObjIndexId, align 4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %45 = call i32 @systable_beginscan(i32 %41, i32 %42, i32 1, i32* null, i32 %43, i32* %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %50, %37
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.TYPE_3__* @systable_getnext(i32 %47)
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %11, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @CatalogTupleDelete(i32 %51, i32* %53)
  br label %46

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @systable_endscan(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RowExclusiveLock, align 4
  %60 = call i32 @table_close(i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i64) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @systable_getnext(i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
