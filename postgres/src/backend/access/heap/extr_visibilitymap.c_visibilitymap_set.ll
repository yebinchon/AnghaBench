; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_set.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@InRecovery = common dso_local global i64 0, align 8
@VISIBILITYMAP_VALID_BITS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wrong heap buffer passed to visibilitymap_set\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"wrong VM buffer passed to visibilitymap_set\00", align 1
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visibilitymap_set(%struct.TYPE_5__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @HEAPBLK_TO_MAPBLOCK(i64 %21)
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @HEAPBLK_TO_MAPBYTE(i64 %23)
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @HEAPBLK_TO_OFFSET(i64 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i64, i64* @InRecovery, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @XLogRecPtrIsInvalid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %7
  %34 = phi i1 [ true, %7 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i64, i64* @InRecovery, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @BufferIsValid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i1 [ true, %33 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @VISIBILITYMAP_VALID_BITS, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @Assert(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @BufferIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @BufferGetBlockNumber(i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @ERROR, align 4
  %61 = call i32 (i32, i8*, ...) @elog(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54, %43
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @BufferIsValid(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @BufferGetBlockNumber(i32 %67)
  %69 = load i64, i64* %15, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %62
  %72 = load i32, i32* @ERROR, align 4
  %73 = call i32 (i32, i8*, ...) @elog(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @BufferGetPage(i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i64 @PageGetContents(i32 %77)
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %19, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %82 = call i32 @LockBuffer(i32 %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %19, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %17, align 4
  %89 = ashr i32 %87, %88
  %90 = load i32, i32* @VISIBILITYMAP_VALID_BITS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %83, %91
  br i1 %92, label %93, label %144

93:                                               ; preds = %74
  %94 = call i32 (...) @START_CRIT_SECTION()
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %17, align 4
  %97 = shl i32 %95, %96
  %98 = load i32*, i32** %19, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @MarkBufferDirty(i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = call i64 @RelationNeedsWAL(%struct.TYPE_5__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %93
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @XLogRecPtrIsInvalid(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load i64, i64* @InRecovery, align 8
  %114 = icmp ne i64 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @log_heap_visible(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = call i64 (...) @XLogHintBitIsNeeded()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %112
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @BufferGetPage(i32 %129)
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @PageIsAllVisible(i32 %131)
  %133 = call i32 @Assert(i32 %132)
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @PageSetLSN(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %128, %112
  br label %138

138:                                              ; preds = %137, %108
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @PageSetLSN(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %93
  %143 = call i32 (...) @END_CRIT_SECTION()
  br label %144

144:                                              ; preds = %142, %74
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %147 = call i32 @LockBuffer(i32 %145, i32 %146)
  ret void
}

declare dso_local i64 @HEAPBLK_TO_MAPBLOCK(i64) #1

declare dso_local i64 @HEAPBLK_TO_MAPBYTE(i64) #1

declare dso_local i32 @HEAPBLK_TO_OFFSET(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetContents(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_5__*) #1

declare dso_local i32 @log_heap_visible(i32, i32, i32, i32, i32) #1

declare dso_local i64 @XLogHintBitIsNeeded(...) #1

declare dso_local i32 @PageIsAllVisible(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
