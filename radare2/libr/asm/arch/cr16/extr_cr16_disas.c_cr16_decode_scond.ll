; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_scond.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_scond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"s%s\00", align 1
@cr16_conds = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@CR16_TYPE_SCOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr16_decode_scond(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @r_read_le16(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load i8**, i8*** @cr16_conds, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @cr16_get_dstreg(i32 %21)
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i32 %17, i64 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load i8**, i8*** @cr16_regs_names, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @cr16_get_srcreg(i32 %32)
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i32 %28, i64 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @CR16_TYPE_SCOND, align 4
  %38 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %14, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*) #1

declare dso_local i64 @cr16_get_dstreg(i32) #1

declare dso_local i64 @cr16_get_srcreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
