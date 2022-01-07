; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruFlush.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64*, i32, i32* }
%struct.TYPE_9__ = type { i32, i32*, i32* }

@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@SLRU_PAGE_EMPTY = common dso_local global i64 0, align 8
@SLRU_PAGE_VALID = common dso_local global i64 0, align 8
@WAIT_EVENT_SLRU_FLUSH_SYNC = common dso_local global i32 0, align 4
@SLRU_FSYNC_FAILED = common dso_local global i32 0, align 4
@slru_errcause = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@slru_errno = common dso_local global i32 0, align 4
@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@SLRU_CLOSE_FAILED = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SimpleLruFlush(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LW_EXCLUSIVE, align 4
  %19 = call i32 @LWLockAcquire(i32 %17, i32 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %68, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @SlruInternalWritePage(%struct.TYPE_10__* %27, i32 %28, %struct.TYPE_9__* %6)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SLRU_PAGE_EMPTY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %64, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SLRU_PAGE_VALID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %52, %42
  %63 = phi i1 [ false, %42 ], [ %61, %52 ]
  br label %64

64:                                               ; preds = %62, %32, %26
  %65 = phi i1 [ true, %32 ], [ true, %26 ], [ %63, %62 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @Assert(i32 %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @LWLockRelease(i32 %74)
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %130, %71
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %76
  %82 = load i32, i32* @WAIT_EVENT_SLRU_FLUSH_SYNC, align 4
  %83 = call i32 @pgstat_report_wait_start(i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @pg_fsync(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load i32, i32* @SLRU_FSYNC_FAILED, align 4
  store i32 %98, i32* @slru_errcause, align 4
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* @slru_errno, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %107 = mul nsw i32 %105, %106
  store i32 %107, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %97, %88, %81
  %109 = call i32 (...) @pgstat_report_wait_end()
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @CloseTransientFile(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %108
  %119 = load i32, i32* @SLRU_CLOSE_FAILED, align 4
  store i32 %119, i32* @slru_errcause, align 4
  %120 = load i32, i32* @errno, align 4
  store i32 %120, i32* @slru_errno, align 4
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %128 = mul nsw i32 %126, %127
  store i32 %128, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %118, %108
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %76

133:                                              ; preds = %76
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @InvalidTransactionId, align 4
  %140 = call i32 @SlruReportIOError(%struct.TYPE_10__* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %133
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SlruInternalWritePage(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i64 @pg_fsync(i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i64 @CloseTransientFile(i32) #1

declare dso_local i32 @SlruReportIOError(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
