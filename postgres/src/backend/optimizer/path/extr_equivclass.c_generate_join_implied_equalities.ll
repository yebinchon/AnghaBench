; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_generate_join_implied_equalities.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_equivclass.c_generate_join_implied_equalities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64 }

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @generate_join_implied_equalities(%struct.TYPE_14__* %0, i32 %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %17 = load i32*, i32** @NIL, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = call i64 @IS_OTHER_REL(%struct.TYPE_13__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bms_is_empty(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @bms_union(i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  br label %42

39:                                               ; preds = %4
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %24
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32* @get_common_eclass_indexes(%struct.TYPE_14__* %43, i32 %46, i32 %47)
  store i32* %48, i32** %13, align 8
  store i32 -1, i32* %14, align 4
  br label %49

49:                                               ; preds = %105, %73, %66, %42
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @bms_next_member(i32* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i64 @list_nth(i32 %57, i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %15, align 8
  %61 = load i32*, i32** @NIL, align 8
  store i32* %61, i32** %16, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %49

67:                                               ; preds = %54
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @list_length(i32 %70)
  %72 = icmp sle i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %49

74:                                               ; preds = %67
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @bms_overlap(i32 %77, i32 %78)
  %80 = call i32 @Assert(i32 %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %74
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32* @generate_join_implied_equalities_normal(%struct.TYPE_14__* %86, %struct.TYPE_15__* %87, i32 %88, i32 %89, i32 %90)
  store i32* %91, i32** %16, align 8
  br label %92

92:                                               ; preds = %85, %74
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %104 = call i32* @generate_join_implied_equalities_broken(%struct.TYPE_14__* %98, %struct.TYPE_15__* %99, i32 %100, i32 %101, i32 %102, %struct.TYPE_13__* %103)
  store i32* %104, i32** %16, align 8
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32* @list_concat(i32* %106, i32* %107)
  store i32* %108, i32** %9, align 8
  br label %49

109:                                              ; preds = %49
  %110 = load i32*, i32** %9, align 8
  ret i32* %110
}

declare dso_local i64 @IS_OTHER_REL(%struct.TYPE_13__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_is_empty(i32) #1

declare dso_local i32 @bms_union(i32, i32) #1

declare dso_local i32* @get_common_eclass_indexes(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i64 @list_nth(i32, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @bms_overlap(i32, i32) #1

declare dso_local i32* @generate_join_implied_equalities_normal(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32* @generate_join_implied_equalities_broken(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
