; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_run_next_hook_handler.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_run_next_hook_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.command_ctx* }
%struct.command_ctx = type { i32, %struct.hook_handler** }
%struct.hook_handler = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i8*, i32)* @run_next_hook_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_next_hook_handler(%struct.MPContext* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.command_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hook_handler*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  store %struct.command_ctx* %13, %struct.command_ctx** %8, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %40, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %22, i32 0, i32 1
  %24 = load %struct.hook_handler**, %struct.hook_handler*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hook_handler*, %struct.hook_handler** %24, i64 %26
  %28 = load %struct.hook_handler*, %struct.hook_handler** %27, align 8
  store %struct.hook_handler* %28, %struct.hook_handler** %10, align 8
  %29 = load %struct.hook_handler*, %struct.hook_handler** %10, align 8
  %30 = getelementptr inbounds %struct.hook_handler, %struct.hook_handler* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strcmp(i32 %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %37 = load %struct.hook_handler*, %struct.hook_handler** %10, align 8
  %38 = call i32 @invoke_hook_handler(%struct.MPContext* %36, %struct.hook_handler* %37)
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %45 = call i32 @mp_wakeup_core(%struct.MPContext* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @invoke_hook_handler(%struct.MPContext*, %struct.hook_handler*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
