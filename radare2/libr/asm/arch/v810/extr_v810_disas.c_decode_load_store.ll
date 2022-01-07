; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_decode_load_store.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_decode_load_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v810_cmd = type { i32, i32 }

@V810_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"r%d, %hd[r%d]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%hd[r%d], r%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.v810_cmd*)* @decode_load_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_load_store(i32 %0, i32 %1, %struct.v810_cmd* %2) #0 {
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
  %14 = call i32 @OPCODE(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %9, i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @OPCODE(i32 %19)
  switch i32 %20, label %45 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
    i32 133, label %21
    i32 132, label %21
    i32 131, label %21
    i32 136, label %33
    i32 135, label %33
    i32 134, label %33
    i32 139, label %33
    i32 138, label %33
    i32 137, label %33
    i32 140, label %33
  ]

21:                                               ; preds = %3, %3, %3, %3, %3, %3
  %22 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.v810_cmd, %struct.v810_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @V810_INSTR_MAXLEN, align 8
  %26 = sub nsw i64 %25, 1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @REG2(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @REG1(i32 %30)
  %32 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %24, i64 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29, i32 %31)
  br label %45

33:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %34 = load %struct.v810_cmd*, %struct.v810_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.v810_cmd, %struct.v810_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @V810_INSTR_MAXLEN, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @REG1(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @REG2(i32 %42)
  %44 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %36, i64 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %3, %33, %21
  ret i32 4
}

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i32 @OPCODE(i32) #1

declare dso_local i32 @REG2(i32) #1

declare dso_local i32 @REG1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
