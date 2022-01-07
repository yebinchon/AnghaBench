; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_set_rel_pathlist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_set_rel_pathlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32 }
%struct.TYPE_40__ = type { i32, i64 }
%struct.TYPE_41__ = type { i32*, i32, i64 }

@RELKIND_FOREIGN_TABLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected rtekind: %d\00", align 1
@RELOPT_BASEREL = common dso_local global i64 0, align 8
@BMS_SINGLETON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_42__*, %struct.TYPE_40__*, i32, %struct.TYPE_41__*)* @set_rel_pathlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rel_pathlist(%struct.TYPE_42__* %0, %struct.TYPE_40__* %1, i32 %2, %struct.TYPE_41__* %3) #0 {
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_41__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %5, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_41__* %3, %struct.TYPE_41__** %8, align 8
  %9 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %10 = call i64 @IS_DUMMY_REL(%struct.TYPE_40__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %83

13:                                               ; preds = %4
  %14 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %20 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %23 = call i32 @set_append_rel_pathlist(%struct.TYPE_42__* %19, %struct.TYPE_40__* %20, i32 %21, %struct.TYPE_41__* %22)
  br label %82

24:                                               ; preds = %13
  %25 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %75 [
    i32 132, label %28
    i32 130, label %56
    i32 134, label %57
    i32 129, label %62
    i32 128, label %67
    i32 135, label %72
    i32 133, label %73
    i32 131, label %74
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RELKIND_FOREIGN_TABLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %36 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %38 = call i32 @set_foreign_pathlist(%struct.TYPE_42__* %35, %struct.TYPE_40__* %36, %struct.TYPE_41__* %37)
  br label %55

39:                                               ; preds = %28
  %40 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %46 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %48 = call i32 @set_tablesample_rel_pathlist(%struct.TYPE_42__* %45, %struct.TYPE_40__* %46, %struct.TYPE_41__* %47)
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %51 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %52 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %53 = call i32 @set_plain_rel_pathlist(%struct.TYPE_42__* %50, %struct.TYPE_40__* %51, %struct.TYPE_41__* %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %34
  br label %81

56:                                               ; preds = %24
  br label %81

57:                                               ; preds = %24
  %58 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %59 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %60 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %61 = call i32 @set_function_pathlist(%struct.TYPE_42__* %58, %struct.TYPE_40__* %59, %struct.TYPE_41__* %60)
  br label %81

62:                                               ; preds = %24
  %63 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %64 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %65 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %66 = call i32 @set_tablefunc_pathlist(%struct.TYPE_42__* %63, %struct.TYPE_40__* %64, %struct.TYPE_41__* %65)
  br label %81

67:                                               ; preds = %24
  %68 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %71 = call i32 @set_values_pathlist(%struct.TYPE_42__* %68, %struct.TYPE_40__* %69, %struct.TYPE_41__* %70)
  br label %81

72:                                               ; preds = %24
  br label %81

73:                                               ; preds = %24
  br label %81

74:                                               ; preds = %24
  br label %81

75:                                               ; preds = %24
  %76 = load i32, i32* @ERROR, align 4
  %77 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @elog(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %74, %73, %72, %67, %62, %57, %56, %55
  br label %82

82:                                               ; preds = %81, %18
  br label %83

83:                                               ; preds = %82, %12
  br i1 true, label %84, label %90

84:                                               ; preds = %83
  %85 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %89 = call i32 @set_rel_pathlist_hook(%struct.TYPE_42__* %85, %struct.TYPE_40__* %86, i32 %87, %struct.TYPE_41__* %88)
  br label %90

90:                                               ; preds = %84, %83
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RELOPT_BASEREL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @bms_membership(i32 %99)
  %101 = load i64, i64* @BMS_SINGLETON, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %106 = call i32 @generate_gather_paths(%struct.TYPE_42__* %104, %struct.TYPE_40__* %105, i32 0)
  br label %107

107:                                              ; preds = %103, %96, %90
  %108 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %109 = call i32 @set_cheapest(%struct.TYPE_40__* %108)
  ret void
}

declare dso_local i64 @IS_DUMMY_REL(%struct.TYPE_40__*) #1

declare dso_local i32 @set_append_rel_pathlist(%struct.TYPE_42__*, %struct.TYPE_40__*, i32, %struct.TYPE_41__*) #1

declare dso_local i32 @set_foreign_pathlist(%struct.TYPE_42__*, %struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @set_tablesample_rel_pathlist(%struct.TYPE_42__*, %struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @set_plain_rel_pathlist(%struct.TYPE_42__*, %struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @set_function_pathlist(%struct.TYPE_42__*, %struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @set_tablefunc_pathlist(%struct.TYPE_42__*, %struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @set_values_pathlist(%struct.TYPE_42__*, %struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @set_rel_pathlist_hook(%struct.TYPE_42__*, %struct.TYPE_40__*, i32, %struct.TYPE_41__*) #1

declare dso_local i64 @bms_membership(i32) #1

declare dso_local i32 @generate_gather_paths(%struct.TYPE_42__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @set_cheapest(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
