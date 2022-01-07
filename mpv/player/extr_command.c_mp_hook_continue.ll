; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_hook_continue.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_hook_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.command_ctx* }
%struct.command_ctx = type { i32, %struct.hook_handler** }
%struct.hook_handler = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid hook API usage\0A\00", align 1
@MPV_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_hook_continue(%struct.MPContext* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.command_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hook_handler*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load %struct.command_ctx*, %struct.command_ctx** %12, align 8
  store %struct.command_ctx* %13, %struct.command_ctx** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %57, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %14
  %21 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %21, i32 0, i32 1
  %23 = load %struct.hook_handler**, %struct.hook_handler*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hook_handler*, %struct.hook_handler** %23, i64 %25
  %27 = load %struct.hook_handler*, %struct.hook_handler** %26, align 8
  store %struct.hook_handler* %27, %struct.hook_handler** %10, align 8
  %28 = load %struct.hook_handler*, %struct.hook_handler** %10, align 8
  %29 = getelementptr inbounds %struct.hook_handler, %struct.hook_handler* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(i32 %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %20
  %35 = load %struct.hook_handler*, %struct.hook_handler** %10, align 8
  %36 = getelementptr inbounds %struct.hook_handler, %struct.hook_handler* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.hook_handler*, %struct.hook_handler** %10, align 8
  %42 = getelementptr inbounds %struct.hook_handler, %struct.hook_handler* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %60

46:                                               ; preds = %40
  %47 = load %struct.hook_handler*, %struct.hook_handler** %10, align 8
  %48 = getelementptr inbounds %struct.hook_handler, %struct.hook_handler* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %50 = load %struct.hook_handler*, %struct.hook_handler** %10, align 8
  %51 = getelementptr inbounds %struct.hook_handler, %struct.hook_handler* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @run_next_hook_handler(%struct.MPContext* %49, i32 %52, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %64

56:                                               ; preds = %34, %20
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %14

60:                                               ; preds = %45, %14
  %61 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %62 = call i32 @MP_ERR(%struct.MPContext* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %46
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @run_next_hook_handler(%struct.MPContext*, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
