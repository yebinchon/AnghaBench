; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_generate_partitionwise_join_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_generate_partitionwise_join_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__**, i32 }

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_partitionwise_join_paths(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call i32 @IS_JOIN_REL(%struct.TYPE_11__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i32 @IS_PARTITIONED_REL(%struct.TYPE_11__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %74

20:                                               ; preds = %15
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Assert(i32 %23)
  %25 = call i32 (...) @check_stack_depth()
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %30, align 8
  store %struct.TYPE_11__** %31, %struct.TYPE_11__*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %58, %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %37, i64 %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %58

45:                                               ; preds = %36
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  call void @generate_partitionwise_join_paths(i32* %46, %struct.TYPE_11__* %47)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = call i32 @set_cheapest(%struct.TYPE_11__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = call i64 @IS_DUMMY_REL(%struct.TYPE_11__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %58

54:                                               ; preds = %45
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = call i32* @lappend(i32* %55, %struct.TYPE_11__* %56)
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %54, %53, %44
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %32

61:                                               ; preds = %32
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i32 @mark_dummy_rel(%struct.TYPE_11__* %65)
  br label %74

67:                                               ; preds = %61
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @add_paths_to_append_rel(i32* %68, %struct.TYPE_11__* %69, i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @list_free(i32* %72)
  br label %74

74:                                               ; preds = %67, %64, %19, %14
  ret void
}

declare dso_local i32 @IS_JOIN_REL(%struct.TYPE_11__*) #1

declare dso_local i32 @IS_PARTITIONED_REL(%struct.TYPE_11__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @set_cheapest(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_DUMMY_REL(%struct.TYPE_11__*) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mark_dummy_rel(%struct.TYPE_11__*) #1

declare dso_local i32 @add_paths_to_append_rel(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
