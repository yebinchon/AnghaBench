; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_do_item_link_fixup.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_do_item_link_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@heads = common dso_local global %struct.TYPE_11__** null, align 8
@tails = common dso_local global %struct.TYPE_11__** null, align 8
@sizes = common dso_local global i32* null, align 8
@sizes_bytes = common dso_local global i32* null, align 8
@stats_state = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@stats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_item_link_fixup(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = call i32 @ITEM_ntotal(%struct.TYPE_11__* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = call i32 @ITEM_key(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @hash(i32 %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @assoc_insert(%struct.TYPE_11__* %15, i32 %16)
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @heads, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 %21
  store %struct.TYPE_11__** %22, %struct.TYPE_11__*** %3, align 8
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @tails, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 %26
  store %struct.TYPE_11__** %27, %struct.TYPE_11__*** %4, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %38, align 8
  br label %39

39:                                               ; preds = %36, %32, %1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = icmp eq %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %50, align 8
  br label %51

51:                                               ; preds = %48, %44, %39
  %52 = load i32*, i32** @sizes, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** @sizes_bytes, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %59
  store i32 %66, i32* %64, align 4
  %67 = call i32 (...) @STATS_LOCK()
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @stats_state, i32 0, i32 0), align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @stats_state, i32 0, i32 0), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @stats_state, i32 0, i32 1), align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @stats_state, i32 0, i32 1), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @stats, i32 0, i32 0), align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @stats, i32 0, i32 0), align 4
  %75 = call i32 (...) @STATS_UNLOCK()
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = call i32 @item_stats_sizes_add(%struct.TYPE_11__* %76)
  ret void
}

declare dso_local i32 @ITEM_ntotal(%struct.TYPE_11__*) #1

declare dso_local i32 @hash(i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_11__*) #1

declare dso_local i32 @assoc_insert(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i32 @item_stats_sizes_add(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
