; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/propeller/extr_propeller_disas.c_decode_ext_cmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/propeller/extr_propeller_disas.c_decode_ext_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.propeller_cmd = type { i32, i32 }

@PROP_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ext_instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.propeller_cmd*, i32)* @decode_ext_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ext_cmd(%struct.propeller_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.propeller_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.propeller_cmd* %0, %struct.propeller_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @get_opcode_ext(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %28 [
    i32 135, label %10
    i32 134, label %10
    i32 133, label %10
    i32 132, label %10
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %11 = load %struct.propeller_cmd*, %struct.propeller_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i8**, i8*** @ext_instrs, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 135
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %13, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.propeller_cmd*, %struct.propeller_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.propeller_cmd, %struct.propeller_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PROP_INSTR_MAXLEN, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @get_dst(i32 %25)
  %27 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %22, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 4, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @get_opcode_ext(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @get_dst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
