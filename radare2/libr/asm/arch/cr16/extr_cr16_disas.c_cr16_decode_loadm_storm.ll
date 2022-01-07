; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_loadm_storm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_loadm_storm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@instrs_4bit = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"$0x%x\00", align 1
@CR16_TYPE_MOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr16_decode_loadm_storm(i32* %0, %struct.cr16_cmd* %1) #0 {
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
  %11 = and i32 %10, 31
  %12 = icmp ne i32 %11, 4
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
  %20 = load i8**, i8*** @instrs_4bit, align 8
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %17, i64 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 5
  %34 = and i32 %33, 3
  %35 = add nsw i32 %34, 1
  %36 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %29, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @CR16_TYPE_MOV, align 4
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

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
