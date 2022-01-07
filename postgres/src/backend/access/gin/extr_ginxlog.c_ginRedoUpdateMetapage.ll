; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoUpdateMetapage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoUpdateMetapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@GIN_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to add item to index page\00", align 1
@InvalidBlockNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ginRedoUpdateMetapage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoUpdateMetapage(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = call i64 @XLogRecGetData(%struct.TYPE_10__* %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = call i32 @XLogInitBufferForRedo(%struct.TYPE_10__* %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @BufferGetBlockNumber(i32 %24)
  %26 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @BufferGetPage(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @GinInitMetabuffer(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @GinPageGetMeta(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = call i32 @memcpy(i32 %35, i32* %37, i32 4)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @PageSetLSN(i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @MarkBufferDirty(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %131

48:                                               ; preds = %1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %49, i32 1, i32* %7)
  %51 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %123

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BufferGetPage(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = call i8* @XLogRecGetBlockData(%struct.TYPE_10__* %56, i32 1, i32* %14)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %13, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @PageIsEmpty(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %64, i32* %9, align 4
  br label %69

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @PageGetMaxOffsetNumber(i32 %66)
  %68 = call i32 @OffsetNumberNext(i32 %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %63
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %100, %69
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %70
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @IndexTupleSize(i64 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @PageAddItem(i32 %80, i32 %82, i32 %83, i32 %84, i32 0, i32 0)
  %86 = load i64, i64* @InvalidOffsetNumber, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @ERROR, align 4
  %90 = call i32 @elog(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %77
  %92 = load i64, i64* %13, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = ptrtoint i8* %96 to i64
  store i64 %97, i64* %13, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %70

103:                                              ; preds = %70
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i64, i64* %13, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = icmp eq i8* %107, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = call %struct.TYPE_11__* @GinPageGetOpaque(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @PageSetLSN(i32 %118, i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @MarkBufferDirty(i32 %121)
  br label %123

123:                                              ; preds = %103, %48
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @BufferIsValid(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @UnlockReleaseBuffer(i32 %128)
  br label %130

130:                                              ; preds = %127, %123
  br label %165

131:                                              ; preds = %1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @InvalidBlockNumber, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %131
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %139 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %138, i32 1, i32* %7)
  %140 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @BufferGetPage(i32 %143)
  store i32 %144, i32* %15, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call %struct.TYPE_11__* @GinPageGetOpaque(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @PageSetLSN(i32 %151, i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @MarkBufferDirty(i32 %154)
  br label %156

156:                                              ; preds = %142, %137
  %157 = load i32, i32* %7, align 4
  %158 = call i64 @BufferIsValid(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @UnlockReleaseBuffer(i32 %161)
  br label %163

163:                                              ; preds = %160, %156
  br label %164

164:                                              ; preds = %163, %131
  br label %165

165:                                              ; preds = %164, %130
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @UnlockReleaseBuffer(i32 %166)
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @GinInitMetabuffer(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @GinPageGetMeta(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @PageIsEmpty(i32) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @GinPageGetOpaque(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
