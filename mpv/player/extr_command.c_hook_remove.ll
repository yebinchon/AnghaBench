; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_hook_remove.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_hook_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.command_ctx* }
%struct.command_ctx = type { i32, %struct.hook_handler** }
%struct.hook_handler = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.hook_handler*)* @hook_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook_remove(%struct.MPContext* %0, %struct.hook_handler* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.hook_handler*, align 8
  %5 = alloca %struct.command_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.hook_handler* %1, %struct.hook_handler** %4, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  store %struct.command_ctx* %9, %struct.command_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %44, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.command_ctx*, %struct.command_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = load %struct.command_ctx*, %struct.command_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %17, i32 0, i32 1
  %19 = load %struct.hook_handler**, %struct.hook_handler*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hook_handler*, %struct.hook_handler** %19, i64 %21
  %23 = load %struct.hook_handler*, %struct.hook_handler** %22, align 8
  %24 = load %struct.hook_handler*, %struct.hook_handler** %4, align 8
  %25 = icmp eq %struct.hook_handler* %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %16
  %27 = load %struct.command_ctx*, %struct.command_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %27, i32 0, i32 1
  %29 = load %struct.hook_handler**, %struct.hook_handler*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hook_handler*, %struct.hook_handler** %29, i64 %31
  %33 = load %struct.hook_handler*, %struct.hook_handler** %32, align 8
  %34 = call i32 @talloc_free(%struct.hook_handler* %33)
  %35 = load %struct.command_ctx*, %struct.command_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %35, i32 0, i32 1
  %37 = load %struct.hook_handler**, %struct.hook_handler*** %36, align 8
  %38 = load %struct.command_ctx*, %struct.command_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @MP_TARRAY_REMOVE_AT(%struct.hook_handler** %37, i32 %40, i32 %41)
  br label %49

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %10

47:                                               ; preds = %10
  %48 = call i32 @assert(i32 0)
  br label %49

49:                                               ; preds = %47, %26
  ret void
}

declare dso_local i32 @talloc_free(%struct.hook_handler*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.hook_handler**, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
