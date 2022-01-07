; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_space_cadet.c_process_space_cadet.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_space_cadet.c_process_space_cadet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@LSPO_KEYS = common dso_local global i32 0, align 4
@RSPC_KEYS = common dso_local global i32 0, align 4
@LCPO_KEYS = common dso_local global i32 0, align 4
@RCPC_KEYS = common dso_local global i32 0, align 4
@LAPO_KEYS = common dso_local global i32 0, align 4
@RAPC_KEYS = common dso_local global i32 0, align 4
@SFTENT_KEYS = common dso_local global i32 0, align 4
@sc_last = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_space_cadet(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %35 [
    i32 132, label %7
    i32 129, label %11
    i32 133, label %15
    i32 130, label %19
    i32 134, label %23
    i32 131, label %27
    i32 128, label %31
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = load i32, i32* @LSPO_KEYS, align 4
  %10 = call i32 @perform_space_cadet(%struct.TYPE_6__* %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i32, i32* @RSPC_KEYS, align 4
  %14 = call i32 @perform_space_cadet(%struct.TYPE_6__* %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = load i32, i32* @LCPO_KEYS, align 4
  %18 = call i32 @perform_space_cadet(%struct.TYPE_6__* %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i32, i32* @RCPC_KEYS, align 4
  %22 = call i32 @perform_space_cadet(%struct.TYPE_6__* %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32, i32* @LAPO_KEYS, align 4
  %26 = call i32 @perform_space_cadet(%struct.TYPE_6__* %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %44

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i32, i32* @RAPC_KEYS, align 4
  %30 = call i32 @perform_space_cadet(%struct.TYPE_6__* %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32, i32* @SFTENT_KEYS, align 4
  %34 = call i32 @perform_space_cadet(%struct.TYPE_6__* %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* @sc_last, align 4
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %31, %27, %23, %19, %15, %11, %7
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @perform_space_cadet(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
