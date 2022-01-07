; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_GetPrivateRefCountEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_GetPrivateRefCountEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@REFCOUNT_ARRAY_ENTRIES = common dso_local global i32 0, align 4
@PrivateRefCountArray = common dso_local global %struct.TYPE_6__* null, align 8
@PrivateRefCountOverflowed = common dso_local global i64 0, align 8
@PrivateRefCountHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@ReservedRefCountEntry = common dso_local global %struct.TYPE_6__* null, align 8
@InvalidBuffer = common dso_local global i64 0, align 8
@HASH_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i64, i32)* @GetPrivateRefCountEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @GetPrivateRefCountEntry(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @BufferIsValid(i64 %10)
  %12 = call i32 @Assert(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @BufferIsLocal(i64 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %36, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @REFCOUNT_ARRAY_ENTRIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PrivateRefCountArray, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %6, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %3, align 8
  br label %91

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load i64, i64* @PrivateRefCountOverflowed, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %91

43:                                               ; preds = %39
  %44 = load i32, i32* @PrivateRefCountHash, align 4
  %45 = bitcast i64* %4 to i8*
  %46 = load i32, i32* @HASH_FIND, align 4
  %47 = call %struct.TYPE_6__* @hash_search(i32 %44, i8* %45, i32 %46, i32* null)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = icmp eq %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %91

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %3, align 8
  br label %91

56:                                               ; preds = %51
  %57 = call i32 (...) @ReservePrivateRefCountEntry()
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ReservedRefCountEntry, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @Assert(i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ReservedRefCountEntry, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @ReservedRefCountEntry, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @InvalidBuffer, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @Assert(i32 %68)
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @PrivateRefCountHash, align 4
  %79 = bitcast i64* %4 to i8*
  %80 = load i32, i32* @HASH_REMOVE, align 4
  %81 = call %struct.TYPE_6__* @hash_search(i32 %78, i8* %79, i32 %80, i32* %8)
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @Assert(i32 %82)
  %84 = load i64, i64* @PrivateRefCountOverflowed, align 8
  %85 = icmp sgt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @Assert(i32 %86)
  %88 = load i64, i64* @PrivateRefCountOverflowed, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* @PrivateRefCountOverflowed, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %3, align 8
  br label %91

91:                                               ; preds = %56, %54, %50, %42, %33
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %92
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i64) #1

declare dso_local i32 @BufferIsLocal(i64) #1

declare dso_local %struct.TYPE_6__* @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @ReservePrivateRefCountEntry(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
