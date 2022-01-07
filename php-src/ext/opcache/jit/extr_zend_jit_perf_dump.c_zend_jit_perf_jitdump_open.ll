; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_perf_dump.c_zend_jit_perf_jitdump_open.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_perf_dump.c_zend_jit_perf_jitdump_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"/tmp/jit-%d.dump\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@jitdump_fd = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@jitdump_mem = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@ZEND_PERF_JITDUMP_HEADER_MAGIC = common dso_local global i32 0, align 4
@ZEND_PERF_JITDUMP_HEADER_VERSION = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PATHNAME = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zend_jit_perf_jitdump_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_jit_perf_jitdump_open() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %7 = call i32 (...) @getpid()
  %8 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i64 (...) @zend_perf_timestamp()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %94

12:                                               ; preds = %0
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %94

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @read(i32 %19, %struct.TYPE_7__* %4, i32 16)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 16
  br i1 %25, label %50, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 127
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 69
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 76
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 70
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38, %32, %26, %18
  br label %94

51:                                               ; preds = %44
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %53 = load i32, i32* @O_CREAT, align 4
  %54 = load i32, i32* @O_TRUNC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @O_RDWR, align 4
  %57 = or i32 %55, %56
  %58 = call i32 (i8*, i32, ...) @open(i8* %52, i32 %57, i32 438)
  store i32 %58, i32* @jitdump_fd, align 4
  %59 = load i32, i32* @jitdump_fd, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %94

62:                                               ; preds = %51
  %63 = load i32, i32* @_SC_PAGESIZE, align 4
  %64 = call i32 @sysconf(i32 %63)
  %65 = load i32, i32* @PROT_READ, align 4
  %66 = load i32, i32* @PROT_EXEC, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MAP_PRIVATE, align 4
  %69 = load i32, i32* @jitdump_fd, align 4
  %70 = call i64 @mmap(i32* null, i32 %64, i32 %67, i32 %68, i32 %69, i32 0)
  store i64 %70, i64* @jitdump_mem, align 8
  %71 = load i64, i64* @jitdump_mem, align 8
  %72 = load i64, i64* @MAP_FAILED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @jitdump_fd, align 4
  %76 = call i32 @close(i32 %75)
  store i32 -1, i32* @jitdump_fd, align 4
  br label %94

77:                                               ; preds = %62
  %78 = call i32 @memset(%struct.TYPE_6__* %5, i32 0, i32 40)
  %79 = load i32, i32* @ZEND_PERF_JITDUMP_HEADER_MAGIC, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 6
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* @ZEND_PERF_JITDUMP_HEADER_VERSION, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 40, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  store i32 %85, i32* %86, align 8
  %87 = call i32 (...) @getpid()
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = call i64 (...) @zend_perf_timestamp()
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @jitdump_fd, align 4
  %93 = call i32 @zend_quiet_write(i32 %92, %struct.TYPE_6__* %5, i32 40)
  br label %94

94:                                               ; preds = %77, %74, %61, %50, %17, %11
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @zend_perf_timestamp(...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @read(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @zend_quiet_write(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
