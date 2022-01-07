; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_init_bitmap_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_init_bitmap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64*, i64 }
%struct.TYPE_10__ = type { i32 }

@INIT_FORKNUM = common dso_local global i64 0, align 8
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @hash_xlog_init_bitmap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_xlog_init_bitmap_page(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = call i64 @XLogRecGetData(%struct.TYPE_11__* %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %10, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i32 @XLogInitBufferForRedo(%struct.TYPE_11__* %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @_hash_initbitmapbuffer(i32 %19, i32 %22, i32 1)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BufferGetPage(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @PageSetLSN(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @MarkBufferDirty(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = call i32 @XLogRecGetBlockTag(%struct.TYPE_11__* %30, i32 0, i32* null, i64* %9, i32* null)
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @INIT_FORKNUM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @FlushOneBuffer(i32 %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @UnlockReleaseBuffer(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = call i64 @XLogReadBufferForRedo(%struct.TYPE_11__* %41, i32 1, i32* %5)
  %43 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @BufferGetPage(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_12__* @HashPageGetMeta(i32 %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 %55, i64* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @PageSetLSN(i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @MarkBufferDirty(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = call i32 @XLogRecGetBlockTag(%struct.TYPE_11__* %72, i32 1, i32* null, i64* %9, i32* null)
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @INIT_FORKNUM, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %45
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @FlushOneBuffer(i32 %78)
  br label %80

80:                                               ; preds = %77, %45
  br label %81

81:                                               ; preds = %80, %38
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @BufferIsValid(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @UnlockReleaseBuffer(i32 %86)
  br label %88

88:                                               ; preds = %85, %81
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_11__*) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_hash_initbitmapbuffer(i32, i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_11__*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @FlushOneBuffer(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @HashPageGetMeta(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
