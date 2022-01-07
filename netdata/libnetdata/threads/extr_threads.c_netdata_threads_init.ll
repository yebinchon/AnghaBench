; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_netdata_threads_init.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_netdata_threads_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pthread_attr_init() failed with code %d.\00", align 1
@default_stacksize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"pthread_attr_getstacksize() failed with code %d.\00", align 1
@D_OPTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"initial pthread stack size is %zu bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @netdata_threads_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @callocz(i32 1, i32 4)
  store i32 %2, i32* @attr, align 4
  %3 = load i32, i32* @attr, align 4
  %4 = call i32 @pthread_attr_init(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @attr, align 4
  %12 = call i32 @pthread_attr_getstacksize(i32 %11, i64* @default_stacksize)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @D_OPTIONS, align 4
  %20 = load i64, i64* @default_stacksize, align 8
  %21 = call i32 @debug(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* @default_stacksize, align 8
  ret i64 %23
}

declare dso_local i32 @callocz(i32, i32) #1

declare dso_local i32 @pthread_attr_init(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @pthread_attr_getstacksize(i32, i64*) #1

declare dso_local i32 @debug(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
