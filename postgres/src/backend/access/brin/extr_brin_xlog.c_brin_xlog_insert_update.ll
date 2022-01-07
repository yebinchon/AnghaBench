; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_insert_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_insert_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64 }

@XLOG_BRIN_INIT_PAGE = common dso_local global i32 0, align 4
@BRIN_PAGETYPE_REGULAR = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"brin_xlog_insert_update: invalid max offset number\00", align 1
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"brin_xlog_insert_update: failed to add tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @brin_xlog_insert_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brin_xlog_insert_update(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @XLogRecGetInfo(%struct.TYPE_11__* %17)
  %19 = load i32, i32* @XLOG_BRIN_INIT_PAGE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @XLogInitBufferForRedo(%struct.TYPE_11__* %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @BufferGetPage(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @BRIN_PAGETYPE_REGULAR, align 4
  %29 = call i32 @brin_page_init(i64 %27, i32 %28)
  %30 = load i64, i64* @BLK_NEEDS_REDO, align 8
  store i64 %30, i64* %9, align 8
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = call i64 @XLogReadBufferForRedo(%struct.TYPE_11__* %32, i32 0, i32* %6)
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BufferGetBlockNumber(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = call i64 @XLogRecGetBlockData(%struct.TYPE_11__* %41, i32 0, i32* %12)
  %43 = inttoptr i64 %42 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %11, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @BufferGetPage(i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @PageGetMaxOffsetNumber(i64 %58)
  %60 = add nsw i64 %59, 1
  %61 = load i64, i64* %10, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %40
  %64 = load i32, i32* @PANIC, align 4
  %65 = call i32 @elog(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %40
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = ptrtoint %struct.TYPE_12__* %68 to i32
  %70 = load i32, i32* %12, align 4
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @PageAddItem(i64 %67, i32 %69, i32 %70, i64 %71, i32 1, i32 0)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @InvalidOffsetNumber, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* @PANIC, align 4
  %78 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %66
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @PageSetLSN(i64 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @MarkBufferDirty(i32 %83)
  br label %85

85:                                               ; preds = %79, %34
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @BufferIsValid(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @UnlockReleaseBuffer(i32 %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = call i64 @XLogReadBufferForRedo(%struct.TYPE_11__* %93, i32 1, i32* %6)
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ItemPointerSet(i32* %13, i32 %99, i64 %102)
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @BufferGetPage(i32 %104)
  store i64 %105, i64* %8, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @brinSetHeapBlockItemptr(i32 %106, i32 %109, i64 %112, i32 %113)
  %115 = load i64, i64* %8, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @PageSetLSN(i64 %115, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @MarkBufferDirty(i32 %118)
  br label %120

120:                                              ; preds = %98, %92
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @BufferIsValid(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @UnlockReleaseBuffer(i32 %125)
  br label %127

127:                                              ; preds = %124, %120
  ret void
}

declare dso_local i32 @XLogRecGetInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @brin_page_init(i64, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @XLogRecGetBlockData(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageAddItem(i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i64) #1

declare dso_local i32 @brinSetHeapBlockItemptr(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
