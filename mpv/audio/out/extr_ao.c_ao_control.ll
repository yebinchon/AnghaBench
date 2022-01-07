; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_control.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ao*, i32, i8*)* }

@CONTROL_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ao_control(%struct.ao* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ao*, %struct.ao** %4, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ao*, i32, i8*)*, i32 (%struct.ao*, i32, i8*)** %10, align 8
  %12 = icmp ne i32 (%struct.ao*, i32, i8*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.ao*, %struct.ao** %4, align 8
  %15 = getelementptr inbounds %struct.ao, %struct.ao* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ao*, i32, i8*)*, i32 (%struct.ao*, i32, i8*)** %17, align 8
  %19 = load %struct.ao*, %struct.ao** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 %18(%struct.ao* %19, i32 %20, i8* %21)
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @CONTROL_UNKNOWN, align 4
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ %22, %13 ], [ %24, %23 ]
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
