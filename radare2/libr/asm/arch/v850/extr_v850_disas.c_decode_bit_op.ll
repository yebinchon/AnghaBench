; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_bit_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_bit_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v850_cmd = type { i32, i32 }

@V850_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bit_instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%u, 0x%x[r%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.v850_cmd*)* @decode_bit_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_bit_op(i32* %0, i32 %1, %struct.v850_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v850_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v850_cmd* %2, %struct.v850_cmd** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @r_read_le16(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @r_read_at_le16(i32* %17, i32 2)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @V850_INSTR_MAXLEN, align 8
  %23 = sub nsw i64 %22, 1
  %24 = load i8**, i8*** @bit_instrs, align 8
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 14
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %21, i64 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @get_reg1(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @V850_INSTR_MAXLEN, align 8
  %37 = sub nsw i64 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 11
  %40 = and i32 %39, 7
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %35, i64 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  store i32 4, i32* %4, align 4
  br label %44

44:                                               ; preds = %14, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i32 @get_reg1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
