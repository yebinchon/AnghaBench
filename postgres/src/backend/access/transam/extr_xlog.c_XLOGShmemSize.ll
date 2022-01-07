; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLOGShmemSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLOGShmemSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLOGbuffers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wal_buffers\00", align 1
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4
@NUM_XLOGINSERT_LOCKS = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLOGShmemSize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = load i32, i32* @XLOGbuffers, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %7 = call i32 (...) @XLOGChooseNumBuffers()
  %8 = call i32 @snprintf(i8* %6, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %10 = load i32, i32* @PGC_POSTMASTER, align 4
  %11 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %12 = call i32 @SetConfigOption(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %5, %0
  %14 = load i32, i32* @XLOGbuffers, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  store i32 4, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @NUM_XLOGINSERT_LOCKS, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @mul_size(i32 4, i32 %20)
  %22 = call i32 @add_size(i32 %18, i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @XLOGbuffers, align 4
  %25 = call i32 @mul_size(i32 4, i32 %24)
  %26 = call i32 @add_size(i32 %23, i32 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @XLOG_BLCKSZ, align 4
  %29 = call i32 @add_size(i32 %27, i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @XLOG_BLCKSZ, align 4
  %32 = load i32, i32* @XLOGbuffers, align 4
  %33 = call i32 @mul_size(i32 %31, i32 %32)
  %34 = call i32 @add_size(i32 %30, i32 %33)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @XLOGChooseNumBuffers(...) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @add_size(i32, i32) #1

declare dso_local i32 @mul_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
