; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_vacuum_one_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_vacuum_one_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@InHotStandby = common dso_local global i64 0, align 8
@RBM_NORMAL = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@SizeOfHashVacuumOnePage = common dso_local global i64 0, align 8
@LH_PAGE_HAS_DEAD_TUPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @hash_xlog_vacuum_one_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_xlog_vacuum_one_page(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = call i64 @XLogRecGetData(%struct.TYPE_13__* %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %4, align 8
  %20 = load i64, i64* @InHotStandby, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = call i32 @XLogRecGetBlockTag(%struct.TYPE_13__* %23, i32 0, i32* %10, i32* null, i32* null)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ResolveRecoveryConflictWithSnapshot(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = load i32, i32* @RBM_NORMAL, align 4
  %33 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_13__* %31, i32 0, i32 %32, i32 1, i32* %5)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @BufferGetPage(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = call i64 @XLogRecGetDataLen(%struct.TYPE_13__* %40)
  %42 = load i64, i64* @SizeOfHashVacuumOnePage, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = bitcast %struct.TYPE_12__* %45 to i8*
  %47 = load i64, i64* @SizeOfHashVacuumOnePage, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %11, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @PageIndexMultiDelete(i64 %50, i32* %51, i64 %54)
  br label %56

56:                                               ; preds = %44, %37
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @PageGetSpecialPointer(i64 %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %9, align 8
  %60 = load i32, i32* @LH_PAGE_HAS_DEAD_TUPLES, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @PageSetLSN(i64 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @MarkBufferDirty(i32 %69)
  br label %71

71:                                               ; preds = %56, %30
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @BufferIsValid(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @UnlockReleaseBuffer(i32 %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = call i64 @XLogReadBufferForRedo(%struct.TYPE_13__* %79, i32 1, i32* %6)
  %81 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @BufferGetPage(i32 %84)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call %struct.TYPE_15__* @HashPageGetMeta(i64 %86)
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %13, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @PageSetLSN(i64 %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @MarkBufferDirty(i32 %100)
  br label %102

102:                                              ; preds = %83, %78
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @BufferIsValid(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @UnlockReleaseBuffer(i32 %107)
  br label %109

109:                                              ; preds = %106, %102
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_13__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_13__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ResolveRecoveryConflictWithSnapshot(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedoExtended(%struct.TYPE_13__*, i32, i32, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @XLogRecGetDataLen(%struct.TYPE_13__*) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i32*, i64) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @HashPageGetMeta(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
