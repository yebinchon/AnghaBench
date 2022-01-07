; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_print_reg_reg_rel.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_print_reg_reg_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"%s,0x%04x(%s)\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"0x%04x(%s),%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cr16_cmd*, i64, i32, i64, i64)* @cr16_print_reg_reg_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_print_reg_reg_rel(%struct.cr16_cmd* %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cr16_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cr16_cmd* %0, %struct.cr16_cmd** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call i64 @cr16_check_reg_boundaries(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @cr16_check_reg_boundaries(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %5
  store i32 -1, i32* %6, align 4
  br label %56

20:                                               ; preds = %15
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.cr16_cmd*, %struct.cr16_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load i8**, i8*** @cr16_regs_names, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8**, i8*** @cr16_regs_names, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %26, i64 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33, i8* %37)
  br label %55

39:                                               ; preds = %20
  %40 = load %struct.cr16_cmd*, %struct.cr16_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %44 = sub nsw i64 %43, 1
  %45 = load i32, i32* %9, align 4
  %46 = load i8**, i8*** @cr16_regs_names, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** @cr16_regs_names, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %42, i64 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %49, i8* %53)
  br label %55

55:                                               ; preds = %39, %23
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @cr16_check_reg_boundaries(i64) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
