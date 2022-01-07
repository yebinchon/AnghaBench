; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_movd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_movd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"movd\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"$0x%08x,(%s,%s)\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr16_decode_movd(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 4, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @r_read_le16(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @r_read_at_le16(i32* %12, i32 2)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %21, i64 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 1
  %29 = shl i32 %28, 16
  %30 = or i32 %25, %29
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 9
  %33 = and i32 %32, 1
  %34 = shl i32 %33, 20
  %35 = or i32 %30, %34
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 1
  %38 = and i32 %37, 7
  %39 = shl i32 %38, 17
  %40 = or i32 %35, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %45 = sub nsw i64 %44, 1
  %46 = load i32, i32* %9, align 4
  %47 = load i8**, i8*** @cr16_regs_names, align 8
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 5
  %50 = and i32 %49, 15
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %47, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** @cr16_regs_names, align 8
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 5
  %58 = and i32 %57, 15
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %55, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %43, i64 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %54, i8* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %18, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
