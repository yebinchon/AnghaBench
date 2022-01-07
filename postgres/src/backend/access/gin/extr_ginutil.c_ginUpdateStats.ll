; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginutil.c_ginUpdateStats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginutil.c_ginUpdateStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i32 }

@GIN_METAPAGE_BLKNO = common dso_local global i32 0, align 4
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_GIN_ID = common dso_local global i32 0, align 4
@XLOG_GIN_UPDATE_META_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ginUpdateStats(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = load i32, i32* @GIN_METAPAGE_BLKNO, align 4
  %14 = call i32 @ReadBuffer(%struct.TYPE_13__* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %17 = call i32 @LockBuffer(i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @BufferGetPage(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.TYPE_16__* @GinPageGetMeta(i64 %20)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %9, align 8
  %22 = call i32 (...) @START_CRIT_SECTION()
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = bitcast %struct.TYPE_16__* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 16
  %46 = load i64, i64* %8, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %45 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %8, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_14__*
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @MarkBufferDirty(i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = call i64 @RelationNeedsWAL(%struct.TYPE_13__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %3
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @InvalidBlockNumber, align 4
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = call i32 @memcpy(i32* %72, %struct.TYPE_16__* %73, i32 16)
  %75 = call i32 (...) @XLogBeginInsert()
  %76 = bitcast %struct.TYPE_12__* %11 to i8*
  %77 = call i32 @XLogRegisterData(i8* %76, i32 32)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %80 = load i32, i32* @REGBUF_STANDARD, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @XLogRegisterBuffer(i32 0, i32 %78, i32 %81)
  %83 = load i32, i32* @RM_GIN_ID, align 4
  %84 = load i32, i32* @XLOG_GIN_UPDATE_META_PAGE, align 4
  %85 = call i32 @XLogInsert(i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @PageSetLSN(i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %63, %60, %3
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @UnlockReleaseBuffer(i32 %90)
  %92 = call i32 (...) @END_CRIT_SECTION()
  ret void
}

declare dso_local i32 @ReadBuffer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_16__* @GinPageGetMeta(i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
