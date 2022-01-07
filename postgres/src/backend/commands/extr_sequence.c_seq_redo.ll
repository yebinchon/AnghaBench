; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_seq_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_seq_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_SEQ_LOG = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"seq_redo: unknown op code %u\00", align 1
@SEQ_MAGIC = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"seq_redo: failed to add item to page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_redo(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i64 @XLogRecGetInfo(%struct.TYPE_9__* %15)
  %17 = load i64, i64* @XLR_INFO_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = call i64 @XLogRecGetData(%struct.TYPE_9__* %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @XLOG_SEQ_LOG, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @PANIC, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i32, i8*, ...) @elog(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = call i32 @XLogInitBufferForRedo(%struct.TYPE_9__* %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @BufferGetPage(i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BufferGetPageSize(i32 %35)
  %37 = call i64 @palloc(i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @BufferGetPageSize(i32 %39)
  %41 = call i32 @PageInit(i64 %38, i32 %40, i32 4)
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @PageGetSpecialPointer(i64 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %11, align 8
  %45 = load i32, i32* @SEQ_MAGIC, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %50, i8** %8, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = call i64 @XLogRecGetDataLen(%struct.TYPE_9__* %51)
  %53 = sub i64 %52, 4
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @FirstOffsetNumber, align 4
  %59 = call i64 @PageAddItem(i64 %54, i32 %56, i64 %57, i32 %58, i32 0, i32 0)
  %60 = load i64, i64* @InvalidOffsetNumber, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %30
  %63 = load i32, i32* @PANIC, align 4
  %64 = call i32 (i32, i8*, ...) @elog(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %30
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @PageSetLSN(i64 %66, i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @BufferGetPageSize(i32 %71)
  %73 = call i32 @memcpy(i64 %69, i64 %70, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @MarkBufferDirty(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @UnlockReleaseBuffer(i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @pfree(i64 %78)
  ret void
}

declare dso_local i64 @XLogRecGetInfo(%struct.TYPE_9__*) #1

declare dso_local i64 @XLogRecGetData(%struct.TYPE_9__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i32 @PageInit(i64, i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i64 @XLogRecGetDataLen(%struct.TYPE_9__*) #1

declare dso_local i64 @PageAddItem(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @pfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
