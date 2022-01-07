; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_shared_alloc.c_zend_shared_alloc_lock.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_shared_alloc.c_zend_shared_alloc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i32, i64, i32, i32 }

@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@lock_file = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ACCEL_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot create lock - %s (%d)\00", align 1
@zts_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_shared_alloc_lock() #0 {
  %1 = alloca %struct.flock, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @F_WRLCK, align 4
  %4 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 4
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @SEEK_SET, align 4
  %6 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 3
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 0
  store i32 1, i32* %8, align 8
  br label %9

9:                                                ; preds = %0, %18
  %10 = load i32, i32* @lock_file, align 4
  %11 = load i32, i32* @F_SETLKW, align 4
  %12 = call i32 @fcntl(i32 %10, i32 %11, %struct.flock* %1)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EINTR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %9

19:                                               ; preds = %14
  %20 = load i32, i32* @ACCEL_LOG_ERROR, align 4
  %21 = load i64, i64* @errno, align 8
  %22 = call i32 @strerror(i64 %21)
  %23 = load i64, i64* @errno, align 8
  %24 = call i32 @zend_accel_error(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %19, %9
  br label %26

26:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  ret void
}

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @zend_accel_error(i32, i8*, i32, i64) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
