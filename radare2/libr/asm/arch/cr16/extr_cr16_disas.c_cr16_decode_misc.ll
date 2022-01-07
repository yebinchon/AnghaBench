; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_misc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"retx\00", align 1
@CR16_INSTR_MAXLEN = common dso_local global i32 0, align 4
@CR16_TYPE_RETX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@CR16_TYPE_DI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ei\00", align 1
@CR16_TYPE_EI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@CR16_TYPE_NOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@CR16_TYPE_WAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"eiwait\00", align 1
@CR16_TYPE_EWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"excp\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@CR16_TYPE_EXCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_misc(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cr16_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %4, align 8
  store i32 2, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @r_read_le16(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %74 [
    i32 129, label %14
    i32 133, label %24
    i32 132, label %34
    i32 130, label %44
    i32 128, label %54
    i32 131, label %64
  ]

14:                                               ; preds = %2
  %15 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @strncpy(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @CR16_TYPE_RETX, align 4
  %22 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %98

24:                                               ; preds = %2
  %25 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @strncpy(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @CR16_TYPE_DI, align 4
  %32 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %98

34:                                               ; preds = %2
  %35 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @strncpy(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @CR16_TYPE_EI, align 4
  %42 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %98

44:                                               ; preds = %2
  %45 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @strncpy(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @CR16_TYPE_NOP, align 4
  %52 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %98

54:                                               ; preds = %2
  %55 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @strncpy(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @CR16_TYPE_WAIT, align 4
  %62 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %63 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %98

64:                                               ; preds = %2
  %65 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @strncpy(i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @CR16_TYPE_EWAIT, align 4
  %72 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %98

74:                                               ; preds = %2
  %75 = load i32, i32* %5, align 4
  %76 = ashr i32 %75, 5
  switch i32 %76, label %96 [
    i32 991, label %77
  ]

77:                                               ; preds = %74
  %78 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @strncpy(i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @CR16_INSTR_MAXLEN, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %5, align 4
  %90 = ashr i32 %89, 1
  %91 = and i32 %90, 15
  %92 = call i32 @snprintf(i8* %86, i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @CR16_TYPE_EXCP, align 4
  %94 = load %struct.cr16_cmd*, %struct.cr16_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  br label %97

96:                                               ; preds = %74
  store i32 -1, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %64, %54, %44, %34, %24, %14
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
