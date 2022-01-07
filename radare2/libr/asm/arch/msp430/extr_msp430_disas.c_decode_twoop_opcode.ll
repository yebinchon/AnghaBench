; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_twoop_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_twoop_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp430_cmd = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@two_op_instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c".b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.msp430_cmd*)* @decode_twoop_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_twoop_opcode(i32 %0, i32 %1, i32 %2, %struct.msp430_cmd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msp430_cmd*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.msp430_cmd* %3, %struct.msp430_cmd** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @get_twoop_opcode(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %13 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i8**, i8*** @two_op_instrs, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @get_bw(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @strlen(i32 %29)
  %31 = sub i64 3, %30
  %32 = call i32 @strncat(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %23, %4
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %36 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.msp430_cmd*, %struct.msp430_cmd** %8, align 8
  %41 = call i32 @decode_addressing_mode(i32 %37, i32 %38, i32 %39, %struct.msp430_cmd* %40)
  ret i32 %41
}

declare dso_local i64 @get_twoop_opcode(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @get_bw(i32) #1

declare dso_local i32 @strncat(i32, i8*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @decode_addressing_mode(i32, i32, i32, %struct.msp430_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
