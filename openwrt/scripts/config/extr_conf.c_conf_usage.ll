; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_conf.c_conf_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_conf.c_conf_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Usage: %s [-s] [option] <kconfig-file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[option] is _one_ of the following:\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"  --listnewconfig         List new options\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"  --oldaskconfig          Start a new configuration using a line-oriented program\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"  --oldconfig             Update a configuration using a provided .config as base\0A\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"  --silentoldconfig       Same as oldconfig, but quietly, additionally update deps\0A\00", align 1
@.str.6 = private unnamed_addr constant [95 x i8] c"  --olddefconfig          Same as silentoldconfig but sets new symbols to their default value\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"  --oldnoconfig           An alias of olddefconfig\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"  --defconfig <file>      New config with default defined in <file>\0A\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"  --savedefconfig <file>  Save the minimal current configuration to <file>\0A\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"  --allnoconfig           New config where all options are answered with no\0A\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"  --allyesconfig          New config where all options are answered with yes\0A\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"  --allmodconfig          New config where all options are answered with mod\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"  --alldefconfig          New config with all symbols set to default\0A\00", align 1
@.str.14 = private unnamed_addr constant [72 x i8] c"  --randconfig            New config with random answer to all options\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @conf_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
