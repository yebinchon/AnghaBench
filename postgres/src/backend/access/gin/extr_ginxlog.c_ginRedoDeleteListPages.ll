; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoDeleteListPages.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoDeleteListPages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GIN_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@GIN_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ginRedoDeleteListPages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoDeleteListPages(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = call i64 @XLogRecGetData(%struct.TYPE_7__* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @XLogInitBufferForRedo(%struct.TYPE_7__* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @BufferGetBlockNumber(i32 %18)
  %20 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @BufferGetPage(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GinInitMetabuffer(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @GinPageGetMeta(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = call i32 @memcpy(i32 %29, i32* %31, i32 4)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @PageSetLSN(i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @MarkBufferDirty(i32 %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %61, %1
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @XLogInitBufferForRedo(%struct.TYPE_7__* %45, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @BufferGetPage(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @GIN_DELETED, align 4
  %53 = call i32 @GinInitBuffer(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @PageSetLSN(i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @MarkBufferDirty(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @UnlockReleaseBuffer(i32 %59)
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %38

64:                                               ; preds = %38
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @UnlockReleaseBuffer(i32 %65)
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_7__*) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @GinInitMetabuffer(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @GinPageGetMeta(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @GinInitBuffer(i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
