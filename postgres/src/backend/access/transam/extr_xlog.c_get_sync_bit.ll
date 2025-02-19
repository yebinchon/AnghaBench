; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_get_sync_bit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_get_sync_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@enableFsync = common dso_local global i32 0, align 4
@PG_O_DIRECT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unrecognized wal_sync_method: %d\00", align 1
@OPEN_DATASYNC_FLAG = common dso_local global i32 0, align 4
@OPEN_SYNC_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_sync_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sync_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @enableFsync, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = call i32 (...) @XLogIsNeeded()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = call i32 (...) @AmWalReceiverProcess()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @PG_O_DIRECT, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %14, %11, %8
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %19 [
    i32 131, label %18
    i32 130, label %18
    i32 132, label %18
  ]

18:                                               ; preds = %16, %16, %16
  store i32 0, i32* %2, align 4
  br label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %18, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @XLogIsNeeded(...) #1

declare dso_local i32 @AmWalReceiverProcess(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
