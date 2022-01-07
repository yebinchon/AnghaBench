; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_inherits.c_find_inheritance_children.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_inherits.c_find_inheritance_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@InheritsRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhparent = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsParentIndexId = common dso_local global i32 0, align 4
@oid_cmp = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_inheritance_children(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @has_subclass(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %3, align 8
  br label %125

22:                                               ; preds = %2
  store i32 32, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i64 @palloc(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* @InheritsRelationId, align 4
  %30 = load i32, i32* @AccessShareLock, align 4
  %31 = call i32 @table_open(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %33 = load i32, i32* @Anum_pg_inherits_inhparent, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_OIDEQ, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ObjectIdGetDatum(i32 %36)
  %38 = call i32 @ScanKeyInit(i32* %32, i32 %33, i32 %34, i32 %35, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @InheritsParentIndexId, align 4
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %42 = call i32 @systable_beginscan(i32 %39, i32 %40, i32 1, i32* null, i32 1, i32* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %66, %22
  %44 = load i32, i32* %8, align 4
  %45 = call i32* @systable_getnext(i32 %44)
  store i32* %45, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @GETSTRUCT(i32* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i64 @repalloc(i32* %59, i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %12, align 8
  br label %66

66:                                               ; preds = %56, %47
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @systable_endscan(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @AccessShareLock, align 4
  %78 = call i32 @table_close(i32 %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @oid_cmp, align 4
  %85 = call i32 @qsort(i32* %82, i32 %83, i32 4, i32 %84)
  br label %86

86:                                               ; preds = %81, %73
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %118, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %87
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @NoLock, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %91
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @LockRelationOid(i32 %101, i32 %102)
  %104 = load i32, i32* @RELOID, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @ObjectIdGetDatum(i32 %105)
  %107 = call i32 @SearchSysCacheExists1(i32 %104, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @UnlockRelationOid(i32 %110, i32 %111)
  br label %118

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %91
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32* @lappend_oid(i32* %115, i32 %116)
  store i32* %117, i32** %6, align 8
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %87

121:                                              ; preds = %87
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @pfree(i32* %122)
  %124 = load i32*, i32** %6, align 8
  store i32* %124, i32** %3, align 8
  br label %125

125:                                              ; preds = %121, %20
  %126 = load i32*, i32** %3, align 8
  ret i32* %126
}

declare dso_local i32 @has_subclass(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local i32 @SearchSysCacheExists1(i32, i32) #1

declare dso_local i32 @UnlockRelationOid(i32, i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
