; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blvacuum.c_blvacuumcleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blvacuum.c_blvacuumcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@BLOOM_HEAD_BLKNO = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @blvacuumcleanup(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i64 @palloc0(i32 24)
  %25 = inttoptr i64 %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %5, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @RelationGetNumberOfBlocks(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* @BLOOM_HEAD_BLKNO, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %81, %26
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = call i32 (...) @vacuum_delay_point()
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAIN_FORKNUM, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @RBM_NORMAL, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ReadBufferExtended(i32 %43, i32 %44, i64 %45, i32 %46, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %53 = call i32 @LockBuffer(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @BufferGetPage(i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @PageIsNew(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %41
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @BloomPageIsDeleted(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59, %41
  %64 = load i32, i32* %6, align 4
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @RecordFreeIndexPage(i32 %64, i64 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %78

71:                                               ; preds = %59
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @BloomPageGetMaxOffset(i64 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %71, %63
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @UnlockReleaseBuffer(i32 %79)
  br label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %37

84:                                               ; preds = %37
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @IndexFreeSpaceMapVacuum(i32 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %3, align 8
  br label %90

90:                                               ; preds = %84, %18
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %91
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i64) #1

declare dso_local i64 @BloomPageIsDeleted(i64) #1

declare dso_local i32 @RecordFreeIndexPage(i32, i64) #1

declare dso_local i64 @BloomPageGetMaxOffset(i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @IndexFreeSpaceMapVacuum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
