; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkfwimage2.c_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkfwimage2.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [402 x i8] c"Version %s\0AUsage: %s [options]\0A\09-v <version string>\09 - firmware version information, default: %s\0A\09-m <magic>\09\09 - firmware magic, default: %s\0A\09-f <flash base>\09\09 - flash base address, default: 0x%08x\0A\09-o <output file>\09 - firmware output file, default: %s\0A\09-p <name>:<offset>:<len>:<memaddr>:<entry>:<file>\0A \09\09\09\09 - create a partition from <file>\0A\09-z\09\09\09 - set partition offsets to zero\0A\09-h\09\09\09 - this help\0A\00", align 1
@VERSION = common dso_local global i32 0, align 4
@DEFAULT_VERSION = common dso_local global i32 0, align 4
@MAGIC_HEADER = common dso_local global i32 0, align 4
@DEFAULT_FLASH_BASE = common dso_local global i32 0, align 4
@DEFAULT_OUTPUT_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @VERSION, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @DEFAULT_VERSION, align 4
  %6 = load i32, i32* @MAGIC_HEADER, align 4
  %7 = load i32, i32* @DEFAULT_FLASH_BASE, align 4
  %8 = load i32, i32* @DEFAULT_OUTPUT_FILE, align 4
  %9 = call i32 @INFO(i8* getelementptr inbounds ([402 x i8], [402 x i8]* @.str, i64 0, i64 0), i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @INFO(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
