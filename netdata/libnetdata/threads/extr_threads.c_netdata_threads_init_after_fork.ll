; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_netdata_threads_init_after_fork.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_netdata_threads_init_after_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wanted_stacksize = common dso_local global i64 0, align 8
@attr = common dso_local global i64 0, align 8
@default_stacksize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"pthread_attr_setstacksize() to %zu bytes, failed with code %d.\00", align 1
@D_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Successfully set pthread stacksize to %zu bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdata_threads_init_after_fork(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* @wanted_stacksize, align 8
  %5 = load i64, i64* @attr, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i64, i64* @default_stacksize, align 8
  %9 = load i64, i64* @wanted_stacksize, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load i64, i64* @wanted_stacksize, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i64, i64* @attr, align 8
  %16 = load i64, i64* @wanted_stacksize, align 8
  %17 = call i32 @pthread_attr_setstacksize(i64 %15, i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* @wanted_stacksize, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @fatal(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %22)
  br label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @D_SYSTEM, align 4
  %26 = load i64, i64* @wanted_stacksize, align 8
  %27 = call i32 @debug(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %11, %7, %1
  ret void
}

declare dso_local i32 @pthread_attr_setstacksize(i64, i64) #1

declare dso_local i32 @fatal(i8*, i64, i32) #1

declare dso_local i32 @debug(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
