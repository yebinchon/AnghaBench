; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/pic/extr_pic_midrange.c_pic_midrange_get_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/pic/extr_pic_midrange.c_pic_midrange_get_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIC_MIDRANGE_OPCODE_INVALID = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_CALL = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_GOTO = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_BCF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_BSF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_BTFSC = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_BTFSS = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_BRA = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_CLR = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_SUBWF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_DECF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_IORWF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_ANDWF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_XORWF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_ADDWF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_COMF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_INCF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_DECFSZ = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_RRF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_RLF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_SWAPF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_INCFSZ = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_IORLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_ANDLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_XORLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_RETLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_SUBLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_ADDLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_LSLF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_LSRF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_ASRF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_SUBWFB = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_ADDWFC = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVWF = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_ADDFSR = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVLP = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVIW_2 = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVWI_2 = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVLB = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVIW_1 = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_MOVWI_1 = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_TRIS = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_NOP = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_RESET = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_CALLW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_BRW = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_RETURN = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_RETFIE = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_OPTION = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_SLEEP = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPCODE_CLRWDT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pic_midrange_get_opcode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 16384
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @PIC_MIDRANGE_OPCODE_INVALID, align 4
  store i32 %8, i32* %2, align 4
  br label %141

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 11
  switch i32 %11, label %16 [
    i32 4, label %12
    i32 5, label %14
  ]

12:                                               ; preds = %9
  %13 = load i32, i32* @PIC_MIDRANGE_OPCODE_CALL, align 4
  store i32 %13, i32* %2, align 4
  br label %141

