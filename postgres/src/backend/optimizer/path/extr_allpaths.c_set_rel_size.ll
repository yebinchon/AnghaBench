; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_set_rel_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_set_rel_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i32, i64 }
%struct.TYPE_31__ = type { i32, i32*, i32, i64 }

@RELOPT_BASEREL = common dso_local global i64 0, align 8
@RELKIND_FOREIGN_TABLE = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected rtekind: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_30__*, i32, %struct.TYPE_31__*)* @set_rel_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rel_size(i32* %0, %struct.TYPE_30__* %1, i32 %2, %struct.TYPE_31__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_31__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_31__* %3, %struct.TYPE_31__** %8, align 8
  %9 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RELOPT_BASEREL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %18 = call i64 @relation_excluded_by_constraints(i32* %15, %struct.TYPE_30__* %16, %struct.TYPE_31__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %22 = call i32 @set_dummy_rel_pathlist(%struct.TYPE_30__* %21)
  br label %128

23:                                               ; preds = %14, %4
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %33 = call i32 @set_append_rel_size(i32* %29, %struct.TYPE_30__* %30, i32 %31, %struct.TYPE_31__* %32)
  br label %127

34:                                               ; preds = %23
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %120 [
    i32 132, label %38
    i32 130, label %76
    i32 134, label %82
    i32 129, label %86
    i32 128, label %90
    i32 135, label %94
    i32 133, label %110
    i32 131, label %115
  ]

38:                                               ; preds = %34
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RELKIND_FOREIGN_TABLE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %48 = call i32 @set_foreign_size(i32* %45, %struct.TYPE_30__* %46, %struct.TYPE_31__* %47)
  br label %75

49:                                               ; preds = %38
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RELKIND_PARTITIONED_TABLE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %57 = call i32 @set_dummy_rel_pathlist(%struct.TYPE_30__* %56)
  br label %74

58:                                               ; preds = %49
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %67 = call i32 @set_tablesample_rel_size(i32* %64, %struct.TYPE_30__* %65, %struct.TYPE_31__* %66)
  br label %73

68:                                               ; preds = %58
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %72 = call i32 @set_plain_rel_size(i32* %69, %struct.TYPE_30__* %70, %struct.TYPE_31__* %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %44
  br label %126

76:                                               ; preds = %34
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %81 = call i32 @set_subquery_pathlist(i32* %77, %struct.TYPE_30__* %78, i32 %79, %struct.TYPE_31__* %80)
  br label %126

82:                                               ; preds = %34
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %85 = call i32 @set_function_size_estimates(i32* %83, %struct.TYPE_30__* %84)
  br label %126

86:                                               ; preds = %34
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %89 = call i32 @set_tablefunc_size_estimates(i32* %87, %struct.TYPE_30__* %88)
  br label %126

90:                                               ; preds = %34
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %93 = call i32 @set_values_size_estimates(i32* %91, %struct.TYPE_30__* %92)
  br label %126

94:                                               ; preds = %34
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %103 = call i32 @set_worktable_pathlist(i32* %100, %struct.TYPE_30__* %101, %struct.TYPE_31__* %102)
  br label %109

104:                                              ; preds = %94
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %108 = call i32 @set_cte_pathlist(i32* %105, %struct.TYPE_30__* %106, %struct.TYPE_31__* %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %126

110:                                              ; preds = %34
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %114 = call i32 @set_namedtuplestore_pathlist(i32* %111, %struct.TYPE_30__* %112, %struct.TYPE_31__* %113)
  br label %126

115:                                              ; preds = %34
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %119 = call i32 @set_result_pathlist(i32* %116, %struct.TYPE_30__* %117, %struct.TYPE_31__* %118)
  br label %126

120:                                              ; preds = %34
  %121 = load i32, i32* @ERROR, align 4
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @elog(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %120, %115, %110, %109, %90, %86, %82, %76, %75
  br label %127

127:                                              ; preds = %126, %28
  br label %128

128:                                              ; preds = %127, %20
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %135 = call i64 @IS_DUMMY_REL(%struct.TYPE_30__* %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %133, %128
  %138 = phi i1 [ true, %128 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @Assert(i32 %139)
  ret void
}

declare dso_local i64 @relation_excluded_by_constraints(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @set_dummy_rel_pathlist(%struct.TYPE_30__*) #1

declare dso_local i32 @set_append_rel_size(i32*, %struct.TYPE_30__*, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @set_foreign_size(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @set_tablesample_rel_size(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @set_plain_rel_size(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @set_subquery_pathlist(i32*, %struct.TYPE_30__*, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @set_function_size_estimates(i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @set_tablefunc_size_estimates(i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @set_values_size_estimates(i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @set_worktable_pathlist(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @set_cte_pathlist(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @set_namedtuplestore_pathlist(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @set_result_pathlist(i32*, %struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IS_DUMMY_REL(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
