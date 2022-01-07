; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_lru_maintainer_bumps.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_lru_maintainer_bumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32 }

@bump_buf_lock = common dso_local global i32 0, align 4
@bump_buf_head = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lru_maintainer_bumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_maintainer_bumps() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @pthread_mutex_lock(i32* @bump_buf_lock)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bump_buf_head, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %1, align 8
  br label %8

8:                                                ; preds = %67, %0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %71

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @bipbuf_peek_all(i32 %17, i32* %3)
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %67

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %31, %26
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @item_lock(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @do_item_update(i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @do_item_remove(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @item_unlock(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 1
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 %51, 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @pthread_mutex_lock(i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @bipbuf_poll(i32 %60, i32 %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %2, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @pthread_mutex_unlock(i32* %65)
  br label %67

67:                                               ; preds = %54, %25
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %1, align 8
  br label %8

71:                                               ; preds = %8
  %72 = call i32 @pthread_mutex_unlock(i32* @bump_buf_lock)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @bipbuf_peek_all(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @item_lock(i32) #1

declare dso_local i32 @do_item_update(i32) #1

declare dso_local i32 @do_item_remove(i32) #1

declare dso_local i32 @item_unlock(i32) #1

declare dso_local i64 @bipbuf_poll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
