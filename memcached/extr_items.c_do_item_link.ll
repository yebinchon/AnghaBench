; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_do_item_link.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_do_item_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@ITEM_LINKED = common dso_local global i32 0, align 4
@ITEM_SLABBED = common dso_local global i32 0, align 4
@current_time = common dso_local global i32 0, align 4
@stats_state = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@stats = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@settings = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_item_link(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = call i32 @ITEM_key(%struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MEMCACHED_ITEM_LINK(i32 %6, i32 %9, i32 %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ITEM_LINKED, align 4
  %18 = load i32, i32* @ITEM_SLABBED, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @ITEM_LINKED, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @current_time, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = call i32 (...) @STATS_LOCK()
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = call i64 @ITEM_ntotal(%struct.TYPE_13__* %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @stats_state, i32 0, i32 1), align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @stats_state, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @stats_state, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @stats_state, i32 0, i32 0), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @stats, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @stats, i32 0, i32 0), align 4
  %43 = call i32 (...) @STATS_UNLOCK()
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @settings, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = call i32 (...) @get_cas_id()
  br label %50

49:                                               ; preds = %2
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call i32 @ITEM_set_cas(%struct.TYPE_13__* %44, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @assoc_insert(%struct.TYPE_13__* %53, i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = call i32 @item_link_q(%struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = call i32 @refcount_incr(%struct.TYPE_13__* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = call i32 @item_stats_sizes_add(%struct.TYPE_13__* %60)
  ret i32 1
}

declare dso_local i32 @MEMCACHED_ITEM_LINK(i32, i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i64 @ITEM_ntotal(%struct.TYPE_13__*) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i32 @ITEM_set_cas(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @get_cas_id(...) #1

declare dso_local i32 @assoc_insert(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @item_link_q(%struct.TYPE_13__*) #1

declare dso_local i32 @refcount_incr(%struct.TYPE_13__*) #1

declare dso_local i32 @item_stats_sizes_add(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
