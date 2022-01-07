; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_DeleteSecurityLabel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_seclabel.c_DeleteSecurityLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@Anum_pg_seclabel_objoid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_seclabel_classoid = common dso_local global i32 0, align 4
@Anum_pg_seclabel_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@SecLabelRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SecLabelObjectIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteSecurityLabel(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @IsSharedRelation(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DeleteSharedSecurityLabel(i32 %22, i32 %25)
  br label %86

27:                                               ; preds = %1
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %29 = load i32, i32* @Anum_pg_seclabel_objoid, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_OIDEQ, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ObjectIdGetDatum(i32 %34)
  %36 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %35)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %38 = load i32, i32* @Anum_pg_seclabel_classoid, align 4
  %39 = load i32, i32* @BTEqualStrategyNumber, align 4
  %40 = load i32, i32* @F_OIDEQ, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ObjectIdGetDatum(i32 %43)
  %45 = call i32 @ScanKeyInit(i32* %37, i32 %38, i32 %39, i32 %40, i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %27
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %52 = load i32, i32* @Anum_pg_seclabel_objsubid, align 4
  %53 = load i32, i32* @BTEqualStrategyNumber, align 4
  %54 = load i32, i32* @F_INT4EQ, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @Int32GetDatum(i64 %57)
  %59 = call i32 @ScanKeyInit(i32* %51, i32 %52, i32 %53, i32 %54, i32 %58)
  store i32 3, i32* %7, align 4
  br label %61

60:                                               ; preds = %27
  store i32 2, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* @SecLabelRelationId, align 4
  %63 = load i32, i32* @RowExclusiveLock, align 4
  %64 = call i32 @table_open(i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @SecLabelObjectIndexId, align 4
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %69 = call i32 @systable_beginscan(i32 %65, i32 %66, i32 1, i32* null, i32 %67, i32* %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %75, %61
  %71 = load i32, i32* %5, align 4
  %72 = call %struct.TYPE_7__* @systable_getnext(i32 %71)
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %6, align 8
  %73 = call i64 @HeapTupleIsValid(%struct.TYPE_7__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @CatalogTupleDelete(i32 %76, i32* %78)
  br label %70

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @systable_endscan(i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @RowExclusiveLock, align 4
  %85 = call i32 @table_close(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %13
  ret void
}

declare dso_local i64 @IsSharedRelation(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @DeleteSharedSecurityLabel(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i64) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @systable_getnext(i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
