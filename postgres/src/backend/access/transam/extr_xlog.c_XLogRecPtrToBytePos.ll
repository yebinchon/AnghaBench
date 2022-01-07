; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogRecPtrToBytePos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogRecPtrToBytePos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wal_segment_size = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@UsableBytesInSegment = common dso_local global i32 0, align 4
@SizeOfXLogLongPHD = common dso_local global i32 0, align 4
@UsableBytesInPage = common dso_local global i32 0, align 4
@SizeOfXLogShortPHD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @XLogRecPtrToBytePos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XLogRecPtrToBytePos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @wal_segment_size, align 4
  %10 = call i32 @XLByteToSeg(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @wal_segment_size, align 4
  %13 = call i32 @XLogSegmentOffset(i32 %11, i32 %12)
  %14 = load i32, i32* @XLOG_BLCKSZ, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @XLOG_BLCKSZ, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @UsableBytesInSegment, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SizeOfXLogLongPHD, align 4
  %30 = icmp sge i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SizeOfXLogLongPHD, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %27, %21
  br label %66

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @UsableBytesInSegment, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @XLOG_BLCKSZ, align 4
  %44 = load i32, i32* @SizeOfXLogLongPHD, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @UsableBytesInPage, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %57 = icmp sge i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %54, %39
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @XLByteToSeg(i32, i32, i32) #1

declare dso_local i32 @XLogSegmentOffset(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
