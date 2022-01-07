; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogBytePosToEndRecPtr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogBytePosToEndRecPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UsableBytesInSegment = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@SizeOfXLogLongPHD = common dso_local global i32 0, align 4
@UsableBytesInPage = common dso_local global i32 0, align 4
@SizeOfXLogShortPHD = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @XLogBytePosToEndRecPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XLogBytePosToEndRecPtr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @UsableBytesInSegment, align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @UsableBytesInSegment, align 4
  %13 = srem i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @XLOG_BLCKSZ, align 4
  %16 = load i32, i32* @SizeOfXLogLongPHD, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SizeOfXLogLongPHD, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %22
  br label %62

28:                                               ; preds = %1
  %29 = load i32, i32* @XLOG_BLCKSZ, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @XLOG_BLCKSZ, align 4
  %31 = load i32, i32* @SizeOfXLogLongPHD, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @UsableBytesInPage, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UsableBytesInPage, align 4
  %40 = srem i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @XLOG_BLCKSZ, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %61

51:                                               ; preds = %28
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @XLOG_BLCKSZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %51, %43
  br label %62

62:                                               ; preds = %61, %27
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @wal_segment_size, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @XLogSegNoOffsetToRecPtr(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @XLogSegNoOffsetToRecPtr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
