; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_on_cmd_list_sub_completion.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_on_cmd_list_sub_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { %struct.cmd_list_ctx* }
%struct.cmd_list_ctx = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_cmd_ctx*)* @on_cmd_list_sub_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_cmd_list_sub_completion(%struct.mp_cmd_ctx* %0) #0 {
  %2 = alloca %struct.mp_cmd_ctx*, align 8
  %3 = alloca %struct.cmd_list_ctx*, align 8
  store %struct.mp_cmd_ctx* %0, %struct.mp_cmd_ctx** %2, align 8
  %4 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %4, i32 0, i32 0
  %6 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %5, align 8
  store %struct.cmd_list_ctx* %6, %struct.cmd_list_ctx** %3, align 8
  %7 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (...) @pthread_self()
  %16 = call i64 @pthread_equal(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %24

21:                                               ; preds = %11, %1
  %22 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %3, align 8
  %23 = call i32 @continue_cmd_list(%struct.cmd_list_ctx* %22)
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

declare dso_local i64 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @continue_cmd_list(%struct.cmd_list_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
