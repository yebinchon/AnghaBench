; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoSplitTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoSplitTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to add item of size %u to SPGiST index page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @spgRedoSplitTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgRedoSplitTuple(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i8* @XLogRecGetData(%struct.TYPE_10__* %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 32
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @memcpy(%struct.TYPE_11__* %7, i8* %23, i32 4)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @memcpy(%struct.TYPE_11__* %9, i8* %31, i32 4)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %80, label %37

37:                                               ; preds = %1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = call i32 @XLogInitBufferForRedo(%struct.TYPE_10__* %43, i32 1)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @SpGistInitBuffer(i32 %45, i32 0)
  %47 = load i64, i64* @BLK_NEEDS_REDO, align 8
  store i64 %47, i64* %12, align 8
  br label %51

48:                                               ; preds = %37
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %49, i32 1, i32* %10)
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @BufferGetPage(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @addOrReplaceTuple(i32 %58, i32 %60, i32 %62, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @PageSetLSN(i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @MarkBufferDirty(i32 %70)
  br label %72

72:                                               ; preds = %55, %51
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @BufferIsValid(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @UnlockReleaseBuffer(i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %81, i32 0, i32* %10)
  %83 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @BufferGetPage(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @PageIndexTupleDelete(i32 %88, i64 %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @PageAddItem(i32 %93, i32 %95, i32 %97, i64 %100, i32 0, i32 0)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %85
  %107 = load i32, i32* @ERROR, align 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @elog(i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %106, %85
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i32, i32* %11, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @addOrReplaceTuple(i32 %117, i32 %119, i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %116, %111
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @PageSetLSN(i32 %127, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @MarkBufferDirty(i32 %130)
  br label %132

132:                                              ; preds = %126, %80
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @BufferIsValid(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @UnlockReleaseBuffer(i32 %137)
  br label %139

139:                                              ; preds = %136, %132
  ret void
}

declare dso_local i8* @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SpGistInitBuffer(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @addOrReplaceTuple(i32, i32, i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
