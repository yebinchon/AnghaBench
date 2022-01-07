; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PredicateLockAcquire.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PredicateLockAcquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@LocalPredicateLockHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@MySerializableXact = common dso_local global i32 0, align 4
@PREDLOCKTAG_TUPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @PredicateLockAcquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PredicateLockAcquire(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @PredicateLockExists(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @CoarserLockCovers(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %50

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @PredicateLockTargetTagHashCode(i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @LocalPredicateLockHash, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @HASH_ENTER, align 4
  %22 = call i64 @hash_search_with_hash_value(i32 %18, i32* %19, i32 %20, i32 %21, i32* %4)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %5, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MySerializableXact, align 4
  %35 = call i32 @CreatePredicateLock(i32* %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @CheckAndPromotePredicateLockRequest(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %50

40:                                               ; preds = %31
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @GET_PREDICATELOCKTARGETTAG_TYPE(i32 %42)
  %44 = load i64, i64* @PREDLOCKTAG_TUPLE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @DeleteChildTargetLocks(i32* %47)
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %9, %14, %49, %39
  ret void
}

declare dso_local i64 @PredicateLockExists(i32*) #1

declare dso_local i64 @CoarserLockCovers(i32*) #1

declare dso_local i32 @PredicateLockTargetTagHashCode(i32*) #1

declare dso_local i64 @hash_search_with_hash_value(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @CreatePredicateLock(i32*, i32, i32) #1

declare dso_local i64 @CheckAndPromotePredicateLockRequest(i32*) #1

declare dso_local i64 @GET_PREDICATELOCKTARGETTAG_TYPE(i32) #1

declare dso_local i32 @DeleteChildTargetLocks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
