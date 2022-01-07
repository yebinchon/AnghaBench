; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_print_short_reg_rel.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_print_short_reg_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"$0x%02x,0x%04x(%s)\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"$0x%02x,0(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cr16_cmd*, i64, i32, i64)* @cr16_print_short_reg_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_print_short_reg_rel(%struct.cr16_cmd* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cr16_cmd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.cr16_cmd* %0, %struct.cr16_cmd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @cr16_check_reg_boundaries(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %43

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.cr16_cmd*, %struct.cr16_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %22 = sub nsw i64 %21, 1
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8**, i8*** @cr16_regs_names, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i64, i8*, i64, ...) @snprintf(i32 %20, i64 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24, i8* %28)
  br label %42

30:                                               ; preds = %14
  %31 = load %struct.cr16_cmd*, %struct.cr16_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %35 = sub nsw i64 %34, 1
  %36 = load i64, i64* %7, align 8
  %37 = load i8**, i8*** @cr16_regs_names, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i64, i8*, i64, ...) @snprintf(i32 %33, i64 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %36, i8* %40)
  br label %42

42:                                               ; preds = %30, %17
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @cr16_check_reg_boundaries(i64) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
