; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_slpr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_slpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32, i64* }

@instrs_4bit = common dso_local global i8** null, align 8
@CR16_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@dedicated_regs = common dso_local global i8** null, align 8
@CR16_TYPE_SLPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_slpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_slpr(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cr16_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %4, align 8
  store i32 2, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @r_read_le16(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i8**, i8*** @instrs_4bit, align 8
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %10, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @r_str_ncpy(i64* %21, i8* %22, i32 7)
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 9
  switch i32 %30, label %65 [
    i32 129, label %31
    i32 128, label %48
  ]

31:                                               ; preds = %28
  %32 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i8**, i8*** @cr16_regs_names, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @cr16_get_srcreg(i32 %38)
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** @dedicated_regs, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @cr16_get_dstreg(i32 %43)
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i32 %34, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %46)
  br label %65

48:                                               ; preds = %28
  %49 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i8**, i8*** @dedicated_regs, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @cr16_get_dstreg(i32 %55)
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** @cr16_regs_names, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @cr16_get_srcreg(i32 %60)
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @snprintf(i32 %51, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %63)
  br label %65

65:                                               ; preds = %28, %48, %31
  %66 = load i32, i32* @CR16_TYPE_SLPR, align 4
  %67 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @r_str_ncpy(i64*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @cr16_get_srcreg(i32) #1

declare dso_local i64 @cr16_get_dstreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
