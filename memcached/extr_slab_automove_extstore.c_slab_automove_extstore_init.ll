; ModuleID = '/home/carl/AnghaBench/memcached/extr_slab_automove_extstore.c_slab_automove_extstore_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slab_automove_extstore.c_slab_automove_extstore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.settings = type { i32, double, i32, i32 }
%struct.TYPE_3__ = type { i32, double, i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.settings*, i64, i32, i32 }

@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @slab_automove_extstore_init(%struct.settings* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.settings*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.settings* %0, %struct.settings** %3, align 8
  %7 = load %struct.settings*, %struct.settings** %3, align 8
  %8 = getelementptr inbounds %struct.settings, %struct.settings* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.settings*, %struct.settings** %3, align 8
  %11 = getelementptr inbounds %struct.settings, %struct.settings* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %5, align 8
  %13 = call i8* @calloc(i32 1, i32 72)
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %97

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i8* @calloc(i32 %21, i32 4)
  %23 = bitcast i8* %22 to %struct.TYPE_3__*
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @calloc(i32 %26, i32 4)
  %28 = bitcast i8* %27 to %struct.TYPE_3__*
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load double, double* %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store double %34, double* %36, align 8
  %37 = load %struct.settings*, %struct.settings** %3, align 8
  %38 = getelementptr inbounds %struct.settings, %struct.settings* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 4
  %42 = load %struct.settings*, %struct.settings** %3, align 8
  %43 = getelementptr inbounds %struct.settings, %struct.settings* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = load %struct.settings*, %struct.settings** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 7
  store %struct.settings* %49, %struct.settings** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp eq %struct.TYPE_3__* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %18
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = icmp eq %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %58, %18
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i32 @free(%struct.TYPE_3__* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = icmp ne %struct.TYPE_3__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @free(%struct.TYPE_3__* %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = call i32 @free(%struct.TYPE_3__* %84)
  store i8* null, i8** %2, align 8
  br label %97

86:                                               ; preds = %58
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @fill_item_stats_automove(i32 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fill_slab_stats_automove(i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = bitcast %struct.TYPE_3__* %95 to i8*
  store i8* %96, i8** %2, align 8
  br label %97

97:                                               ; preds = %86, %83, %17
  %98 = load i8*, i8** %2, align 8
  ret i8* %98
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @fill_item_stats_automove(i32) #1

declare dso_local i32 @fill_slab_stats_automove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
