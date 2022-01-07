; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_read_seq_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_read_seq_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@SEQ_MAGIC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad magic number in sequence \22%s\22: %08X\00", align 1
@FirstOffsetNumber = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i64 0, align 8
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_10__*)* @read_seq_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_seq_tuple(i32 %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ReadBuffer(i32 %11, i32 0)
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %17 = call i32 @LockBuffer(i32 %15, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BufferGetPage(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @PageGetSpecialPointer(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %9, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SEQ_MAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @RelationGetRelationName(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %35)
  br label %37

37:                                               ; preds = %29, %3
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @FirstOffsetNumber, align 4
  %40 = call i32 @PageGetItemId(i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ItemIdIsNormal(i32 %41)
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @PageGetItem(i32 %44, i32 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_9__*
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ItemIdGetLength(i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_9__* %67)
  %69 = load i64, i64* @InvalidTransactionId, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %37
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i64, i64* @InvalidTransactionId, align 8
  %76 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_9__* %74, i64 %75)
  %77 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MarkBufferDirtyHint(i32 %93, i32 1)
  br label %95

95:                                               ; preds = %71, %37
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = call i64 @GETSTRUCT(%struct.TYPE_10__* %96)
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  ret i64 %98
}

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i64) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_9__*) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @MarkBufferDirtyHint(i32, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
