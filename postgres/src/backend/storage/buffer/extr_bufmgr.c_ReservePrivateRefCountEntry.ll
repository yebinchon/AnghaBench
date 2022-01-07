; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReservePrivateRefCountEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReservePrivateRefCountEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@ReservedRefCountEntry = common dso_local global %struct.TYPE_5__* null, align 8
@REFCOUNT_ARRAY_ENTRIES = common dso_local global i32 0, align 4
@PrivateRefCountArray = common dso_local global %struct.TYPE_5__* null, align 8
@InvalidBuffer = common dso_local global i64 0, align 8
@PrivateRefCountClock = common dso_local global i32 0, align 4
@PrivateRefCountHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@PrivateRefCountOverflowed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ReservePrivateRefCountEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReservePrivateRefCountEntry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %67

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %26, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @REFCOUNT_ARRAY_ENTRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PrivateRefCountArray, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @InvalidBuffer, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  br label %67

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PrivateRefCountArray, align 8
  %31 = load i32, i32* @PrivateRefCountClock, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @PrivateRefCountClock, align 4
  %33 = load i32, i32* @REFCOUNT_ARRAY_ENTRIES, align 4
  %34 = srem i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %35
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @InvalidBuffer, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* @PrivateRefCountHash, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = bitcast i64* %46 to i8*
  %48 = load i32, i32* @HASH_ENTER, align 4
  %49 = call %struct.TYPE_5__* @hash_search(i32 %44, i8* %47, i32 %48, i32* %4)
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* @InvalidBuffer, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @PrivateRefCountOverflowed, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @PrivateRefCountOverflowed, align 4
  br label %67

67:                                               ; preds = %29, %23, %7
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_5__* @hash_search(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
