; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoVacuumDataLeafPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoVacuumDataLeafPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ginRedoVacuumDataLeafPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoVacuumDataLeafPage(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = call i64 @XLogReadBufferForRedo(%struct.TYPE_7__* %11, i32 0, i32* %4)
  %13 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BufferGetPage(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = call i64 @XLogRecGetBlockData(%struct.TYPE_7__* %18, i32 0, i32* %6)
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @GinPageIsLeaf(i32 %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @GinPageIsData(i32 %24)
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @ginRedoRecompress(i32 %27, i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @PageSetLSN(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @MarkBufferDirty(i32 %34)
  br label %36

36:                                               ; preds = %15, %1
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @BufferIsValid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @UnlockReleaseBuffer(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  ret void
}

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @XLogRecGetBlockData(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i32 @ginRedoRecompress(i32, i32*) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
