; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_watch.c_phpdbg_free_watch_element_tree.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_watch.c_phpdbg_free_watch_element_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phpdbg_free_watch_element_tree(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = call i32 @phpdbg_clean_watch_element(%struct.TYPE_5__* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = call i32 @phpdbg_free_watch_element(%struct.TYPE_5__* %23)
  br label %13

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %29, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %4, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = call i32 @phpdbg_free_watch_element(%struct.TYPE_5__* %34)
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = call i32 @phpdbg_free_watch_element(%struct.TYPE_5__* %37)
  ret void
}

declare dso_local i32 @phpdbg_clean_watch_element(%struct.TYPE_5__*) #1

declare dso_local i32 @phpdbg_free_watch_element(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
