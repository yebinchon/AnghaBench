; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arcompact-dis.c_arc_print_disassembler_options.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arcompact-dis.c_arc_print_disassembler_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [97 x i8] c"\0A ARC-specific disassembler options:\0A use with the -M switch, with options separated by commas\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"  insn-stream    Show the instruction byte stream from most\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"                 significant byte to least significant byte (excluding LIMM).\0A\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"                 This option is useful for viewing the actual encoding of instructions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"  simd           Enable SIMD instructions disassembly.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_print_disassembler_options(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @fprintf(i32* %3, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @fprintf(i32* %5, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @fprintf(i32* %7, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @fprintf(i32* %9, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @fprintf(i32* %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
