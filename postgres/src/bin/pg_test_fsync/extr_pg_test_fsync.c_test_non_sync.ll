; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_test_non_sync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_test_non_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"\0ANon-sync'ed %dkB writes:\0A\00", align 1
@XLOG_BLCKSZ_K = common dso_local global i32 0, align 4
@LABEL_FORMAT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@stdout = common dso_local global i32 0, align 4
@START_TIMER = common dso_local global i32 0, align 4
@alarm_triggered = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not open output file\00", align 1
@buf = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@STOP_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_non_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_non_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @XLOG_BLCKSZ_K, align 4
  %5 = call i32 (i8*, ...) @printf(i8* %3, i32 %4)
  %6 = load i8*, i8** @LABEL_FORMAT, align 8
  %7 = call i32 (i8*, ...) @printf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  %10 = load i32, i32* @START_TIMER, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %33, %0
  %12 = load i32, i32* @alarm_triggered, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load i32, i32* @filename, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call i32 @open(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %1, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @buf, align 4
  %24 = load i64, i64* @XLOG_BLCKSZ, align 8
  %25 = call i64 @write(i32 %22, i32 %23, i64 %24)
  %26 = load i64, i64* @XLOG_BLCKSZ, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @close(i32 %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load i32, i32* @STOP_TIMER, align 4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
