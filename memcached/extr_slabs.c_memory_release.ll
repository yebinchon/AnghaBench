; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_memory_release.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_memory_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@mem_base = common dso_local global i32* null, align 8
@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mem_malloced = common dso_local global i64 0, align 8
@mem_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @memory_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memory_release() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = load i32*, i32** @mem_base, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %25

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 1), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  br label %25

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %19, %9
  %11 = load i64, i64* @mem_malloced, align 8
  %12 = load i64, i64* @mem_limit, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i8* (...) @get_page_from_global_pool()
  store i8* %15, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 8
  %23 = load i64, i64* @mem_malloced, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, i64* @mem_malloced, align 8
  br label %10

25:                                               ; preds = %4, %8, %17
  ret void
}

declare dso_local i8* @get_page_from_global_pool(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
