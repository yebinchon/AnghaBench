; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_debug.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_mousekey.c_mousekey_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@debug_mouse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mousekey [btn|x y v h](rep/acl): [\00", align 1
@mouse_report = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"](\00", align 1
@mousekey_repeat = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@mousekey_accel = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mousekey_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousekey_debug() #0 {
  %1 = load i32, i32* @debug_mouse, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %27

4:                                                ; preds = %0
  %5 = call i32 @print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 4), align 4
  %7 = call i32 @phex(i32 %6)
  %8 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 3), align 4
  %10 = call i32 @print_decs(i32 %9)
  %11 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 2), align 4
  %13 = call i32 @print_decs(i32 %12)
  %14 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 1), align 4
  %16 = call i32 @print_decs(i32 %15)
  %17 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mouse_report, i32 0, i32 0), align 4
  %19 = call i32 @print_decs(i32 %18)
  %20 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @mousekey_repeat, align 4
  %22 = call i32 @print_dec(i32 %21)
  %23 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @mousekey_accel, align 4
  %25 = call i32 @print_dec(i32 %24)
  %26 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @phex(i32) #1

declare dso_local i32 @print_decs(i32) #1

declare dso_local i32 @print_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
