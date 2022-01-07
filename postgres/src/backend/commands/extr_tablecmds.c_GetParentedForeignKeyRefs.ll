; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_GetParentedForeignKeyRefs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_GetParentedForeignKeyRefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@INDEX_ATTR_BITMAP_KEY = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_confrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_constraint_contype = common dso_local global i32 0, align 4
@F_CHAREQ = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @GetParentedForeignKeyRefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetParentedForeignKeyRefs(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @RelationGetIndexList(i32 %11)
  %13 = load i32*, i32** @NIL, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @INDEX_ATTR_BITMAP_KEY, align 4
  %18 = call i32 @RelationGetIndexAttrBitmap(i32 %16, i32 %17)
  %19 = call i64 @bms_is_empty(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %1
  %22 = load i32*, i32** @NIL, align 8
  store i32* %22, i32** %2, align 8
  br label %74

23:                                               ; preds = %15
  %24 = load i32, i32* @ConstraintRelationId, align 4
  %25 = load i32, i32* @AccessShareLock, align 4
  %26 = call i32 @table_open(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* @Anum_pg_constraint_confrelid, align 4
  %29 = load i32, i32* @BTEqualStrategyNumber, align 4
  %30 = load i32, i32* @F_OIDEQ, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @RelationGetRelid(i32 %31)
  %33 = call i32 @ObjectIdGetDatum(i32 %32)
  %34 = call i32 @ScanKeyInit(i32* %27, i32 %28, i32 %29, i32 %30, i32 %33)
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %36 = load i32, i32* @Anum_pg_constraint_contype, align 4
  %37 = load i32, i32* @BTEqualStrategyNumber, align 4
  %38 = load i32, i32* @F_CHAREQ, align 4
  %39 = load i32, i32* @CONSTRAINT_FOREIGN, align 4
  %40 = call i32 @CharGetDatum(i32 %39)
  %41 = call i32 @ScanKeyInit(i32* %35, i32 %36, i32 %37, i32 %38, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @InvalidOid, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %45 = call i32 @systable_beginscan(i32 %42, i32 %43, i32 1, i32* null, i32 2, i32* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %61, %60, %23
  %47 = load i32, i32* %6, align 4
  %48 = call i32* @systable_getnext(i32 %47)
  store i32* %48, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @GETSTRUCT(i32* %51)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %9, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @OidIsValid(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %46

61:                                               ; preds = %50
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @lappend_oid(i32* %62, i32 %65)
  store i32* %66, i32** %8, align 8
  br label %46

67:                                               ; preds = %46
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @systable_endscan(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @AccessShareLock, align 4
  %72 = call i32 @table_close(i32 %70, i32 %71)
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %2, align 8
  br label %74

74:                                               ; preds = %67, %21
  %75 = load i32*, i32** %2, align 8
  ret i32* %75
}

declare dso_local i32* @RelationGetIndexList(i32) #1

declare dso_local i64 @bms_is_empty(i32) #1

declare dso_local i32 @RelationGetIndexAttrBitmap(i32, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
