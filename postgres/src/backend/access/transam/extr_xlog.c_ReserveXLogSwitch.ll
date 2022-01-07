; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ReserveXLogSwitch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ReserveXLogSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@XLogCtl = common dso_local global %struct.TYPE_4__* null, align 8
@SizeOfXLogRecord = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ReserveXLogSwitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReserveXLogSwitch(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @XLogCtl, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  %17 = load i32, i32* @SizeOfXLogRecord, align 4
  %18 = call i64 @MAXALIGN(i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i32 @SpinLockAcquire(i32* %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @XLogBytePosToEndRecPtr(i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* @wal_segment_size, align 8
  %29 = call i64 @XLogSegmentOffset(i32 %27, i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = call i32 @SpinLockRelease(i32* %33)
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %111

38:                                               ; preds = %3
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add nsw i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @XLogBytePosToRecPtr(i64 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @XLogBytePosToEndRecPtr(i64 %48)
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* @wal_segment_size, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @wal_segment_size, align 8
  %55 = call i64 @XLogSegmentOffset(i32 %53, i64 %54)
  %56 = sub nsw i64 %51, %55
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @wal_segment_size, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %38
  %61 = load i64, i64* %14, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %61
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @XLogRecPtrToBytePos(i32 %68)
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %60, %38
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = call i32 @SpinLockRelease(i32* %78)
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @XLogBytePosToRecPtr(i64 %80)
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* @wal_segment_size, align 8
  %86 = call i64 @XLogSegmentOffset(i32 %84, i64 %85)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @XLogRecPtrToBytePos(i32 %91)
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @XLogRecPtrToBytePos(i32 %98)
  %100 = load i64, i64* %9, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @Assert(i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @XLogRecPtrToBytePos(i32 %105)
  %107 = load i64, i64* %11, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  store i32 1, i32* %4, align 4
  br label %111

111:                                              ; preds = %70, %31
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @XLogBytePosToEndRecPtr(i64) #1

declare dso_local i64 @XLogSegmentOffset(i32, i64) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @XLogBytePosToRecPtr(i64) #1

declare dso_local i64 @XLogRecPtrToBytePos(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
