; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_movz.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_movz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"movxb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"movzb\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr16_decode_movz(i32* %0, %struct.cr16_cmd* %1) #0 {
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
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 9
  switch i32 %16, label %31 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %14
  %18 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %20, i64 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %32

24:                                               ; preds = %14
  %25 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %27, i64 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %32

31:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %50

32:                                               ; preds = %24, %17
  %33 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %37 = sub nsw i64 %36, 1
  %38 = load i8**, i8*** @cr16_regs_names, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @cr16_get_srcreg(i32 %39)
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** @cr16_regs_names, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @cr16_get_dstreg(i32 %44)
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %35, i64 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %32, %31, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i64 @cr16_get_srcreg(i32) #1

declare dso_local i64 @cr16_get_dstreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
