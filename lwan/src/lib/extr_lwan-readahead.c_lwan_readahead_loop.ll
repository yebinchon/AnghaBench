; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-readahead.c_lwan_readahead_loop.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-readahead.c_lwan_readahead_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_readahead_cmd = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IOPRIO_WHO_PROCESS = common dso_local global i32 0, align 4
@IOPRIO_CLASS_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"readahead\00", align 1
@readahead_pipe_fd = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Ignoring error while reading from pipe (%d)\00", align 1
@MADV_WILLNEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @lwan_readahead_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lwan_readahead_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [16 x %struct.lwan_readahead_cmd], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @IOPRIO_WHO_PROCESS, align 4
  %8 = load i32, i32* @IOPRIO_CLASS_IDLE, align 4
  %9 = call i32 @IOPRIO_PRIO_VALUE(i32 %8, i32 7)
  %10 = call i32 @ioprio_set(i32 %7, i32 0, i32 %9)
  %11 = call i32 @lwan_set_thread_name(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %1, %32, %33, %96
  %13 = load i32*, i32** @readahead_pipe_fd, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 0
  %17 = call i64 @read(i32 %15, %struct.lwan_readahead_cmd* %16, i32 384)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = call i64 @UNLIKELY(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %12
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EAGAIN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  br label %12

33:                                               ; preds = %28
  %34 = load i32*, i32** @readahead_pipe_fd, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lwan_status_perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %12

38:                                               ; preds = %12
  %39 = load i64, i64* %4, align 8
  %40 = udiv i64 %39, 24
  store i64 %40, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %93, %38
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %96

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %92 [
    i32 129, label %50
    i32 130, label %67
    i32 128, label %91
  ]

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @readahead(i32 %55, i32 %60, i32 %65)
  br label %92

67:                                               ; preds = %45
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MADV_WILLNEED, align 4
  %79 = call i32 @madvise(i32 %72, i32 %77, i32 %78)
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds [16 x %struct.lwan_readahead_cmd], [16 x %struct.lwan_readahead_cmd]* %3, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.lwan_readahead_cmd, %struct.lwan_readahead_cmd* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mlock(i32 %84, i32 %89)
  br label %92

91:                                               ; preds = %45
  br label %97

92:                                               ; preds = %45, %67, %50
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %6, align 8
  br label %41

96:                                               ; preds = %41
  br label %12

97:                                               ; preds = %91
  ret i8* null
}

declare dso_local i32 @ioprio_set(i32, i32, i32) #1

declare dso_local i32 @IOPRIO_PRIO_VALUE(i32, i32) #1

declare dso_local i32 @lwan_set_thread_name(i8*) #1

declare dso_local i64 @read(i32, %struct.lwan_readahead_cmd*, i32) #1

declare dso_local i64 @UNLIKELY(i64) #1

declare dso_local i32 @lwan_status_perror(i8*, i32) #1

declare dso_local i32 @readahead(i32, i32, i32) #1

declare dso_local i32 @madvise(i32, i32, i32) #1

declare dso_local i32 @mlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
