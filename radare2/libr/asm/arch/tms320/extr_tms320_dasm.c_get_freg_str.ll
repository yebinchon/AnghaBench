; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_freg_str.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_freg_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_freg_str.table = internal global [16 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"ac0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ac1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ac2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ac3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"t0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"t2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"t3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ar0\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ar1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ar2\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ar3\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ar4\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ar5\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ar6\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ar7\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_freg_str(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 15
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [16 x i8*], [16 x i8*]* @get_freg_str.table, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
