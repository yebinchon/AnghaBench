; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_RelationAddExtraBlocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_RelationAddExtraBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidBlockNumber = common dso_local global i64 0, align 8
@P_NEW = common dso_local global i32 0, align 4
@RBM_ZERO_AND_LOCK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"page %u of relation \22%s\22 should be empty but is not\00", align 1
@SizeOfPageHeaderData = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @RelationAddExtraBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RelationAddExtraBlocks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @RelationExtensionLockWaiterCount(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %69

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %19, 20
  %21 = call i32 @Min(i32 512, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %59, %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @P_NEW, align 4
  %25 = load i32, i32* @RBM_ZERO_AND_LOCK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ReadBufferBI(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @BufferGetPage(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @PageIsNew(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @BufferGetBlockNumber(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @RelationGetRelationName(i32 %37)
  %39 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %38)
  br label %40

40:                                               ; preds = %33, %22
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @BufferGetBlockNumber(i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @BufferGetPageSize(i32 %43)
  %45 = load i64, i64* @SizeOfPageHeaderData, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @UnlockReleaseBuffer(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @InvalidBlockNumber, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %52, %40
  %55 = load i32, i32* %3, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @RecordPageWithFreeSpace(i32 %55, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %22, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = add nsw i64 %66, 1
  %68 = call i32 @FreeSpaceMapVacuumRange(i32 %64, i64 %65, i64 %67)
  br label %69

69:                                               ; preds = %63, %17
  ret void
}

declare dso_local i32 @RelationExtensionLockWaiterCount(i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @ReadBufferBI(i32, i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @BufferGetPageSize(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @RecordPageWithFreeSpace(i32, i64, i64) #1

declare dso_local i32 @FreeSpaceMapVacuumRange(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
