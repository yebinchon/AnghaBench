; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_gc.c_free_heap.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_gc.c_free_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@MRB_HEAP_PAGE_SIZE = common dso_local global i32 0, align 4
@MRB_TT_FREE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*)* @free_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_heap(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  br label %12

12:                                               ; preds = %49, %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call %struct.TYPE_14__* @objects(%struct.TYPE_12__* %20)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %7, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = load i32, i32* @MRB_HEAP_PAGE_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i64 %24
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %8, align 8
  br label %26

26:                                               ; preds = %46, %15
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = icmp ult %struct.TYPE_14__* %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MRB_TT_FREE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @obj_free(i32* %39, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %30
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 1
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %7, align 8
  br label %26

49:                                               ; preds = %26
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = call i32 @mrb_free(i32* %50, %struct.TYPE_12__* %51)
  br label %12

53:                                               ; preds = %12
  ret void
}

declare dso_local %struct.TYPE_14__* @objects(%struct.TYPE_12__*) #1

declare dso_local i32 @obj_free(i32*, i32*, i32) #1

declare dso_local i32 @mrb_free(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
