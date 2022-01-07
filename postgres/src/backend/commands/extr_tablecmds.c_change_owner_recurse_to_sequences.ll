; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_change_owner_recurse_to_sequences.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_change_owner_recurse_to_sequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@DependRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@DependReferenceIndexId = common dso_local global i32 0, align 4
@DEPENDENCY_AUTO = common dso_local global i64 0, align 8
@DEPENDENCY_INTERNAL = common dso_local global i64 0, align 8
@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @change_owner_recurse_to_sequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_owner_recurse_to_sequences(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @DependRelationId, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %17 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_OIDEQ, align 4
  %20 = load i64, i64* @RelationRelationId, align 8
  %21 = call i32 @ObjectIdGetDatum(i64 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %24 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %25 = load i32, i32* @BTEqualStrategyNumber, align 4
  %26 = load i32, i32* @F_OIDEQ, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ObjectIdGetDatum(i64 %27)
  %29 = call i32 @ScanKeyInit(i32* %23, i32 %24, i32 %25, i32 %26, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DependReferenceIndexId, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %33 = call i32 @systable_beginscan(i32 %30, i32 %31, i32 1, i32* null, i32 2, i32* %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %88, %84, %71, %3
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @systable_getnext(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = call i64 @HeapTupleIsValid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %98

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @GETSTRUCT(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %11, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RelationRelationId, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %71, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DEPENDENCY_AUTO, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DEPENDENCY_INTERNAL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %65, %54, %48, %39
  br label %34

72:                                               ; preds = %65, %59
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @relation_open(i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call %struct.TYPE_4__* @RelationGetForm(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @relation_close(i32 %85, i32 %86)
  br label %34

88:                                               ; preds = %72
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @ATExecChangeOwner(i32 %91, i64 %92, i32 1, i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @NoLock, align 4
  %97 = call i32 @relation_close(i32 %95, i32 %96)
  br label %34

98:                                               ; preds = %34
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @systable_endscan(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @AccessShareLock, align 4
  %103 = call i32 @relation_close(i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local %struct.TYPE_4__* @RelationGetForm(i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i32 @ATExecChangeOwner(i32, i64, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
