; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_push_pop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_push_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"popret\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"$0x%x,%s\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_push_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_push_pop(i32* %0, %struct.cr16_cmd* %1) #0 {
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
  br label %57

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 7
  switch i32 %16, label %38 [
    i32 128, label %17
    i32 131, label %24
    i32 130, label %31
    i32 129, label %31
  ]

17:                                               ; preds = %14
  %18 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %20, i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %38

24:                                               ; preds = %14
  %25 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %27, i64 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %38

31:                                               ; preds = %14, %14
  %32 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %36 = sub nsw i64 %35, 1
  %37 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %34, i64 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %14, %31, %24, %17
  %39 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 5
  %46 = and i32 %45, 3
  %47 = add nsw i32 %46, 1
  %48 = load i8**, i8*** @cr16_regs_names, align 8
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 1
  %51 = and i32 %50, 15
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %48, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %41, i64 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %47, i8* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %38, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
