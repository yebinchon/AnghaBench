; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Info about Seama seal (container):\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\09oseama info <file> [options]\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\09-e\09\09\09\09print info about specified entity only\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Create Seama entity:\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\09oseama entity <file> [options]\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\09-m meta\09\09\09\09meta into to put in header\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\09-f file\09\09\09\09append content from file\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"\09-b offset\09\09\09append zeros till reaching absolute offset\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Extract from Seama seal (container):\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\09oseama extract <file> [options]\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\09-e\09\09\09\09index of entity to extract\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"\09-o file\09\09\09\09output file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
