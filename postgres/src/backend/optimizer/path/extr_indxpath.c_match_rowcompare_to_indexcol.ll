; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_match_rowcompare_to_indexcol.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_match_rowcompare_to_indexcol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64*, i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@BTREE_AM_OID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i32, %struct.TYPE_13__*)* @match_rowcompare_to_indexcol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @match_rowcompare_to_indexcol(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %8, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTREE_AM_OID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %125

27:                                               ; preds = %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @linitial(i32 %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %12, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @linitial(i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %13, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @linitial_oid(i32 %59)
  store i64 %60, i64* %15, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @linitial_oid(i32 %63)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call i32 @IndexCollMatchesExprColl(i64 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %27
  store i32* null, i32** %4, align 8
  br label %125

70:                                               ; preds = %27
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = call i64 @match_index_to_operand(i32* %71, i32 %72, %struct.TYPE_13__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @pull_varnos(i32* %78)
  %80 = call i32 @bms_is_member(i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @contain_volatile_functions(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i32 1, i32* %14, align 4
  br label %113

87:                                               ; preds = %82, %76, %70
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = call i64 @match_index_to_operand(i32* %88, i32 %89, %struct.TYPE_13__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @pull_varnos(i32* %95)
  %97 = call i32 @bms_is_member(i32 %94, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @contain_volatile_functions(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %15, align 8
  %105 = call i64 @get_commutator(i64 %104)
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* @InvalidOid, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32* null, i32** %4, align 8
  br label %125

110:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  br label %112

111:                                              ; preds = %99, %93, %87
  store i32* null, i32** %4, align 8
  br label %125

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112, %86
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @get_op_opfamily_strategy(i64 %114, i64 %115)
  switch i32 %116, label %124 [
    i32 128, label %117
    i32 129, label %117
    i32 131, label %117
    i32 130, label %117
  ]

117:                                              ; preds = %113, %113, %113, %113
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32* @expand_indexqual_rowcompare(%struct.TYPE_12__* %118, i32 %119, %struct.TYPE_13__* %120, i64 %121, i32 %122)
  store i32* %123, i32** %4, align 8
  br label %125

124:                                              ; preds = %113
  store i32* null, i32** %4, align 8
  br label %125

125:                                              ; preds = %124, %117, %111, %109, %69, %26
  %126 = load i32*, i32** %4, align 8
  ret i32* %126
}

declare dso_local i64 @linitial(i32) #1

declare dso_local i64 @linitial_oid(i32) #1

declare dso_local i32 @IndexCollMatchesExprColl(i64, i64) #1

declare dso_local i64 @match_index_to_operand(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @bms_is_member(i32, i32) #1

declare dso_local i32 @pull_varnos(i32*) #1

declare dso_local i32 @contain_volatile_functions(i32*) #1

declare dso_local i64 @get_commutator(i64) #1

declare dso_local i32 @get_op_opfamily_strategy(i64, i64) #1

declare dso_local i32* @expand_indexqual_rowcompare(%struct.TYPE_12__*, i32, %struct.TYPE_13__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
