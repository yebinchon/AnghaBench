; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ForgetPrivateRefCountEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ForgetPrivateRefCountEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@PrivateRefCountArray = common dso_local global %struct.TYPE_5__* null, align 8
@REFCOUNT_ARRAY_ENTRIES = common dso_local global i64 0, align 8
@InvalidBuffer = common dso_local global i32 0, align 4
@ReservedRefCountEntry = common dso_local global %struct.TYPE_5__* null, align 8
@PrivateRefCountHash = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@PrivateRefCountOverflowed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ForgetPrivateRefCountEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ForgetPrivateRefCountEntry(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PrivateRefCountArray, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 0
  %14 = icmp uge %struct.TYPE_5__* %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PrivateRefCountArray, align 8
  %18 = load i64, i64* @REFCOUNT_ARRAY_ENTRIES, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = icmp ult %struct.TYPE_5__* %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @InvalidBuffer, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** @ReservedRefCountEntry, align 8
  br label %42

26:                                               ; preds = %15, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @PrivateRefCountHash, align 4
  %31 = bitcast i32* %4 to i8*
  %32 = load i32, i32* @HASH_REMOVE, align 4
  %33 = call i32 @hash_search(i32 %30, i8* %31, i32 %32, i32* %3)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @Assert(i32 %34)
  %36 = load i64, i64* @PrivateRefCountOverflowed, align 8
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i64, i64* @PrivateRefCountOverflowed, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* @PrivateRefCountOverflowed, align 8
  br label %42

42:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @hash_search(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
