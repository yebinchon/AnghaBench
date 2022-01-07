; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_desummarize_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_desummarize_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @brin_xlog_desummarize_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brin_xlog_desummarize_page(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i64 @XLogRecGetData(%struct.TYPE_7__* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i64 @XLogReadBufferForRedo(%struct.TYPE_7__* %15, i32 0, i32* %5)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = call i32 @ItemPointerSetInvalid(i32* %7)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @brinSetHeapBlockItemptr(i32 %22, i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BufferGetPage(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @PageSetLSN(i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @MarkBufferDirty(i32 %35)
  br label %37

37:                                               ; preds = %20, %1
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @BufferIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @UnlockReleaseBuffer(i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = call i64 @XLogReadBufferForRedo(%struct.TYPE_7__* %45, i32 1, i32* %5)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @BufferGetPage(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PageIndexTupleDeleteNoCompact(i32 %53, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @PageSetLSN(i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @MarkBufferDirty(i32 %61)
  br label %63

63:                                               ; preds = %50, %44
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @BufferIsValid(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @UnlockReleaseBuffer(i32 %68)
  br label %70

70:                                               ; preds = %67, %63
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_7__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @brinSetHeapBlockItemptr(i32, i32, i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @PageIndexTupleDeleteNoCompact(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
