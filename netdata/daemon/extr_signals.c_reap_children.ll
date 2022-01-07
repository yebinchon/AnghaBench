; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_signals.c_reap_children.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_signals.c_reap_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@P_ALL = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ECHILD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"SIGNAL: Failed to wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reap_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reap_children() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  br label %2

2:                                                ; preds = %0, %37
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* @P_ALL, align 4
  %5 = load i32, i32* @WEXITED, align 4
  %6 = load i32, i32* @WNOHANG, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @WNOWAIT, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @waitid(i32 %4, i32 0, %struct.TYPE_3__* %1, i32 %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ECHILD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  br label %38

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %38

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @myp_reap(i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @usleep(i32 10000)
  br label %35

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @reap_child(i64 %33)
  br label %35

35:                                               ; preds = %31, %29
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %2

38:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @waitid(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @myp_reap(i64) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @reap_child(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
