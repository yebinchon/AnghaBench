; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/geqo/extr_geqo_main.c_geqo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/geqo/extr_geqo_main.c_geqo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32* }
%struct.TYPE_47__ = type { i32* }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_45__ = type { i32, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i64, i32 }

@Geqo_seed = common dso_local global i32 0, align 4
@Geqo_selection_bias = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"geqo failed to make a valid plan\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@best_plan = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @geqo(%struct.TYPE_46__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_46__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_47__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_48__*, align 8
  %10 = alloca %struct.TYPE_48__*, align 8
  %11 = alloca %struct.TYPE_48__*, align 8
  %12 = alloca %struct.TYPE_45__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = bitcast %struct.TYPE_47__* %7 to i8*
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %7, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %24 = load i32, i32* @Geqo_seed, align 4
  %25 = call i32 @geqo_set_seed(%struct.TYPE_46__* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @gimme_pool_size(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @gimme_number_generations(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.TYPE_45__* @alloc_pool(%struct.TYPE_46__* %30, i32 %31, i32 %32)
  store %struct.TYPE_45__* %33, %struct.TYPE_45__** %12, align 8
  %34 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %35 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %36 = call i32 @random_init_pool(%struct.TYPE_46__* %34, %struct.TYPE_45__* %35)
  %37 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %39 = call i32 @sort_pool(%struct.TYPE_46__* %37, %struct.TYPE_45__* %38)
  %40 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %41 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_48__* @alloc_chromo(%struct.TYPE_46__* %40, i32 %43)
  store %struct.TYPE_48__* %44, %struct.TYPE_48__** %9, align 8
  %45 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %46 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_48__* @alloc_chromo(%struct.TYPE_46__* %45, i32 %48)
  store %struct.TYPE_48__* %49, %struct.TYPE_48__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %75, %3
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %56 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %57 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %58 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %59 = load i32, i32* @Geqo_selection_bias, align 4
  %60 = call i32 @geqo_selection(%struct.TYPE_46__* %55, %struct.TYPE_48__* %56, %struct.TYPE_48__* %57, %struct.TYPE_45__* %58, i32 %59)
  %61 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %62 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @geqo_eval(%struct.TYPE_46__* %61, i32 %64, i32 %67)
  %69 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %72 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %73 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %74 = call i32 @spread_chromo(%struct.TYPE_46__* %71, %struct.TYPE_48__* %72, %struct.TYPE_45__* %73)
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_44__*, %struct.TYPE_44__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %15, align 8
  %86 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32* @gimme_tree(%struct.TYPE_46__* %86, i32* %87, i32 %90)
  store i32* %91, i32** %16, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32, i32* @ERROR, align 4
  %96 = call i32 (i32, i8*, ...) @elog(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %78
  %98 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %99 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %100 = call i32 @free_chromo(%struct.TYPE_46__* %98, %struct.TYPE_48__* %99)
  %101 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %102 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %103 = call i32 @free_chromo(%struct.TYPE_46__* %101, %struct.TYPE_48__* %102)
  %104 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %106 = call i32 @free_pool(%struct.TYPE_46__* %104, %struct.TYPE_45__* %105)
  %107 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  %109 = load i32*, i32** %16, align 8
  ret i32* %109
}

declare dso_local i32 @geqo_set_seed(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @gimme_pool_size(i32) #1

declare dso_local i32 @gimme_number_generations(i32) #1

declare dso_local %struct.TYPE_45__* @alloc_pool(%struct.TYPE_46__*, i32, i32) #1

declare dso_local i32 @random_init_pool(%struct.TYPE_46__*, %struct.TYPE_45__*) #1

declare dso_local i32 @sort_pool(%struct.TYPE_46__*, %struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_48__* @alloc_chromo(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @geqo_selection(%struct.TYPE_46__*, %struct.TYPE_48__*, %struct.TYPE_48__*, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @geqo_eval(%struct.TYPE_46__*, i32, i32) #1

declare dso_local i32 @spread_chromo(%struct.TYPE_46__*, %struct.TYPE_48__*, %struct.TYPE_45__*) #1

declare dso_local i32* @gimme_tree(%struct.TYPE_46__*, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @free_chromo(%struct.TYPE_46__*, %struct.TYPE_48__*) #1

declare dso_local i32 @free_pool(%struct.TYPE_46__*, %struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
