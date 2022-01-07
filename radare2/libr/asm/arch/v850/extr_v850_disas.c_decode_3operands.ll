; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_3operands.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_3operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v850_cmd = type { i32, i32 }

@V850_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"0x%x, r%d, r%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.v850_cmd*)* @decode_3operands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_3operands(i32* %0, i32 %1, %struct.v850_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v850_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v850_cmd* %2, %struct.v850_cmd** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @r_read_le16(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @r_read_at_le16(i32* %16, i32 2)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @V850_INSTR_MAXLEN, align 8
  %22 = sub nsw i64 %21, 1
  %23 = load i8**, i8*** @instrs, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @get_opcode(i32 %24)
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %20, i64 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @V850_INSTR_MAXLEN, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @get_reg1(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @get_reg2(i32 %37)
  %39 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %31, i64 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36, i32 %38)
  store i32 4, i32* %4, align 4
  br label %40

40:                                               ; preds = %13, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i64 @get_opcode(i32) #1

declare dso_local i32 @get_reg1(i32) #1

declare dso_local i32 @get_reg2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
