; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/pic/extr_pic_baseline.c_pic_baseline_get_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/pic/extr_pic_baseline.c_pic_baseline_get_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIC_BASELINE_OPCODE_INVALID = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_ADDWF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_ANDWF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_CLRF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_CLRW = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_COMF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_DECF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_DECFSZ = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_INCF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_INCFSZ = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_IORWF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_MOVF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_MOVWF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_NOP = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_CLRWDT = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_OPTION = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_SLEEP = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_TRIS = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_MOVLB = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_RETURN = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_RETFIE = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_RLF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_RRF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_SUBWF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_SWAPF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_XORWF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_BCF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_BSF = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_BTFSC = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_BTFSS = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_ANDLW = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_CALL = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_GOTO = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_IORLW = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_MOVLW = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_RETLW = common dso_local global i32 0, align 4
@PIC_BASELINE_OPCODE_XORLW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pic_baseline_get_opcode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 61440
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @PIC_BASELINE_OPCODE_INVALID, align 4
  store i32 %8, i32* %2, align 4
  br label %106

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 6
  %12 = and i32 %11, 63
  switch i32 %12, label %104 [
    i32 7, label %13
    i32 5, label %15
    i32 1, label %17
    i32 9, label %31
    i32 3, label %33
    i32 11, label %35
    i32 10, label %37
    i32 15, label %39
    i32 4, label %41
    i32 8, label %43
    i32 0, label %45
    i32 13, label %72
    i32 12, label %74
    i32 2, label %76
    i32 14, label %78
    i32 6, label %80
    i32 16, label %82
    i32 17, label %82
    i32 18, label %82
    i32 19, label %82
    i32 20, label %84
    i32 21, label %84
    i32 22, label %84
    i32 23, label %84
    i32 24, label %86
    i32 25, label %86
    i32 26, label %86
    i32 27, label %86
    i32 28, label %88
    i32 29, label %88
    i32 30, label %88
    i32 31, label %88
    i32 56, label %90
    i32 57, label %90
    i32 58, label %90
    i32 59, label %90
    i32 36, label %92
    i32 37, label %92
    i32 38, label %92
    i32 39, label %92
    i32 40, label %94
    i32 41, label %94
    i32 42, label %94
    i32 43, label %94
    i32 44, label %94
    i32 45, label %94
    i32 46, label %94
    i32 47, label %94
    i32 52, label %96
    i32 53, label %96
    i32 54, label %96
    i32 55, label %96
    i32 48, label %98
    i32 49, label %98
    i32 50, label %98
    i32 51, label %98
    i32 32, label %100
    i32 33, label %100
    i32 34, label %100
    i32 35, label %100
    i32 60, label %102
    i32 61, label %102
    i32 62, label %102
    i32 63, label %102
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @PIC_BASELINE_OPCODE_ADDWF, align 4
  store i32 %14, i32* %2, align 4
  br label %106

15:                                               ; preds = %9
  %16 = load i32, i32* @PIC_BASELINE_OPCODE_ANDWF, align 4
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @PIC_BASELINE_OPCODE_CLRF, align 4
  store i32 %22, i32* %2, align 4
  br label %106

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 31
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @PIC_BASELINE_OPCODE_CLRW, align 4
  store i32 %28, i32* %2, align 4
  br label %106

29:                                               ; preds = %23
  %30 = load i32, i32* @PIC_BASELINE_OPCODE_INVALID, align 4
  store i32 %30, i32* %2, align 4
  br label %106

31:                                               ; preds = %9
  %32 = load i32, i32* @PIC_BASELINE_OPCODE_COMF, align 4
  store i32 %32, i32* %2, align 4
  br label %106

33:                                               ; preds = %9
  %34 = load i32, i32* @PIC_BASELINE_OPCODE_DECF, align 4
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %9
  %36 = load i32, i32* @PIC_BASELINE_OPCODE_DECFSZ, align 4
  store i32 %36, i32* %2, align 4
  br label %106

37:                                               ; preds = %9
  %38 = load i32, i32* @PIC_BASELINE_OPCODE_INCF, align 4
  store i32 %38, i32* %2, align 4
  br label %106

39:                                               ; preds = %9
  %40 = load i32, i32* @PIC_BASELINE_OPCODE_INCFSZ, align 4
  store i32 %40, i32* %2, align 4
  br label %106

41:                                               ; preds = %9
  %42 = load i32, i32* @PIC_BASELINE_OPCODE_IORWF, align 4
  store i32 %42, i32* %2, align 4
  br label %106

43:                                               ; preds = %9
  %44 = load i32, i32* @PIC_BASELINE_OPCODE_MOVF, align 4
  store i32 %44, i32* %2, align 4
  br label %106

45:                                               ; preds = %9
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @PIC_BASELINE_OPCODE_MOVWF, align 4
  store i32 %50, i32* %2, align 4
  br label %106

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 31
  switch i32 %53, label %70 [
    i32 0, label %54
    i32 4, label %56
    i32 2, label %58
    i32 3, label %60
    i32 1, label %62
    i32 5, label %62
    i32 6, label %62
    i32 7, label %62
    i32 16, label %64
    i32 17, label %64
    i32 18, label %64
    i32 19, label %64
    i32 20, label %64
    i32 21, label %64
    i32 22, label %64
    i32 23, label %64
    i32 30, label %66
    i32 31, label %68
  ]

54:                                               ; preds = %51
  %55 = load i32, i32* @PIC_BASELINE_OPCODE_NOP, align 4
  store i32 %55, i32* %2, align 4
  br label %106

56:                                               ; preds = %51
  %57 = load i32, i32* @PIC_BASELINE_OPCODE_CLRWDT, align 4
  store i32 %57, i32* %2, align 4
  br label %106

58:                                               ; preds = %51
  %59 = load i32, i32* @PIC_BASELINE_OPCODE_OPTION, align 4
  store i32 %59, i32* %2, align 4
  br label %106

60:                                               ; preds = %51
  %61 = load i32, i32* @PIC_BASELINE_OPCODE_SLEEP, align 4
  store i32 %61, i32* %2, align 4
  br label %106

62:                                               ; preds = %51, %51, %51, %51
  %63 = load i32, i32* @PIC_BASELINE_OPCODE_TRIS, align 4
  store i32 %63, i32* %2, align 4
  br label %106

64:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51
  %65 = load i32, i32* @PIC_BASELINE_OPCODE_MOVLB, align 4
  store i32 %65, i32* %2, align 4
  br label %106

66:                                               ; preds = %51
  %67 = load i32, i32* @PIC_BASELINE_OPCODE_RETURN, align 4
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %51
  %69 = load i32, i32* @PIC_BASELINE_OPCODE_RETFIE, align 4
  store i32 %69, i32* %2, align 4
  br label %106

70:                                               ; preds = %51
  %71 = load i32, i32* @PIC_BASELINE_OPCODE_INVALID, align 4
  store i32 %71, i32* %2, align 4
  br label %106

72:                                               ; preds = %9
  %73 = load i32, i32* @PIC_BASELINE_OPCODE_RLF, align 4
  store i32 %73, i32* %2, align 4
  br label %106

74:                                               ; preds = %9
  %75 = load i32, i32* @PIC_BASELINE_OPCODE_RRF, align 4
  store i32 %75, i32* %2, align 4
  br label %106

76:                                               ; preds = %9
  %77 = load i32, i32* @PIC_BASELINE_OPCODE_SUBWF, align 4
  store i32 %77, i32* %2, align 4
  br label %106

78:                                               ; preds = %9
  %79 = load i32, i32* @PIC_BASELINE_OPCODE_SWAPF, align 4
  store i32 %79, i32* %2, align 4
  br label %106

80:                                               ; preds = %9
  %81 = load i32, i32* @PIC_BASELINE_OPCODE_XORWF, align 4
  store i32 %81, i32* %2, align 4
  br label %106

82:                                               ; preds = %9, %9, %9, %9
  %83 = load i32, i32* @PIC_BASELINE_OPCODE_BCF, align 4
  store i32 %83, i32* %2, align 4
  br label %106

84:                                               ; preds = %9, %9, %9, %9
  %85 = load i32, i32* @PIC_BASELINE_OPCODE_BSF, align 4
  store i32 %85, i32* %2, align 4
  br label %106

86:                                               ; preds = %9, %9, %9, %9
  %87 = load i32, i32* @PIC_BASELINE_OPCODE_BTFSC, align 4
  store i32 %87, i32* %2, align 4
  br label %106

88:                                               ; preds = %9, %9, %9, %9
  %89 = load i32, i32* @PIC_BASELINE_OPCODE_BTFSS, align 4
  store i32 %89, i32* %2, align 4
  br label %106

90:                                               ; preds = %9, %9, %9, %9
  %91 = load i32, i32* @PIC_BASELINE_OPCODE_ANDLW, align 4
  store i32 %91, i32* %2, align 4
  br label %106

92:                                               ; preds = %9, %9, %9, %9
  %93 = load i32, i32* @PIC_BASELINE_OPCODE_CALL, align 4
  store i32 %93, i32* %2, align 4
  br label %106

94:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %95 = load i32, i32* @PIC_BASELINE_OPCODE_GOTO, align 4
  store i32 %95, i32* %2, align 4
  br label %106

96:                                               ; preds = %9, %9, %9, %9
  %97 = load i32, i32* @PIC_BASELINE_OPCODE_IORLW, align 4
  store i32 %97, i32* %2, align 4
  br label %106

98:                                               ; preds = %9, %9, %9, %9
  %99 = load i32, i32* @PIC_BASELINE_OPCODE_MOVLW, align 4
  store i32 %99, i32* %2, align 4
  br label %106

100:                                              ; preds = %9, %9, %9, %9
  %101 = load i32, i32* @PIC_BASELINE_OPCODE_RETLW, align 4
  store i32 %101, i32* %2, align 4
  br label %106

102:                                              ; preds = %9, %9, %9, %9
  %103 = load i32, i32* @PIC_BASELINE_OPCODE_XORLW, align 4
  store i32 %103, i32* %2, align 4
  br label %106

104:                                              ; preds = %9
  %105 = load i32, i32* @PIC_BASELINE_OPCODE_INVALID, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %49, %43, %41, %39, %37, %35, %33, %31, %29, %27, %21, %15, %13, %7
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
