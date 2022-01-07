; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_decode_jump.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_decode_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v810_cmd = type { i32, i32 }

@V810_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.v810_cmd*)* @decode_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_jump(i32 %0, i32 %1, %struct.v810_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v810_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.v810_cmd* %2, %struct.v810_cmd** %6, align 8
  %7 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %8 = getelementptr inbounds %struct.v810_cmd, %struct.v810_cmd* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* @V810_INSTR_MAXLEN, align 8
  %11 = sub nsw i64 %10, 1
  %12 = load i8**, i8*** @instrs, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @OPCODE(i32 %13)
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %9, i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.v810_cmd, %struct.v810_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @V810_INSTR_MAXLEN, align 8
  %22 = sub nsw i64 %21, 1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DISP26(i32 %23, i32 %24)
  %26 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %20, i64 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  ret i32 4
}

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i64 @OPCODE(i32) #1

declare dso_local i32 @DISP26(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
