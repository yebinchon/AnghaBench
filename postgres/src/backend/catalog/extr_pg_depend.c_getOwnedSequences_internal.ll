; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_getOwnedSequences_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_getOwnedSequences_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i8, i32 }

@NIL = common dso_local global i32* null, align 8
@DependRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DependReferenceIndexId = common dso_local global i32 0, align 4
@DEPENDENCY_AUTO = common dso_local global i8 0, align 1
@DEPENDENCY_INTERNAL = common dso_local global i8 0, align 1
@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i8)* @getOwnedSequences_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getOwnedSequences_internal(i64 %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %13 = load i32*, i32** @NIL, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* @DependRelationId, align 4
  %15 = load i32, i32* @AccessShareLock, align 4
  %16 = call i32 @table_open(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %18 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_OIDEQ, align 4
  %21 = load i64, i64* @RelationRelationId, align 8
  %22 = call i32 @ObjectIdGetDatum(i64 %21)
  %23 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %25 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ObjectIdGetDatum(i64 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %35 = load i32, i32* @Anum_pg_depend_refobjsubid, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_INT4EQ, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @Int32GetDatum(i64 %38)
  %40 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %33, %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DependReferenceIndexId, align 4
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 3, i32 2
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %49 = call i32 @systable_beginscan(i32 %42, i32 %43, i32 1, i32* null, i32 %47, i32* %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %116, %41
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @systable_getnext(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = call i64 @HeapTupleIsValid(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %117

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @GETSTRUCT(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %12, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RelationRelationId, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %55
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %65
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %116

75:                                               ; preds = %70
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 8
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @DEPENDENCY_AUTO, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %75
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i8, i8* %85, align 8
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @DEPENDENCY_INTERNAL, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %83, %75
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @get_rel_relkind(i32 %94)
  %96 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %91
  %99 = load i8, i8* %6, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i8, i8* %103, align 8
  %105 = sext i8 %104 to i32
  %106 = load i8, i8* %6, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101, %98
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @lappend_oid(i32* %110, i32 %113)
  store i32* %114, i32** %7, align 8
  br label %115

115:                                              ; preds = %109, %101
  br label %116

116:                                              ; preds = %115, %91, %83, %70, %65, %55
  br label %50

117:                                              ; preds = %50
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @systable_endscan(i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @AccessShareLock, align 4
  %122 = call i32 @table_close(i32 %120, i32 %121)
  %123 = load i32*, i32** %7, align 8
  ret i32* %123
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @Int32GetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @get_rel_relkind(i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
