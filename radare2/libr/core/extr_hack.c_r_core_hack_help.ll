; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_hack.c_r_core_hack_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_hack.c_r_core_hack_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"wao\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" [op]\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"performs a modification on current opcode\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" nop\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"nop current opcode\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" jinf\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"assemble an infinite loop\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" jz\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"make current opcode conditional (zero)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" jnz\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"make current opcode conditional (not zero)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" ret1\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"make the current opcode return 1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" ret0\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"make the current opcode return 0\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" retn\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"make the current opcode return -1\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" nocj\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"remove conditional operation from branch (make it unconditional)\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" trap\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"make the current opcode a trap\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c" recj\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"reverse (swap) conditional branch instruction\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"WIP:\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"not all archs are supported and not all commands work on all archs\00", align 1
@__const.r_core_hack_help.help_msg = private unnamed_addr constant [37 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_core_hack_help(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [37 x i8*], align 16
  store i32* %0, i32** %2, align 8
  %4 = bitcast [37 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([37 x i8*]* @__const.r_core_hack_help.help_msg to i8*), i64 296, i1 false)
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds [37 x i8*], [37 x i8*]* %3, i64 0, i64 0
  %7 = call i32 @r_core_cmd_help(i32* %5, i8** %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @r_core_cmd_help(i32*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