14:                                               ; preds = %9
  %15 = load i32, i32* @PIC_MIDRANGE_OPCODE_GOTO, align 4
  store i32 %15, i32* %2, align 4
  br label %141

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 10
  switch i32 %18, label %27 [
    i32 4, label %19
    i32 5, label %21
    i32 6, label %23
    i32 7, label %25
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* @PIC_MIDRANGE_OPCODE_BCF, align 4
  store i32 %20, i32* %2, align 4
  br label %141

21:                                               ; preds = %16
  %22 = load i32, i32* @PIC_MIDRANGE_OPCODE_BSF, align 4
  store i32 %22, i32* %2, align 4
  br label %141

23:                                               ; preds = %16
  %24 = load i32, i32* @PIC_MIDRANGE_OPCODE_BTFSC, align 4
  store i32 %24, i32* %2, align 4
  br label %141

25:                                               ; preds = %16
  %26 = load i32, i32* @PIC_MIDRANGE_OPCODE_BTFSS, align 4
  store i32 %26, i32* %2, align 4
  br label %141

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 9
  switch i32 %29, label %32 [
    i32 25, label %30
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @PIC_MIDRANGE_OPCODE_BRA, align 4
  store i32 %31, i32* %2, align 4
  br label %141

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 8
  switch i32 %34, label %89 [
    i32 1, label %35
    i32 2, label %37
    i32 3, label %39
    i32 4, label %41
    i32 5, label %43
    i32 6, label %45
    i32 7, label %47
    i32 8, label %49
    i32 9, label %51
    i32 10, label %53
    i32 11, label %55
    i32 12, label %57
    i32 13, label %59
    i32 14, label %61
    i32 15, label %63
    i32 56, label %65
    i32 57, label %67
    i32 58, label %69
    i32 48, label %71
    i32 52, label %73
    i32 60, label %75
    i32 62, label %77
    i32 53, label %79
    i32 54, label %81
    i32 55, label %83
    i32 59, label %85
    i32 61, label %87
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* @PIC_MIDRANGE_OPCODE_CLR, align 4
  store i32 %36, i32* %2, align 4
  br label %141

37:                                               ; preds = %32
  %38 = load i32, i32* @PIC_MIDRANGE_OPCODE_SUBWF, align 4
  store i32 %38, i32* %2, align 4
  br label %141

39:                                               ; preds = %32
  %40 = load i32, i32* @PIC_MIDRANGE_OPCODE_DECF, align 4
  store i32 %40, i32* %2, align 4
  br label %141

41:                                               ; preds = %32
  %42 = load i32, i32* @PIC_MIDRANGE_OPCODE_IORWF, align 4
  store i32 %42, i32* %2, align 4
  br label %141

43:                                               ; preds = %32
  %44 = load i32, i32* @PIC_MIDRANGE_OPCODE_ANDWF, align 4
  store i32 %44, i32* %2, align 4
  br label %141

45:                                               ; preds = %32
  %46 = load i32, i32* @PIC_MIDRANGE_OPCODE_XORWF, align 4
  store i32 %46, i32* %2, align 4
  br label %141

47:                                               ; preds = %32
  %48 = load i32, i32* @PIC_MIDRANGE_OPCODE_ADDWF, align 4
  store i32 %48, i32* %2, align 4
  br label %141

49:                                               ; preds = %32
  %50 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVF, align 4
  store i32 %50, i32* %2, align 4
  br label %141

51:                                               ; preds = %32
  %52 = load i32, i32* @PIC_MIDRANGE_OPCODE_COMF, align 4
  store i32 %52, i32* %2, align 4
  br label %141

53:                                               ; preds = %32
  %54 = load i32, i32* @PIC_MIDRANGE_OPCODE_INCF, align 4
  store i32 %54, i32* %2, align 4
  br label %141

55:                                               ; preds = %32
  %56 = load i32, i32* @PIC_MIDRANGE_OPCODE_DECFSZ, align 4
  store i32 %56, i32* %2, align 4
  br label %141

57:                                               ; preds = %32
  %58 = load i32, i32* @PIC_MIDRANGE_OPCODE_RRF, align 4
  store i32 %58, i32* %2, align 4
  br label %141

59:                                               ; preds = %32
  %60 = load i32, i32* @PIC_MIDRANGE_OPCODE_RLF, align 4
  store i32 %60, i32* %2, align 4
  br label %141

61:                                               ; preds = %32
  %62 = load i32, i32* @PIC_MIDRANGE_OPCODE_SWAPF, align 4
  store i32 %62, i32* %2, align 4
  br label %141

63:                                               ; preds = %32
  %64 = load i32, i32* @PIC_MIDRANGE_OPCODE_INCFSZ, align 4
  store i32 %64, i32* %2, align 4
  br label %141

65:                                               ; preds = %32
  %66 = load i32, i32* @PIC_MIDRANGE_OPCODE_IORLW, align 4
  store i32 %66, i32* %2, align 4
  br label %141

67:                                               ; preds = %32
  %68 = load i32, i32* @PIC_MIDRANGE_OPCODE_ANDLW, align 4
  store i32 %68, i32* %2, align 4
  br label %141

69:                                               ; preds = %32
  %70 = load i32, i32* @PIC_MIDRANGE_OPCODE_XORLW, align 4
  store i32 %70, i32* %2, align 4
  br label %141

71:                                               ; preds = %32
  %72 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVLW, align 4
  store i32 %72, i32* %2, align 4
  br label %141

73:                                               ; preds = %32
  %74 = load i32, i32* @PIC_MIDRANGE_OPCODE_RETLW, align 4
  store i32 %74, i32* %2, align 4
  br label %141

75:                                               ; preds = %32
  %76 = load i32, i32* @PIC_MIDRANGE_OPCODE_SUBLW, align 4
  store i32 %76, i32* %2, align 4
  br label %141

77:                                               ; preds = %32
  %78 = load i32, i32* @PIC_MIDRANGE_OPCODE_ADDLW, align 4
  store i32 %78, i32* %2, align 4
  br label %141

79:                                               ; preds = %32
  %80 = load i32, i32* @PIC_MIDRANGE_OPCODE_LSLF, align 4
  store i32 %80, i32* %2, align 4
  br label %141

81:                                               ; preds = %32
  %82 = load i32, i32* @PIC_MIDRANGE_OPCODE_LSRF, align 4
  store i32 %82, i32* %2, align 4
  br label %141

83:                                               ; preds = %32
  %84 = load i32, i32* @PIC_MIDRANGE_OPCODE_ASRF, align 4
  store i32 %84, i32* %2, align 4
  br label %141

85:                                               ; preds = %32
  %86 = load i32, i32* @PIC_MIDRANGE_OPCODE_SUBWFB, align 4
  store i32 %86, i32* %2, align 4
  br label %141

87:                                               ; preds = %32
  %88 = load i32, i32* @PIC_MIDRANGE_OPCODE_ADDWFC, align 4
  store i32 %88, i32* %2, align 4
  br label %141

89:                                               ; preds = %32
  %90 = load i32, i32* %3, align 4
  %91 = ashr i32 %90, 7
  switch i32 %91, label %102 [
    i32 1, label %92
    i32 98, label %94
    i32 99, label %96
    i32 126, label %98
    i32 127, label %100
  ]

92:                                               ; preds = %89
  %93 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVWF, align 4
  store i32 %93, i32* %2, align 4
  br label %141

94:                                               ; preds = %89
  %95 = load i32, i32* @PIC_MIDRANGE_OPCODE_ADDFSR, align 4
  store i32 %95, i32* %2, align 4
  br label %141

96:                                               ; preds = %89
  %97 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVLP, align 4
  store i32 %97, i32* %2, align 4
  br label %141

98:                                               ; preds = %89
  %99 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVIW_2, align 4
  store i32 %99, i32* %2, align 4
  br label %141

100:                                              ; preds = %89
  %101 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVWI_2, align 4
  store i32 %101, i32* %2, align 4
  br label %141

102:                                              ; preds = %89
  %103 = load i32, i32* %3, align 4
  %104 = ashr i32 %103, 5
  switch i32 %104, label %107 [
    i32 1, label %105
  ]

105:                                              ; preds = %102
  %106 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVLB, align 4
  store i32 %106, i32* %2, align 4
  br label %141

107:                                              ; preds = %102
  %108 = load i32, i32* %3, align 4
  %109 = ashr i32 %108, 3
  switch i32 %109, label %114 [
    i32 2, label %110
    i32 3, label %112
  ]

110:                                              ; preds = %107
  %111 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVIW_1, align 4
  store i32 %111, i32* %2, align 4
  br label %141

112:                                              ; preds = %107
  %113 = load i32, i32* @PIC_MIDRANGE_OPCODE_MOVWI_1, align 4
  store i32 %113, i32* %2, align 4
  br label %141

114:                                              ; preds = %107
  %115 = load i32, i32* %3, align 4
  %116 = ashr i32 %115, 2
  switch i32 %116, label %119 [
    i32 25, label %117
  ]

117:                                              ; preds = %114
  %118 = load i32, i32* @PIC_MIDRANGE_OPCODE_TRIS, align 4
  store i32 %118, i32* %2, align 4
  br label %141

119:                                              ; preds = %114
  %120 = load i32, i32* %3, align 4
  switch i32 %120, label %139 [
    i32 0, label %121
    i32 1, label %123
    i32 10, label %125
    i32 11, label %127
    i32 8, label %129
    i32 9, label %131
    i32 98, label %133
    i32 99, label %135
    i32 100, label %137
  ]

121:                                              ; preds = %119
  %122 = load i32, i32* @PIC_MIDRANGE_OPCODE_NOP, align 4
  store i32 %122, i32* %2, align 4
  br label %141

123:                                              ; preds = %119
  %124 = load i32, i32* @PIC_MIDRANGE_OPCODE_RESET, align 4
  store i32 %124, i32* %2, align 4
  br label %141

125:                                              ; preds = %119
  %126 = load i32, i32* @PIC_MIDRANGE_OPCODE_CALLW, align 4
  store i32 %126, i32* %2, align 4
  br label %141

127:                                              ; preds = %119
  %128 = load i32, i32* @PIC_MIDRANGE_OPCODE_BRW, align 4
  store i32 %128, i32* %2, align 4
  br label %141

129:                                              ; preds = %119
  %130 = load i32, i32* @PIC_MIDRANGE_OPCODE_RETURN, align 4
  store i32 %130, i32* %2, align 4
  br label %141

131:                                              ; preds = %119
  %132 = load i32, i32* @PIC_MIDRANGE_OPCODE_RETFIE, align 4
  store i32 %132, i32* %2, align 4
  br label %141

133:                                              ; preds = %119
  %134 = load i32, i32* @PIC_MIDRANGE_OPCODE_OPTION, align 4
  store i32 %134, i32* %2, align 4
  br label %141

135:                                              ; preds = %119
  %136 = load i32, i32* @PIC_MIDRANGE_OPCODE_SLEEP, align 4
  store i32 %136, i32* %2, align 4
  br label %141

137:                                              ; preds = %119
  %138 = load i32, i32* @PIC_MIDRANGE_OPCODE_CLRWDT, align 4
  store i32 %138, i32* %2, align 4
  br label %141

139:                                              ; preds = %119
  %140 = load i32, i32* @PIC_MIDRANGE_OPCODE_INVALID, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %137, %135, %133, %131, %129, %127, %125, %123, %121, %117, %112, %110, %105, %100, %98, %96, %94, %92, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %30, %25, %23, %21, %19, %14, %12, %7
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
