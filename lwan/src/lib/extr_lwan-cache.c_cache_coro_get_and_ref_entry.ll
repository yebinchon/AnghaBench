; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_coro_get_and_ref_entry.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_coro_get_and_ref_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.cache = type { i32 }
%struct.coro = type { i32 }

@GET_AND_REF_TRIES = common dso_local global i32 0, align 4
@cache_entry_unref_defer = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@CONN_CORO_YIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_entry* @cache_coro_get_and_ref_entry(%struct.cache* %0, %struct.coro* %1, i8* %2) #0 {
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.cache*, align 8
  %6 = alloca %struct.coro*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry*, align 8
  store %struct.cache* %0, %struct.cache** %5, align 8
  store %struct.coro* %1, %struct.coro** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GET_AND_REF_TRIES, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.cache*, %struct.cache** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct.cache_entry* @cache_get_and_ref_entry(%struct.cache* %16, i8* %17, i32* %9)
  store %struct.cache_entry* %18, %struct.cache_entry** %10, align 8
  %19 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %20 = call i64 @LIKELY(%struct.cache_entry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.coro*, %struct.coro** %6, align 8
  %24 = load i32, i32* @cache_entry_unref_defer, align 4
  %25 = load %struct.cache*, %struct.cache** %5, align 8
  %26 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %27 = call i32 @coro_defer2(%struct.coro* %23, i32 %24, %struct.cache* %25, %struct.cache_entry* %26)
  %28 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  store %struct.cache_entry* %28, %struct.cache_entry** %4, align 8
  br label %43

29:                                               ; preds = %15
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @EWOULDBLOCK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.coro*, %struct.coro** %6, align 8
  %35 = load i32, i32* @CONN_CORO_YIELD, align 4
  %36 = call i32 @coro_yield(%struct.coro* %34, i32 %35)
  br label %38

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %8, align 4
  br label %12

42:                                               ; preds = %37, %12
  store %struct.cache_entry* null, %struct.cache_entry** %4, align 8
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  ret %struct.cache_entry* %44
}

declare dso_local %struct.cache_entry* @cache_get_and_ref_entry(%struct.cache*, i8*, i32*) #1

declare dso_local i64 @LIKELY(%struct.cache_entry*) #1

declare dso_local i32 @coro_defer2(%struct.coro*, i32, %struct.cache*, %struct.cache_entry*) #1

declare dso_local i32 @coro_yield(%struct.coro*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
