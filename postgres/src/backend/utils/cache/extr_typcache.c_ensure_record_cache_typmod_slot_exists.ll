; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_ensure_record_cache_typmod_slot_exists.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_ensure_record_cache_typmod_slot_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RecordCacheArray = common dso_local global i32* null, align 8
@CacheMemoryContext = common dso_local global i32 0, align 4
@RecordIdentifierArray = common dso_local global i32* null, align 8
@RecordCacheArrayLen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ensure_record_cache_typmod_slot_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_record_cache_typmod_slot_exists(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @RecordCacheArray, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @CacheMemoryContext, align 4
  %8 = call i64 @MemoryContextAllocZero(i32 %7, i32 256)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @RecordCacheArray, align 8
  %10 = load i32, i32* @CacheMemoryContext, align 4
  %11 = call i64 @MemoryContextAllocZero(i32 %10, i32 256)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** @RecordIdentifierArray, align 8
  store i32 64, i32* @RecordCacheArrayLen, align 4
  br label %13

13:                                               ; preds = %6, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @RecordCacheArrayLen, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = load i32, i32* @RecordCacheArrayLen, align 4
  %19 = mul nsw i32 %18, 2
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %24, %17
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %3, align 4
  br label %20

27:                                               ; preds = %20
  %28 = load i32*, i32** @RecordCacheArray, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i64 @repalloc(i32* %28, i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** @RecordCacheArray, align 8
  %35 = load i32*, i32** @RecordCacheArray, align 8
  %36 = load i32, i32* @RecordCacheArrayLen, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @RecordCacheArrayLen, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(i32* %38, i32 0, i32 %44)
  %46 = load i32*, i32** @RecordIdentifierArray, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i64 @repalloc(i32* %46, i32 %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** @RecordIdentifierArray, align 8
  %53 = load i32*, i32** @RecordIdentifierArray, align 8
  %54 = load i32, i32* @RecordCacheArrayLen, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @RecordCacheArrayLen, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(i32* %56, i32 0, i32 %62)
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* @RecordCacheArrayLen, align 4
  br label %65

65:                                               ; preds = %27, %13
  ret void
}

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
