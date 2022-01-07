; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_GetXLogBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_GetXLogBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i8* }
%struct.TYPE_3__ = type { i64, i64 }

@GetXLogBuffer.cachedPage = internal global i64 0, align 8
@GetXLogBuffer.cachedPos = internal global i8* null, align 8
@XLOG_BLCKSZ = common dso_local global i64 0, align 8
@XLOG_PAGE_MAGIC = common dso_local global i64 0, align 8
@XLogCtl = common dso_local global %struct.TYPE_4__* null, align 8
@SizeOfXLogShortPHD = common dso_local global i64 0, align 8
@wal_segment_size = common dso_local global i32 0, align 4
@SizeOfXLogLongPHD = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not find WAL buffer for %X/%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @GetXLogBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetXLogBuffer(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @XLOG_BLCKSZ, align 8
  %10 = sdiv i64 %8, %9
  %11 = load i64, i64* @GetXLogBuffer.cachedPage, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load i8*, i8** @GetXLogBuffer.cachedPos, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XLOG_PAGE_MAGIC, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i8*, i8** @GetXLogBuffer.cachedPos, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @XLOG_BLCKSZ, align 8
  %29 = srem i64 %27, %28
  %30 = sub nsw i64 %26, %29
  %31 = icmp eq i64 %25, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i8*, i8** @GetXLogBuffer.cachedPos, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @XLOG_BLCKSZ, align 8
  %37 = srem i64 %35, %36
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %2, align 8
  br label %159

39:                                               ; preds = %1
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @XLogRecPtrToBufIdx(i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* @XLOG_BLCKSZ, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @XLOG_BLCKSZ, align 8
  %46 = srem i64 %44, %45
  %47 = sub nsw i64 %43, %46
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @XLogCtl, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %119

60:                                               ; preds = %39
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @XLOG_BLCKSZ, align 8
  %63 = srem i64 %61, %62
  %64 = load i64, i64* @SizeOfXLogShortPHD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i64, i64* %3, align 8
  %68 = load i32, i32* @wal_segment_size, align 4
  %69 = call i64 @XLogSegmentOffset(i64 %67, i32 %68)
  %70 = load i64, i64* @XLOG_BLCKSZ, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* @SizeOfXLogShortPHD, align 8
  %75 = sub nsw i64 %73, %74
  store i64 %75, i64* %7, align 8
  br label %95

76:                                               ; preds = %66, %60
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @XLOG_BLCKSZ, align 8
  %79 = srem i64 %77, %78
  %80 = load i64, i64* @SizeOfXLogLongPHD, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i64, i64* %3, align 8
  %84 = load i32, i32* @wal_segment_size, align 4
  %85 = call i64 @XLogSegmentOffset(i64 %83, i32 %84)
  %86 = load i64, i64* @XLOG_BLCKSZ, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @SizeOfXLogLongPHD, align 8
  %91 = sub nsw i64 %89, %90
  store i64 %91, i64* %7, align 8
  br label %94

92:                                               ; preds = %82, %76
  %93 = load i64, i64* %3, align 8
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %72
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @WALInsertLockUpdateInsertingAt(i64 %96)
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @AdvanceXLInsertBuffer(i64 %98, i32 0)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @XLogCtl, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %5, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %95
  %111 = load i32, i32* @PANIC, align 4
  %112 = load i64, i64* %3, align 8
  %113 = ashr i64 %112, 32
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* %3, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @elog(i32 %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %110, %95
  br label %121

119:                                              ; preds = %39
  %120 = call i32 (...) @pg_memory_barrier()
  br label %121

121:                                              ; preds = %119, %118
  %122 = load i64, i64* %3, align 8
  %123 = load i64, i64* @XLOG_BLCKSZ, align 8
  %124 = sdiv i64 %122, %123
  store i64 %124, i64* @GetXLogBuffer.cachedPage, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @XLogCtl, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i64, i64* @XLOG_BLCKSZ, align 8
  %130 = trunc i64 %129 to i32
  %131 = mul nsw i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %127, i64 %132
  store i8* %133, i8** @GetXLogBuffer.cachedPos, align 8
  %134 = load i8*, i8** @GetXLogBuffer.cachedPos, align 8
  %135 = bitcast i8* %134 to %struct.TYPE_3__*
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @XLOG_PAGE_MAGIC, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @Assert(i32 %140)
  %142 = load i8*, i8** @GetXLogBuffer.cachedPos, align 8
  %143 = bitcast i8* %142 to %struct.TYPE_3__*
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %3, align 8
  %147 = load i64, i64* %3, align 8
  %148 = load i64, i64* @XLOG_BLCKSZ, align 8
  %149 = srem i64 %147, %148
  %150 = sub nsw i64 %146, %149
  %151 = icmp eq i64 %145, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @Assert(i32 %152)
  %154 = load i8*, i8** @GetXLogBuffer.cachedPos, align 8
  %155 = load i64, i64* %3, align 8
  %156 = load i64, i64* @XLOG_BLCKSZ, align 8
  %157 = srem i64 %155, %156
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8* %158, i8** %2, align 8
  br label %159

159:                                              ; preds = %121, %13
  %160 = load i8*, i8** %2, align 8
  ret i8* %160
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecPtrToBufIdx(i64) #1

declare dso_local i64 @XLogSegmentOffset(i64, i32) #1

declare dso_local i32 @WALInsertLockUpdateInsertingAt(i64) #1

declare dso_local i32 @AdvanceXLInsertBuffer(i64, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @pg_memory_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
