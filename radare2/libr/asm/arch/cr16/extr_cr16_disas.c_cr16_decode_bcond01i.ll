; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_bcond01i.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_bcond01i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"beq0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"beq1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bne0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bne1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s,0x%x\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@CR16_TYPE_BCOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_bcond01i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_bcond01i(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @r_read_le16(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %90

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 14
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %90

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 6
  %22 = and i32 %21, 3
  switch i32 %22, label %71 [
    i32 0, label %23
    i32 1, label %35
    i32 2, label %47
    i32 3, label %59
  ]

23:                                               ; preds = %19
  %24 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cr16_get_opcode_i(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 119, i32 98
  %34 = call i32 @snprintf(i32 %26, i64 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %71

35:                                               ; preds = %19
  %36 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @cr16_get_opcode_i(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 119, i32 98
  %46 = call i32 @snprintf(i32 %38, i64 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %71

47:                                               ; preds = %19
  %48 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %52 = sub nsw i64 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @cr16_get_opcode_i(i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 119, i32 98
  %58 = call i32 @snprintf(i32 %50, i64 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %71

59:                                               ; preds = %19
  %60 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %64 = sub nsw i64 %63, 1
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @cr16_get_opcode_i(i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 119, i32 98
  %70 = call i32 @snprintf(i32 %62, i64 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %19, %59, %47, %35, %23
  %72 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %76 = sub nsw i64 %75, 1
  %77 = load i8**, i8*** @cr16_regs_names, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @cr16_get_dstreg(i32 %78)
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 1
  %84 = and i32 %83, 15
  %85 = call i32 @snprintf(i32 %74, i64 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %81, i32 %84)
  %86 = load i32, i32* @CR16_TYPE_BCOND, align 4
  %87 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %71, %18, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*, i32) #1

declare dso_local i32 @cr16_get_opcode_i(i32) #1

declare dso_local i64 @cr16_get_dstreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
