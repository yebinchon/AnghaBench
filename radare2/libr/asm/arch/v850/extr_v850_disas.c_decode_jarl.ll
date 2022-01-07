; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_jarl.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_decode_jarl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v850_cmd = type { i32, i32 }

@V850_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"0x%08x, r%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.v850_cmd*)* @decode_jarl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_jarl(i32* %0, i32 %1, %struct.v850_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v850_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v850_cmd* %2, %struct.v850_cmd** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %47

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @r_read_le16(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @r_read_at_le16(i32* %18, i32 2)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @get_reg2(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 6
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @get_reg1(i32 %24)
  %26 = or i32 %23, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @V850_INSTR_MAXLEN, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load i8**, i8*** @instrs, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @get_opcode(i32 %33)
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %29, i64 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.v850_cmd, %struct.v850_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @V850_INSTR_MAXLEN, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 1
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %40, i64 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  store i32 4, i32* %4, align 4
  br label %47

47:                                               ; preds = %15, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @get_reg2(i32) #1

declare dso_local i32 @get_reg1(i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i64 @get_opcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
