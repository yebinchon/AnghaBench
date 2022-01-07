; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_sigutil.c_target_signal_from_nto.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_sigutil.c_target_signal_from_nto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@sig_map = common dso_local global %struct.TYPE_3__* null, align 8
@NTO_SIGRTMIN = common dso_local global i32 0, align 4
@NTO_SIGRTMAX = common dso_local global i32 0, align 4
@TARGET_SIGNAL_REALTIME_41 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_signal_from_nto(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %31, %8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sig_map, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sig_map, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sig_map, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %51

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NTO_SIGRTMIN, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @NTO_SIGRTMAX, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @TARGET_SIGNAL_REALTIME_41, align 4
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @NTO_SIGRTMIN, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %38, %34
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @target_signal_from_host(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %42, %23, %7
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @target_signal_from_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
