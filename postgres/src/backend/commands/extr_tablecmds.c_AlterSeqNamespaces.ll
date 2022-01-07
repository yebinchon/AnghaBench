; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterSeqNamespaces.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterSeqNamespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32)* @AlterSeqNamespaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AlterSeqNamespaces(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* @DependRelationId, align 4
  %20 = load i32, i32* @AccessShareLock, align 4
  %21 = call i32 @table_open(i32 %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %23 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_OIDEQ, align 4
  %26 = load i64, i64* @RelationRelationId, align 8
  %27 = call i32 @ObjectIdGetDatum(i64 %26)
  %28 = call i32 @ScanKeyInit(i32* %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %30 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_OIDEQ, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @RelationGetRelid(i32 %33)
  %35 = call i32 @ObjectIdGetDatum(i64 %34)
  %36 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @DependReferenceIndexId, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %40 = call i32 @systable_beginscan(i32 %37, i32 %38, i32 1, i32* null, i32 2, i32* %39)
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %95, %91, %78, %6
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @systable_getnext(i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = call i64 @HeapTupleIsValid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %114

46:                                               ; preds = %41
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @GETSTRUCT(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %17, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %46
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RelationRelationId, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %78, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DEPENDENCY_AUTO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DEPENDENCY_INTERNAL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %72, %61, %55, %46
  br label %41

79:                                               ; preds = %72, %66
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @relation_open(i32 %82, i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = call %struct.TYPE_4__* @RelationGetForm(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @relation_close(i32 %92, i32 %93)
  br label %41

95:                                               ; preds = %79
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @AlterRelationNamespaceInternal(i32 %96, i32 %99, i32 %100, i32 %101, i32 1, i32* %102)
  %104 = load i32, i32* %18, align 4
  %105 = call %struct.TYPE_4__* @RelationGetForm(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @AlterTypeNamespaceInternal(i32 %107, i32 %108, i32 0, i32 0, i32* %109)
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @NoLock, align 4
  %113 = call i32 @relation_close(i32 %111, i32 %112)
  br label %41

114:                                              ; preds = %41
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @systable_endscan(i32 %115)
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @AccessShareLock, align 4
  %119 = call i32 @relation_close(i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @RelationGetRelid(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local %struct.TYPE_4__* @RelationGetForm(i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i32 @AlterRelationNamespaceInternal(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @AlterTypeNamespaceInternal(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
