; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_remove_scan_listener.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_remove_scan_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [21 x i8] c"remove_scan_listener\00", align 1
@state = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @remove_scan_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_scan_listener(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @state, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @state, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.TYPE_5__** %9, %struct.TYPE_5__*** %3, align 8
  br label %10

10:                                               ; preds = %30, %7
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = icmp eq %struct.TYPE_5__* %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = call i32 @free(%struct.TYPE_5__* %24)
  br label %30

26:                                               ; preds = %14
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.TYPE_5__** %29, %struct.TYPE_5__*** %3, align 8
  br label %30

30:                                               ; preds = %26, %19
  br label %10

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
