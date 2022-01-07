; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PageIsPredicateLocked.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PageIsPredicateLocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LW_SHARED = common dso_local global i32 0, align 4
@PredicateLockTargetHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PageIsPredicateLocked(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SET_PREDICATELOCKTARGETTAG_PAGE(i32 %9, i32 %13, i32 %16, i32 %17)
  %19 = call i32 @PredicateLockTargetTagHashCode(i32* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32* @PredicateLockHashPartitionLock(i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @LW_SHARED, align 4
  %24 = call i32 @LWLockAcquire(i32* %22, i32 %23)
  %25 = load i32, i32* @PredicateLockTargetHash, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @HASH_FIND, align 4
  %28 = call i64 @hash_search_with_hash_value(i32 %25, i32* %5, i32 %26, i32 %27, i32* null)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @LWLockRelease(i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @SET_PREDICATELOCKTARGETTAG_PAGE(i32, i32, i32, i32) #1

declare dso_local i32 @PredicateLockTargetTagHashCode(i32*) #1

declare dso_local i32* @PredicateLockHashPartitionLock(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i64 @hash_search_with_hash_value(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @LWLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
