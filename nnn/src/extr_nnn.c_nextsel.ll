; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_nextsel.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_nextsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@bindings = common dso_local global %struct.TYPE_5__* null, align 8
@MSGWAIT = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FILTER = common dso_local global i32 0, align 4
@idle = common dso_local global i32 0, align 4
@EVENT_BUF_LEN = common dso_local global i32 0, align 4
@INOTIFY_MASK = common dso_local global i32 0, align 4
@NUM_EVENT_FDS = common dso_local global i32 0, align 4
@NUM_EVENT_SLOTS = common dso_local global i32 0, align 4
@event_fd = common dso_local global i64 0, align 8
@events_to_monitor = common dso_local global i32 0, align 4
@gtimeout = common dso_local global i32 0, align 4
@inotify_fd = common dso_local global i32 0, align 4
@inotify_wd = common dso_local global i64 0, align 8
@kq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nextsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextsel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bindings, align 8
  %9 = call i32 @LEN(%struct.TYPE_5__* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MSGWAIT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12, %1
  %17 = call i32 (...) @getch()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DPRINTF_D(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MSGWAIT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 2), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @FILTER, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %23
  %29 = call i32 @CONTROL(i8 signext 76)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %12
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @idle, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @idle, align 4
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* @idle, align 4
  br label %39

39:                                               ; preds = %38, %35
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bindings, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %45, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bindings, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %40

64:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @LEN(%struct.TYPE_5__*) #1

declare dso_local i32 @getch(...) #1

declare dso_local i32 @DPRINTF_D(i32) #1

declare dso_local i32 @CONTROL(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
