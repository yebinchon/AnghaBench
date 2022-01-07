; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PredicateLockShmemSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PredicateLockShmemSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxBackends = common dso_local global i64 0, align 8
@max_prepared_xacts = common dso_local global i64 0, align 8
@PredXactListDataSize = common dso_local global i32 0, align 4
@PredXactListElementDataSize = common dso_local global i32 0, align 4
@RWConflictPoolHeaderDataSize = common dso_local global i32 0, align 4
@RWConflictDataSize = common dso_local global i32 0, align 4
@NUM_OLDSERXID_BUFFERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PredicateLockShmemSize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = call i64 (...) @NPREDICATELOCKTARGETENTS()
  store i64 %3, i64* %2, align 8
  %4 = load i32, i32* %1, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @hash_estimate_size(i64 %5, i32 4)
  %7 = call i32 @add_size(i32 %4, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i64, i64* %2, align 8
  %9 = mul nsw i64 %8, 2
  store i64 %9, i64* %2, align 8
  %10 = load i32, i32* %1, align 4
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @hash_estimate_size(i64 %11, i32 4)
  %13 = call i32 @add_size(i32 %10, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = sdiv i32 %15, 10
  %17 = call i32 @add_size(i32 %14, i32 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i64, i64* @MaxBackends, align 8
  %19 = load i64, i64* @max_prepared_xacts, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = mul nsw i64 %21, 10
  store i64 %22, i64* %2, align 8
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @PredXactListDataSize, align 4
  %25 = call i32 @add_size(i32 %23, i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i64, i64* %2, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @PredXactListElementDataSize, align 4
  %30 = call i32 @mul_size(i32 %28, i32 %29)
  %31 = call i32 @add_size(i32 %26, i32 %30)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @hash_estimate_size(i64 %33, i32 4)
  %35 = call i32 @add_size(i32 %32, i32 %34)
  store i32 %35, i32* %1, align 4
  %36 = load i64, i64* %2, align 8
  %37 = mul nsw i64 %36, 5
  store i64 %37, i64* %2, align 8
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @RWConflictPoolHeaderDataSize, align 4
  %40 = call i32 @add_size(i32 %38, i32 %39)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i64, i64* %2, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @RWConflictDataSize, align 4
  %45 = call i32 @mul_size(i32 %43, i32 %44)
  %46 = call i32 @add_size(i32 %41, i32 %45)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @add_size(i32 %47, i32 4)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @add_size(i32 %49, i32 4)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @NUM_OLDSERXID_BUFFERS, align 4
  %53 = call i32 @SimpleLruShmemSize(i32 %52, i32 0)
  %54 = call i32 @add_size(i32 %51, i32 %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i64 @NPREDICATELOCKTARGETENTS(...) #1

declare dso_local i32 @add_size(i32, i32) #1

declare dso_local i32 @hash_estimate_size(i64, i32) #1

declare dso_local i32 @mul_size(i32, i32) #1

declare dso_local i32 @SimpleLruShmemSize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
