; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_msp430_decode_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_msp430_decode_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp430_cmd = type { i8*, i32, i32 }

@MSP430_TWOOP = common dso_local global i32 0, align 4
@MSP430_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp430_decode_command(i32* %0, i32 %1, %struct.msp430_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msp430_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.msp430_cmd* %2, %struct.msp430_cmd** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %81

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @r_read_le16(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @get_twoop_opcode(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %43 [
    i32 131, label %22
    i32 128, label %23
    i32 130, label %39
    i32 129, label %39
  ]

22:                                               ; preds = %16
  br label %64

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 3968
  %26 = icmp sle i32 %25, 768
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @r_read_at_le16(i32* %31, i32 2)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.msp430_cmd*, %struct.msp430_cmd** %7, align 8
  %37 = call i32 @decode_oneop_opcode(i32 %34, i32 %35, %struct.msp430_cmd* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %23
  br label %64

39:                                               ; preds = %16, %16
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.msp430_cmd*, %struct.msp430_cmd** %7, align 8
  %42 = call i32 @decode_jmp(i32 %40, %struct.msp430_cmd* %41)
  store i32 2, i32* %8, align 4
  br label %64

43:                                               ; preds = %16
  %44 = load i32, i32* @MSP430_TWOOP, align 4
  %45 = load %struct.msp430_cmd*, %struct.msp430_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 4
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @r_read_at_le16(i32* %50, i32 2)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 6
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @r_read_at_le16(i32* %55, i32 4)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.msp430_cmd*, %struct.msp430_cmd** %7, align 8
  %63 = call i32 @decode_twoop_opcode(i32 %59, i32 %60, i32 %61, %struct.msp430_cmd* %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %58, %39, %38, %22
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* @MSP430_INV, align 4
  %69 = load %struct.msp430_cmd*, %struct.msp430_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.msp430_cmd*, %struct.msp430_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @snprintf(i32 %73, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.msp430_cmd*, %struct.msp430_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  store i32 2, i32* %8, align 4
  br label %79

79:                                               ; preds = %67, %64
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @get_twoop_opcode(i32) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @decode_oneop_opcode(i32, i32, %struct.msp430_cmd*) #1

declare dso_local i32 @decode_jmp(i32, %struct.msp430_cmd*) #1

declare dso_local i32 @decode_twoop_opcode(i32, i32, i32, %struct.msp430_cmd*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
