; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_eeconfig_debug_rgb_matrix.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_eeconfig_debug_rgb_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"rgb_matrix_config eprom\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rgb_matrix_config.enable = %d\0A\00", align 1
@rgb_matrix_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"rgb_matrix_config.mode = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"rgb_matrix_config.hsv.h = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"rgb_matrix_config.hsv.s = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"rgb_matrix_config.hsv.v = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"rgb_matrix_config.speed = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeconfig_debug_rgb_matrix() #0 {
  %1 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 3), align 4
  %3 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 2), align 4
  %5 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 1, i32 2), align 4
  %7 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 1, i32 1), align 4
  %9 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 1, i32 0), align 4
  %11 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rgb_matrix_config, i32 0, i32 0), align 4
  %13 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %12)
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
