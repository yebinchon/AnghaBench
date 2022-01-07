; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_RegisterPredicateLockingXid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_RegisterPredicateLockingXid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@MySerializableXact = common dso_local global %struct.TYPE_8__* null, align 8
@InvalidSerializableXact = common dso_local global %struct.TYPE_8__* null, align 8
@SerializableXactHashLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i64 0, align 8
@SerializableXidHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RegisterPredicateLockingXid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MySerializableXact, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @InvalidSerializableXact, align 8
  %8 = icmp eq %struct.TYPE_8__* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @TransactionIdIsValid(i8* %11)
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* @SerializableXactHashLock, align 4
  %15 = load i32, i32* @LW_EXCLUSIVE, align 4
  %16 = call i32 @LWLockAcquire(i32 %14, i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MySerializableXact, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @InvalidTransactionId, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MySerializableXact, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @SerializableXidHash, align 4
  %31 = load i32, i32* @HASH_ENTER, align 4
  %32 = call i64 @hash_search(i32 %30, %struct.TYPE_6__* %3, i32 %31, i32* %5)
  %33 = inttoptr i64 %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MySerializableXact, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load i32, i32* @SerializableXactHashLock, align 4
  %43 = call i32 @LWLockRelease(i32 %42)
  br label %44

44:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @hash_search(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
