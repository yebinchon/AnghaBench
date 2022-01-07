; ModuleID = '/home/carl/AnghaBench/memcached/extr_slab_automove.c_slab_automove_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slab_automove.c_slab_automove_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.settings = type { i32, double }
%struct.TYPE_3__ = type { i32, double, i32, i32, i32* }

@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @slab_automove_init(%struct.settings* %0) #0 {
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
  %13 = call i8* @calloc(i32 1, i32 32)
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i8* @calloc(i32 %21, i32 4)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load double, double* %5, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store double %29, double* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = call i32 @free(%struct.TYPE_3__* %37)
  store i8* null, i8** %2, align 8
  br label %50

39:                                               ; preds = %18
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fill_item_stats_automove(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @fill_slab_stats_automove(i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = bitcast %struct.TYPE_3__* %48 to i8*
  store i8* %49, i8** %2, align 8
  br label %50

50:                                               ; preds = %39, %36, %17
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
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
