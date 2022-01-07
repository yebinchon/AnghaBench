; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_oneop_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_oneop_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp430_cmd = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@one_op_instrs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"#0\00", align 1
@msp430_register_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"&0x%04x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"0x%x(%s)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"#4\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"#2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"#0x%04x\00", align 1
@MSP430_ONEOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.msp430_cmd*)* @decode_oneop_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_oneop_opcode(i32 %0, i32 %1, %struct.msp430_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.msp430_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.msp430_cmd* %2, %struct.msp430_cmd** %6, align 8
  store i32 2, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_oneop_opcode(i32 %10)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @get_as(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8**, i8*** @one_op_instrs, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @get_oneop_opcode(i32 %25)
  %27 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @get_oneop_opcode(i32 %29)
  switch i32 %30, label %121 [
    i32 131, label %31
    i32 129, label %31
    i32 132, label %31
    i32 128, label %31
    i32 135, label %31
    i32 137, label %31
    i32 133, label %116
  ]

31:                                               ; preds = %3, %3, %3, %3, %3, %3
  %32 = load i64, i64* %8, align 8
  switch i64 %32, label %114 [
    i64 0, label %33
    i64 1, label %52
    i64 2, label %84
    i64 3, label %108
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @get_dst(i32 %34)
  switch i64 %35, label %41 [
    i64 134, label %36
  ]

36:                                               ; preds = %33
  %37 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** @msp430_register_names, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @get_dst(i32 %46)
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %41, %36
  store i32 2, i32* %7, align 4
  br label %115

52:                                               ; preds = %31
  store i32 4, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @get_dst(i32 %53)
  switch i64 %54, label %72 [
    i64 134, label %55
    i64 136, label %60
    i64 130, label %66
  ]

55:                                               ; preds = %52
  %56 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %58, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %7, align 4
  br label %83

60:                                               ; preds = %52
  %61 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %83

66:                                               ; preds = %52
  %67 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %69, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %83

72:                                               ; preds = %52
  %73 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i8**, i8*** @msp430_register_names, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @get_dst(i32 %78)
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %75, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %76, i8* %81)
  br label %83

83:                                               ; preds = %72, %66, %60, %55
  br label %115

84:                                               ; preds = %31
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @get_dst(i32 %85)
  switch i64 %86, label %97 [
    i64 130, label %87
    i64 134, label %92
  ]

87:                                               ; preds = %84
  %88 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %107

92:                                               ; preds = %84
  %93 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %94 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %95, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %107

97:                                               ; preds = %84
  %98 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %99 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** @msp430_register_names, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @get_dst(i32 %102)
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %100, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %97, %92, %87
  store i32 2, i32* %7, align 4
  br label %115

108:                                              ; preds = %31
  %109 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %111, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %112)
  store i32 4, i32* %7, align 4
  br label %115

114:                                              ; preds = %31
  store i32 -1, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %108, %107, %83, %51
  br label %121

116:                                              ; preds = %3
  %117 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %118 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %3, %116, %115
  %122 = load i32, i32* @MSP430_ONEOP, align 4
  %123 = load %struct.msp430_cmd*, %struct.msp430_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @get_oneop_opcode(i32) #1

declare dso_local i64 @get_as(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @get_dst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
