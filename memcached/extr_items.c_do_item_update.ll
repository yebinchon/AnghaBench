; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_do_item_update.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_do_item_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32 }

@settings = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ITEM_SLABBED = common dso_local global i32 0, align 4
@ITEM_LINKED = common dso_local global i32 0, align 4
@COLD_LRU = common dso_local global i64 0, align 8
@ITEM_ACTIVE = common dso_local global i32 0, align 4
@current_time = common dso_local global i64 0, align 8
@WARM_LRU = common dso_local global i32 0, align 4
@ITEM_UPDATE_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_item_update(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = call i32 @ITEM_key(%struct.TYPE_10__* %3)
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MEMCACHED_ITEM_UPDATE(i32 %4, i32 %7, i32 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @settings, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ITEM_SLABBED, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ITEM_LINKED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %14
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = call i64 @ITEM_lruid(%struct.TYPE_10__* %30)
  %32 = load i64, i64* @COLD_LRU, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ITEM_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load i64, i64* @current_time, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = call i32 @item_unlink_q(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = call i32 @ITEM_clsid(%struct.TYPE_10__* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @WARM_LRU, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @ITEM_ACTIVE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = call i32 @item_link_q_warm(%struct.TYPE_10__* %62)
  br label %68

64:                                               ; preds = %34, %29
  %65 = load i64, i64* @current_time, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %41
  br label %69

69:                                               ; preds = %68, %14
  br label %103

70:                                               ; preds = %1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @current_time, align 8
  %75 = load i64, i64* @ITEM_UPDATE_INTERVAL, align 8
  %76 = sub nsw i64 %74, %75
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %70
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ITEM_SLABBED, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ITEM_LINKED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %78
  %94 = load i64, i64* @current_time, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = call i32 @item_unlink_q(%struct.TYPE_10__* %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = call i32 @item_link_q(%struct.TYPE_10__* %99)
  br label %101

101:                                              ; preds = %93, %78
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102, %69
  ret void
}

declare dso_local i32 @MEMCACHED_ITEM_UPDATE(i32, i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ITEM_lruid(%struct.TYPE_10__*) #1

declare dso_local i32 @item_unlink_q(%struct.TYPE_10__*) #1

declare dso_local i32 @ITEM_clsid(%struct.TYPE_10__*) #1

declare dso_local i32 @item_link_q_warm(%struct.TYPE_10__*) #1

declare dso_local i32 @item_link_q(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
