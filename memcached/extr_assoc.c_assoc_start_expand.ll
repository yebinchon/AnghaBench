; ModuleID = '/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_start_expand.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_start_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maintenance_lock = common dso_local global i32 0, align 4
@hashpower = common dso_local global i64 0, align 8
@HASHPOWER_MAX = common dso_local global i64 0, align 8
@maintenance_cond = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assoc_start_expand(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 @pthread_mutex_trylock(i32* @maintenance_lock)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i64, i64* @hashpower, align 8
  %8 = call i32 @hashsize(i64 %7)
  %9 = mul nsw i32 %8, 3
  %10 = sdiv i32 %9, 2
  %11 = icmp sgt i32 %6, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load i64, i64* @hashpower, align 8
  %14 = load i64, i64* @HASHPOWER_MAX, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @pthread_cond_signal(i32* @maintenance_cond)
  br label %18

18:                                               ; preds = %16, %12, %5
  %19 = call i32 @pthread_mutex_unlock(i32* @maintenance_lock)
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

declare dso_local i64 @pthread_mutex_trylock(i32*) #1

declare dso_local i32 @hashsize(i64) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
