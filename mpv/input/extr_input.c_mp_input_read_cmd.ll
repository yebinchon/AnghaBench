; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_read_cmd.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd = type { i32, i32, i64 }
%struct.input_ctx = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_cmd* @mp_input_read_cmd(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  %3 = alloca %struct.mp_cmd*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %4 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %5 = call i32 @input_lock(%struct.input_ctx* %4)
  %6 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %6, i32 0, i32 2
  %8 = call %struct.mp_cmd* @queue_remove_head(i32* %7)
  store %struct.mp_cmd* %8, %struct.mp_cmd** %3, align 8
  %9 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %10 = icmp ne %struct.mp_cmd* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %13 = call %struct.mp_cmd* @check_autorepeat(%struct.input_ctx* %12)
  store %struct.mp_cmd* %13, %struct.mp_cmd** %3, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %16 = icmp ne %struct.mp_cmd* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %22, %17, %14
  %34 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %35 = call i32 @input_unlock(%struct.input_ctx* %34)
  %36 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  ret %struct.mp_cmd* %36
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local %struct.mp_cmd* @queue_remove_head(i32*) #1

declare dso_local %struct.mp_cmd* @check_autorepeat(%struct.input_ctx*) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
