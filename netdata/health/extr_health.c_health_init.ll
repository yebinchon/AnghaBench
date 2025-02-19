; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health.c_health_init.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health.c_health_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_HEALTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Health configuration initializing\00", align 1
@CONFIG_SECTION_HEALTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@default_health_enabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Health is disabled.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @health_init() #0 {
  %1 = load i32, i32* @D_HEALTH, align 4
  %2 = call i32 @debug(i32 %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @CONFIG_SECTION_HEALTH, align 4
  %4 = load i32, i32* @default_health_enabled, align 4
  %5 = call i64 @config_get_boolean(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* @default_health_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @D_HEALTH, align 4
  %10 = call i32 @debug(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @health_silencers_init()
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i64 @config_get_boolean(i32, i8*, i32) #1

declare dso_local i32 @health_silencers_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
