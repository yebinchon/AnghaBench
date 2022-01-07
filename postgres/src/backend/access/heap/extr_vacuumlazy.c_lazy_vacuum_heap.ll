; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_vacuum_heap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_vacuum_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@InvalidBuffer = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@vac_strategy = common dso_local global i32 0, align 4
@elevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\22%s\22: removed %d row versions in %d pages\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @lazy_vacuum_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lazy_vacuum_heap(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %13 = load i32, i32* @InvalidBuffer, align 4
  store i32 %13, i32* %8, align 4
  %14 = call i32 @pg_rusage_init(i32* %7)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %44, %39, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %15
  %22 = call i32 (...) @vacuum_delay_point()
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @ItemPointerGetBlockNumber(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MAIN_FORKNUM, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @RBM_NORMAL, align 4
  %34 = load i32, i32* @vac_strategy, align 4
  %35 = call i32 @ReadBufferExtended(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ConditionalLockBufferForCleanup(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ReleaseBuffer(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %15

44:                                               ; preds = %21
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = call i32 @lazy_vacuum_page(i32 %45, i32 %46, i32 %47, i32 %48, %struct.TYPE_4__* %49, i32* %8)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @BufferGetPage(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @PageGetHeapFreeSpace(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @UnlockReleaseBuffer(i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @RecordPageWithFreeSpace(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %15

63:                                               ; preds = %15
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @BufferIsValid(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ReleaseBuffer(i32 %68)
  %70 = load i32, i32* @InvalidBuffer, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @elevel, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @RelationGetRelationName(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  %78 = call i32 @pg_rusage_show(i32* %7)
  %79 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = call i32 @ereport(i32 %72, i32 %79)
  ret void
}

declare dso_local i32 @pg_rusage_init(i32*) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ConditionalLockBufferForCleanup(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @lazy_vacuum_page(i32, i32, i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetHeapFreeSpace(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @RecordPageWithFreeSpace(i32, i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32) #1

declare dso_local i32 @pg_rusage_show(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
