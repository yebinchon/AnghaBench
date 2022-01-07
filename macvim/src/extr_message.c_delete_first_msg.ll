; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_message.c_delete_first_msg.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_message.c_delete_first_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hist = type { %struct.msg_hist*, %struct.msg_hist* }

@msg_hist_len = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@first_msg_hist = common dso_local global %struct.msg_hist* null, align 8
@last_msg_hist = common dso_local global i32* null, align 8
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_first_msg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.msg_hist*, align 8
  %3 = load i64, i64* @msg_hist_len, align 8
  %4 = icmp sle i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @FAIL, align 4
  store i32 %6, i32* %1, align 4
  br label %25

7:                                                ; preds = %0
  %8 = load %struct.msg_hist*, %struct.msg_hist** @first_msg_hist, align 8
  store %struct.msg_hist* %8, %struct.msg_hist** %2, align 8
  %9 = load %struct.msg_hist*, %struct.msg_hist** %2, align 8
  %10 = getelementptr inbounds %struct.msg_hist, %struct.msg_hist* %9, i32 0, i32 1
  %11 = load %struct.msg_hist*, %struct.msg_hist** %10, align 8
  store %struct.msg_hist* %11, %struct.msg_hist** @first_msg_hist, align 8
  %12 = load %struct.msg_hist*, %struct.msg_hist** @first_msg_hist, align 8
  %13 = icmp eq %struct.msg_hist* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32* null, i32** @last_msg_hist, align 8
  br label %15

15:                                               ; preds = %14, %7
  %16 = load %struct.msg_hist*, %struct.msg_hist** %2, align 8
  %17 = getelementptr inbounds %struct.msg_hist, %struct.msg_hist* %16, i32 0, i32 0
  %18 = load %struct.msg_hist*, %struct.msg_hist** %17, align 8
  %19 = call i32 @vim_free(%struct.msg_hist* %18)
  %20 = load %struct.msg_hist*, %struct.msg_hist** %2, align 8
  %21 = call i32 @vim_free(%struct.msg_hist* %20)
  %22 = load i64, i64* @msg_hist_len, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* @msg_hist_len, align 8
  %24 = load i32, i32* @OK, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %15, %5
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @vim_free(%struct.msg_hist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
