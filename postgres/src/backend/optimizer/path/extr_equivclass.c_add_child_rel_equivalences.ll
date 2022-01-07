; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_add_child_rel_equivalences.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_add_child_rel_equivalences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i64, i64 }

@RELOPT_BASEREL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_child_rel_equivalences(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = call i32 @IS_SIMPLE_REL(%struct.TYPE_12__* %29)
  %31 = call i32 @Assert(i32 %30)
  store i32 -1, i32* %11, align 4
  br label %32

32:                                               ; preds = %158, %50, %4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @bms_next_member(i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %159

39:                                               ; preds = %32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @list_nth(i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %12, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %32

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bms_is_subset(i32 %52, i32 %55)
  %57 = call i32 @Assert(i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @list_length(i32 %60)
  store i32 %61, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %155, %51
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %158

66:                                               ; preds = %62
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @list_nth(i32 %69, i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %15, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %155

78:                                               ; preds = %66
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %155

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @bms_overlap(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %154

91:                                               ; preds = %84
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @RELOPT_BASEREL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = call i64 @adjust_appendrel_attrs(%struct.TYPE_13__* %98, i32* %102, i32 1, i32** %6)
  %104 = inttoptr i64 %103 to i32*
  store i32* %104, i32** %16, align 8
  br label %115

105:                                              ; preds = %91
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @adjust_appendrel_attrs_multilevel(%struct.TYPE_13__* %106, i32* %110, i32 %111, i32 %112)
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %16, align 8
  br label %115

115:                                              ; preds = %105, %97
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @bms_difference(i32 %118, i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @bms_add_members(i32 %121, i32 %122)
  store i32 %123, i32* %17, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i64 @bms_overlap(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %115
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @bms_difference(i32 %132, i32 %133)
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @bms_add_members(i32 %135, i32 %136)
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %131, %115
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @add_eq_member(%struct.TYPE_15__* %139, i32* %140, i32 %141, i32 %142, i32 1, i32 %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @bms_add_member(i32 %149, i32 %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %138, %84
  br label %155

155:                                              ; preds = %154, %83, %77
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %62

158:                                              ; preds = %62
  br label %32

159:                                              ; preds = %32
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IS_SIMPLE_REL(%struct.TYPE_12__*) #1

declare dso_local i32 @bms_next_member(i32, i32) #1

declare dso_local i64 @list_nth(i32, i32) #1

declare dso_local i32 @bms_is_subset(i32, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @bms_overlap(i32, i32) #1

declare dso_local i64 @adjust_appendrel_attrs(%struct.TYPE_13__*, i32*, i32, i32**) #1

declare dso_local i64 @adjust_appendrel_attrs_multilevel(%struct.TYPE_13__*, i32*, i32, i32) #1

declare dso_local i32 @bms_difference(i32, i32) #1

declare dso_local i32 @bms_add_members(i32, i32) #1

declare dso_local i32 @add_eq_member(%struct.TYPE_15__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bms_add_member(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
