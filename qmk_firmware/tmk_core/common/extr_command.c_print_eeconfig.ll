; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_command.c_print_eeconfig.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_command.c_print_eeconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"default_layer: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"debug_config.raw: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".enable: \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".matrix: \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c".keyboard: \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c".mouse: \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"keymap_config.raw: \00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c".swap_control_capslock: \00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c".capslock_to_control: \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c".swap_lctl_lgui: \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c".swap_rctl_rgui: \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c".swap_lalt_lgui: \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c".swap_ralt_rgui: \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c".no_gui: \00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c".swap_grave_esc: \00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c".swap_backslash_backspace: \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c".nkro: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_eeconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_eeconfig() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = call i32 @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @eeconfig_read_default_layer()
  %5 = call i32 @print_dec(i32 %4)
  %6 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (...) @eeconfig_read_debug()
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  store i32 %7, i32* %8, align 4
  %9 = call i32 @print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @print_hex8(i32 %11)
  %13 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @print_dec(i32 %16)
  %18 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @print_dec(i32 %21)
  %23 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @print_dec(i32 %26)
  %28 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @print_dec(i32 %31)
  %33 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 (...) @eeconfig_read_keymap()
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 10
  store i32 %34, i32* %35, align 4
  %36 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @print_hex8(i32 %38)
  %40 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @print_dec(i32 %43)
  %45 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @print_dec(i32 %48)
  %50 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @print_dec(i32 %53)
  %55 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @print_dec(i32 %58)
  %60 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @print_dec(i32 %63)
  %65 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @print_dec(i32 %68)
  %70 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @print_dec(i32 %73)
  %75 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @print_dec(i32 %78)
  %80 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @print_dec(i32 %83)
  %85 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @print_dec(i32 %88)
  %90 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @print_dec(i32) #1

declare dso_local i32 @eeconfig_read_default_layer(...) #1

declare dso_local i32 @eeconfig_read_debug(...) #1

declare dso_local i32 @print_hex8(i32) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
