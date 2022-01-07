; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_add_child_join_rel_equivalences.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_add_child_join_rel_equivalences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64 }

@BMS_MULTIPLE = common dso_local global i64 0, align 8
@RELOPT_JOINREL = common dso_local global i64 0, align 8
@RELOPT_OTHER_JOINREL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_child_join_rel_equivalences(%struct.TYPE_15__* %0, i32 %1, i32** %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %10, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = call i64 @IS_JOIN_REL(%struct.TYPE_14__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = call i64 @IS_JOIN_REL(%struct.TYPE_14__* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %5
  %36 = phi i1 [ false, %5 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32* @get_eclass_indexes_for_relids(%struct.TYPE_15__* %39, i32 %40)
  store i32* %41, i32** %13, align 8
  store i32 -1, i32* %14, align 4
  br label %42

42:                                               ; preds = %175, %58, %35
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @bms_next_member(i32* %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %176

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i64 @list_nth(i32 %50, i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %15, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %42

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bms_overlap(i32 %60, i32 %63)
  %65 = call i32 @Assert(i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @list_length(i32 %68)
  store i32 %69, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %172, %59
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %175

74:                                               ; preds = %70
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i64 @list_nth(i32 %77, i32 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %18, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %172

86:                                               ; preds = %74
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %172

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @bms_membership(i32 %95)
  %97 = load i64, i64* @BMS_MULTIPLE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %172

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @bms_overlap(i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %171

107:                                              ; preds = %100
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RELOPT_JOINREL, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = load i32, i32* %7, align 4
  %120 = load i32**, i32*** %8, align 8
  %121 = call i64 @adjust_appendrel_attrs(%struct.TYPE_15__* %114, i32* %118, i32 %119, i32** %120)
  %122 = inttoptr i64 %121 to i32*
  store i32* %122, i32** %19, align 8
  br label %140

123:                                              ; preds = %107
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @RELOPT_OTHER_JOINREL, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @Assert(i32 %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @adjust_appendrel_attrs_multilevel(%struct.TYPE_15__* %131, i32* %135, i32 %136, i32 %137)
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %19, align 8
  br label %140

140:                                              ; preds = %123, %113
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @bms_difference(i32 %143, i32 %144)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @bms_add_members(i32 %146, i32 %147)
  store i32 %148, i32* %20, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @bms_overlap(i32 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %140
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @adjust_child_relids_multilevel(%struct.TYPE_15__* %157, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %21, align 4
  br label %162

162:                                              ; preds = %156, %140
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* %21, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @add_eq_member(%struct.TYPE_17__* %163, i32* %164, i32 %165, i32 %166, i32 1, i32 %169)
  br label %171

171:                                              ; preds = %162, %100
  br label %172

172:                                              ; preds = %171, %99, %91, %85
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %17, align 4
  br label %70

175:                                              ; preds = %70
  br label %42

176:                                              ; preds = %42
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IS_JOIN_REL(%struct.TYPE_14__*) #1

declare dso_local i32* @get_eclass_indexes_for_relids(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i64 @list_nth(i32, i32) #1

declare dso_local i32 @bms_overlap(i32, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @bms_membership(i32) #1

declare dso_local i64 @adjust_appendrel_attrs(%struct.TYPE_15__*, i32*, i32, i32**) #1

declare dso_local i64 @adjust_appendrel_attrs_multilevel(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @bms_difference(i32, i32) #1

declare dso_local i32 @bms_add_members(i32, i32) #1

declare dso_local i32 @adjust_child_relids_multilevel(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @add_eq_member(%struct.TYPE_17__*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
