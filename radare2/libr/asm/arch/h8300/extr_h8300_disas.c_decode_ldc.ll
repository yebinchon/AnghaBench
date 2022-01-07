; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_ldc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_decode_ldc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h8300_cmd = type { i32 }

@H8300_LDC_2 = common dso_local global i32 0, align 4
@H8300_XORC = common dso_local global i32 0, align 4
@H8300_ORC = common dso_local global i32 0, align 4
@H8300_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"#0x%x:8,ccr\00", align 1
@H8300_LDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"r%u%c,ccr\00", align 1
@H8300_STC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ccr,r%u%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.h8300_cmd*)* @decode_ldc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ldc(i32* %0, %struct.h8300_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.h8300_cmd*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.h8300_cmd* %1, %struct.h8300_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %9 = call i64 @decode_opcode(i32* %7, %struct.h8300_cmd* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %89

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @H8300_LDC_2, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @H8300_XORC, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @H8300_ORC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24, %18, %12
  %31 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %33, i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %87

39:                                               ; preds = %24
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @H8300_LDC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 7
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 8
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 108, i32 104
  %61 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %48, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %60)
  br label %86

62:                                               ; preds = %39
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @H8300_STC, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.h8300_cmd, %struct.h8300_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @H8300_INSTR_MAXLEN, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 7
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 8
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 108, i32 104
  %84 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %83)
  br label %85

85:                                               ; preds = %68, %62
  br label %86

86:                                               ; preds = %85, %45
  br label %87

87:                                               ; preds = %86, %30
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %11
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @decode_opcode(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
