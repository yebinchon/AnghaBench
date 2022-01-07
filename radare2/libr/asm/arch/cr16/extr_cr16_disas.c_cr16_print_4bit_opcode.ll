; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_print_4bit_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_print_4bit_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instrs_4bit = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cr16_cmd*, i32)* @cr16_print_4bit_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_print_4bit_opcode(%struct.cr16_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cr16_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.cr16_cmd* %0, %struct.cr16_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @cr16_get_opcode_low(i32 %6)
  %8 = call i64 @cr16_check_instrs_4bit_bndrs(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %16 = sub nsw i64 %15, 1
  %17 = load i8**, i8*** @instrs_4bit, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @cr16_get_opcode_low(i32 %18)
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @snprintf(i32 %14, i64 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %11, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @cr16_check_instrs_4bit_bndrs(i64) #1

declare dso_local i64 @cr16_get_opcode_low(i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
