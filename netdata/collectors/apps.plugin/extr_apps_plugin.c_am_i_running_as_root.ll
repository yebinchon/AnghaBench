; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_am_i_running_as_root.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_am_i_running_as_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"I am running with escalated privileges, uid = %u, euid = %u.\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"I am not running with escalated privileges, uid = %u, euid = %u.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @am_i_running_as_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am_i_running_as_root() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 (...) @getuid()
  store i64 %4, i64* %2, align 8
  %5 = call i64 (...) @geteuid()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8, %0
  %12 = load i64, i64* @debug_enabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %14, %11
  store i32 1, i32* %1, align 4
  br label %27

19:                                               ; preds = %8
  %20 = load i64, i64* @debug_enabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %19
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @info(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
