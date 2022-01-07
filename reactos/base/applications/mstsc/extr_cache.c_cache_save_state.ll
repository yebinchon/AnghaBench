; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_cache.c_cache_save_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_cache.c_cache_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@g_bmpcache = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Saving cache state for bitmap cache %d...\00", align 1
@g_bmpcache_lru = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c" %d stamps written.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_save_state() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %44, %0
  %5 = load i64, i64* %1, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @g_bmpcache, align 8
  %7 = call i64 @NUM_ELEMENTS(%struct.TYPE_3__** %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %4
  %10 = load i64, i64* %1, align 8
  %11 = call i64 @IS_PERSISTENT(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load i64, i64* %1, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @DEBUG_RDP5(i8* %15)
  %17 = load i32*, i32** @g_bmpcache_lru, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %24, %13
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i64, i64* %1, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* %2, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %2, align 8
  %29 = call i32 @pstcache_touch_bitmap(i64 %25, i32 %26, i64 %28)
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @g_bmpcache, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i64, i64* %2, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @DEBUG_RDP5(i8* %41)
  br label %43

43:                                               ; preds = %39, %9
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %1, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %1, align 8
  br label %4

47:                                               ; preds = %4
  ret void
}

declare dso_local i64 @NUM_ELEMENTS(%struct.TYPE_3__**) #1

declare dso_local i64 @IS_PERSISTENT(i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @pstcache_touch_bitmap(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
