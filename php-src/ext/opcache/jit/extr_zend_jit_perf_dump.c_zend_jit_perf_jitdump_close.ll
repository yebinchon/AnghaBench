; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_perf_dump.c_zend_jit_perf_jitdump_close.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_perf_dump.c_zend_jit_perf_jitdump_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@jitdump_fd = common dso_local global i64 0, align 8
@ZEND_PERF_JITDUMP_RECORD_CLOSE = common dso_local global i32 0, align 4
@jitdump_mem = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zend_jit_perf_jitdump_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_jit_perf_jitdump_close() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = load i64, i64* @jitdump_fd, align 8
  %3 = icmp sge i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i32, i32* @ZEND_PERF_JITDUMP_RECORD_CLOSE, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 12, i32* %7, align 4
  %8 = call i32 (...) @zend_perf_timestamp()
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i64, i64* @jitdump_fd, align 8
  %11 = call i32 @zend_quiet_write(i64 %10, %struct.TYPE_3__* %1, i32 12)
  %12 = load i64, i64* @jitdump_fd, align 8
  %13 = call i32 @close(i64 %12)
  %14 = load i64, i64* @jitdump_mem, align 8
  %15 = load i64, i64* @MAP_FAILED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i64, i64* @jitdump_mem, align 8
  %19 = load i32, i32* @_SC_PAGESIZE, align 4
  %20 = call i32 @sysconf(i32 %19)
  %21 = call i32 @munmap(i64 %18, i32 %20)
  br label %22

22:                                               ; preds = %17, %4
  br label %23

23:                                               ; preds = %22, %0
  ret void
}

declare dso_local i32 @zend_perf_timestamp(...) #1

declare dso_local i32 @zend_quiet_write(i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @sysconf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
