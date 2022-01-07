; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_make_join_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_make_join_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@T_SpecialJoinInfo = common dso_local global i32 0, align 4
@JOIN_INNER = common dso_local global i32 0, align 4
@NIL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @make_join_rel(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bms_overlap(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bms_union(i32 %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @join_is_legal(i32* %33, %struct.TYPE_19__* %34, %struct.TYPE_19__* %35, i32 %36, %struct.TYPE_18__** %9, i32* %10)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @bms_free(i32 %40)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %118

42:                                               ; preds = %3
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %14, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %6, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %7, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %51 = icmp eq %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %93

52:                                               ; preds = %49
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %9, align 8
  %53 = load i32, i32* @T_SpecialJoinInfo, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @JOIN_INNER, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = load i8*, i8** @NIL, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @NIL, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %52, %49
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %99 = call %struct.TYPE_19__* @build_join_rel(i32* %94, i32 %95, %struct.TYPE_19__* %96, %struct.TYPE_19__* %97, %struct.TYPE_18__* %98, i32** %13)
  store %struct.TYPE_19__* %99, %struct.TYPE_19__** %12, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %101 = call i64 @is_dummy_rel(%struct.TYPE_19__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @bms_free(i32 %104)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %4, align 8
  br label %118

107:                                              ; preds = %93
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @populate_joinrel_with_paths(i32* %108, %struct.TYPE_19__* %109, %struct.TYPE_19__* %110, %struct.TYPE_19__* %111, %struct.TYPE_18__* %112, i32* %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @bms_free(i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %117, %struct.TYPE_19__** %4, align 8
  br label %118

118:                                              ; preds = %107, %103, %39
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %119
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_overlap(i32, i32) #1

declare dso_local i32 @bms_union(i32, i32) #1

declare dso_local i32 @join_is_legal(i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, %struct.TYPE_18__**, i32*) #1

declare dso_local i32 @bms_free(i32) #1

declare dso_local %struct.TYPE_19__* @build_join_rel(i32*, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32**) #1

declare dso_local i64 @is_dummy_rel(%struct.TYPE_19__*) #1

declare dso_local i32 @populate_joinrel_with_paths(i32*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
