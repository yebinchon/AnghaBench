; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_decode_extended.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v810/extr_v810_disas.c_decode_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v810_cmd = type { i32, i32 }

@V810_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ext_instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"r%d, r%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.v810_cmd*)* @decode_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_extended(i32 %0, i32 %1, %struct.v810_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.v810_cmd*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.v810_cmd* %2, %struct.v810_cmd** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @OPCODE(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %11, 12
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.v810_cmd*, %struct.v810_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.v810_cmd, %struct.v810_cmd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @V810_INSTR_MAXLEN, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load i8**, i8*** @ext_instrs, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %17, i64 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %47 [
    i32 138, label %27
    i32 136, label %27
    i32 137, label %27
    i32 139, label %27
    i32 131, label %27
    i32 133, label %27
    i32 135, label %27
    i32 132, label %27
    i32 130, label %27
    i32 134, label %27
    i32 129, label %38
    i32 128, label %38
  ]

27:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %28 = load %struct.v810_cmd*, %struct.v810_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.v810_cmd, %struct.v810_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @V810_INSTR_MAXLEN, align 8
  %32 = sub nsw i64 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @REG1(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @REG2(i32 %35)
  %37 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %30, i64 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  br label %48

38:                                               ; preds = %14, %14
  %39 = load %struct.v810_cmd*, %struct.v810_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.v810_cmd, %struct.v810_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @V810_INSTR_MAXLEN, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @REG2(i32 %44)
  %46 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %41, i64 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %48

47:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %49

48:                                               ; preds = %38, %27
  store i32 4, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @OPCODE(i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i32 @REG1(i32) #1

declare dso_local i32 @REG2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
