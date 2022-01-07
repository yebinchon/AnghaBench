; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mips_gnu.c_mips_reg_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mips_gnu.c_mips_reg_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_reg_decode.REGISTERS = internal global [32 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"v0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"t0\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"t2\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"t3\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"t4\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"t5\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"t6\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"t7\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"s0\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"s1\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"s2\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"s3\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"s4\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"s5\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"s6\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"s7\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"t8\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"t9\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"k0\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"k1\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"gp\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ra\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @mips_reg_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mips_reg_decode(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 32
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [32 x i8*], [32 x i8*]* @mips_reg_decode.REGISTERS, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %2, align 8
  br label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %12

12:                                               ; preds = %11, %6
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
