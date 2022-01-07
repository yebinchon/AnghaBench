; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_accel_restart_leave.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_accel_restart_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i32, i32, i32, i32 }

@F_UNLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@lock_file = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@ACCEL_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RestartC(-1):  %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@restart_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @accel_restart_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accel_restart_leave() #0 {
  %1 = alloca %struct.flock, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @F_UNLCK, align 4
  %4 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 3
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @SEEK_SET, align 4
  %6 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 0
  store i32 2, i32* %7, align 4
  %8 = getelementptr inbounds %struct.flock, %struct.flock* %1, i32 0, i32 1
  store i32 1, i32* %8, align 4
  store i32 0, i32* %2, align 4
  %9 = load i32, i32* @lock_file, align 4
  %10 = load i32, i32* @F_SETLK, align 4
  %11 = call i32 @fcntl(i32 %9, i32 %10, %struct.flock* %1)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load i32, i32* @ACCEL_LOG_DEBUG, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @zend_accel_error(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %0
  ret void
}

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @zend_accel_error(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
