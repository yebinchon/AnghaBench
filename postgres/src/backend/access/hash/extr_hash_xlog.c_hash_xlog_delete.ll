; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash_xlog.c_hash_xlog_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@LH_PAGE_HAS_DEAD_TUPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @hash_xlog_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_xlog_delete(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = call i64 @XLogRecGetData(%struct.TYPE_10__* %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %4, align 8
  %20 = load i32, i32* @InvalidBuffer, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = load i32, i32* @RBM_NORMAL, align 4
  %28 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_10__* %26, i32 1, i32 %27, i32 1, i32* %6)
  store i64 %28, i64* %8, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = load i32, i32* @RBM_NORMAL, align 4
  %32 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_10__* %30, i32 0, i32 %31, i32 1, i32* %5)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %33, i32 1, i32* %6)
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = call i8* @XLogRecGetBlockData(%struct.TYPE_10__* %40, i32 1, i64* %10)
  store i8* %41, i8** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @BufferGetPage(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %39
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %11, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %46
  %61 = load i64, i64* %7, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @PageIndexMultiDelete(i64 %61, i32* %62, i32 %69)
  br label %71

71:                                               ; preds = %60, %46
  br label %72

72:                                               ; preds = %71, %39
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @PageGetSpecialPointer(i64 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %13, align 8
  %81 = load i32, i32* @LH_PAGE_HAS_DEAD_TUPLES, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %77, %72
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @PageSetLSN(i64 %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @MarkBufferDirty(i32 %91)
  br label %93

93:                                               ; preds = %87, %35
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @BufferIsValid(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @UnlockReleaseBuffer(i32 %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @BufferIsValid(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @UnlockReleaseBuffer(i32 %105)
  br label %107

107:                                              ; preds = %104, %100
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i64 @XLogReadBufferForRedoExtended(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_10__*, i32, i64*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i32*, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
