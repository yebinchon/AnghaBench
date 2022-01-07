; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_otrx.c_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_otrx.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Checking TRX file:\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\09otrx check <file> [options]\09check if file is a valid TRX\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\09-o offset\09\09\09offset of TRX data in file (default: 0)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Creating new TRX file:\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\09otrx create <file> [options] [partitions]\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"\09-f file\09\09\09\09[partition] start new partition with content copied from file\0A\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"\09-A file\09\09\09\09[partition] append current partition with content copied from file\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\09-a alignment\09\09\09[partition] align current partition\0A\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"\09-b offset\09\09\09[partition] append zeros to partition till reaching absolute offset\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Extracting from TRX file:\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"\09otrx extract <file> [options]\09extract partitions from TRX file\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"\09-1 file\09\09\09\09file to extract 1st partition to (optional)\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"\09-2 file\09\09\09\09file to extract 2nd partition to (optional)\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"\09-3 file\09\09\09\09file to extract 3rd partition to (optional)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
