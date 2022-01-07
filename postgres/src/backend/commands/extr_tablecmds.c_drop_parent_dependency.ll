; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_drop_parent_dependency.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_drop_parent_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }

@DependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@Anum_pg_depend_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64)* @drop_parent_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_parent_dependency(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* @DependRelationId, align 4
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call i32 @table_open(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %18 = load i32, i32* @Anum_pg_depend_classid, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_OIDEQ, align 4
  %21 = load i64, i64* @RelationRelationId, align 8
  %22 = call i32 @ObjectIdGetDatum(i64 %21)
  %23 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %25 = load i32, i32* @Anum_pg_depend_objid, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ObjectIdGetDatum(i64 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %32 = load i32, i32* @Anum_pg_depend_objsubid, align 4
  %33 = load i32, i32* @BTEqualStrategyNumber, align 4
  %34 = load i32, i32* @F_INT4EQ, align 4
  %35 = call i32 @Int32GetDatum(i32 0)
  %36 = call i32 @ScanKeyInit(i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @DependDependerIndexId, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %40 = call i32 @systable_beginscan(i32 %37, i32 %38, i32 1, i32* null, i32 3, i32* %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %78, %4
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.TYPE_6__* @systable_getnext(i32 %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %12, align 8
  %44 = call i64 @HeapTupleIsValid(%struct.TYPE_6__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = call i32 @GETSTRUCT(%struct.TYPE_6__* %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %13, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @CatalogTupleDelete(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %67, %62, %56, %46
  br label %41

79:                                               ; preds = %41
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @systable_endscan(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @RowExclusiveLock, align 4
  %84 = call i32 @table_close(i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(%struct.TYPE_6__*) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
