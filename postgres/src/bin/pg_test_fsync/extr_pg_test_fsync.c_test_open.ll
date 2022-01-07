; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_test_open.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_test_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not open output file\00", align 1
@needs_unlink = common dso_local global i32 0, align 4
@full_buf = common dso_local global i32 0, align 4
@DEFAULT_XLOG_SEG_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fsync failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_open() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @filename, align 4
  %3 = load i32, i32* @O_RDWR, align 4
  %4 = load i32, i32* @O_CREAT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @S_IRUSR, align 4
  %7 = load i32, i32* @S_IWUSR, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @open(i32 %2, i32 %5, i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  store i32 1, i32* @needs_unlink, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @full_buf, align 4
  %16 = load i64, i64* @DEFAULT_XLOG_SEG_SIZE, align 8
  %17 = call i64 @write(i32 %14, i32 %15, i64 %16)
  %18 = load i64, i64* @DEFAULT_XLOG_SEG_SIZE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %13
  %23 = load i32, i32* %1, align 4
  %24 = call i64 @fsync(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @close(i32 %29)
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
