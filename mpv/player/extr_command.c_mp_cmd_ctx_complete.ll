; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_cmd_ctx_complete.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_cmd_ctx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i32, i64, i32, i32 (%struct.mp_cmd_ctx*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_cmd_ctx_complete(%struct.mp_cmd_ctx* %0) #0 {
  %2 = alloca %struct.mp_cmd_ctx*, align 8
  store %struct.mp_cmd_ctx* %0, %struct.mp_cmd_ctx** %2, align 8
  %3 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %10, i32 0, i32 1
  %12 = call i32 @mpv_free_node_contents(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %14, i32 0, i32 4
  %16 = load i32 (%struct.mp_cmd_ctx*)*, i32 (%struct.mp_cmd_ctx*)** %15, align 8
  %17 = icmp ne i32 (%struct.mp_cmd_ctx*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %19, i32 0, i32 4
  %21 = load i32 (%struct.mp_cmd_ctx*)*, i32 (%struct.mp_cmd_ctx*)** %20, align 8
  %22 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %23 = call i32 %21(%struct.mp_cmd_ctx* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mp_abort_remove(i32 %32, i64 %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %38, i32 0, i32 1
  %40 = call i32 @mpv_free_node_contents(i32* %39)
  %41 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %2, align 8
  %42 = call i32 @talloc_free(%struct.mp_cmd_ctx* %41)
  ret void
}

declare dso_local i32 @mpv_free_node_contents(i32*) #1

declare dso_local i32 @mp_abort_remove(i32, i64) #1

declare dso_local i32 @talloc_free(%struct.mp_cmd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
