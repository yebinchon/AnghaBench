; ModuleID = '/home/carl/AnghaBench/os-tutorial/20-interrupts-timer/drivers/extr_keyboard.c_print_letter.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/20-interrupts-timer/drivers/extr_keyboard.c_print_letter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ESC\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Backspace\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Tab\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ENTER\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"LCtrl\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"LShift\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"Rshift\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"Keypad *\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"LAlt\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"Spc\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Unknown key down\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"key up \00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Unknown key up\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_letter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %120 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 6, label %16
    i32 7, label %18
    i32 8, label %20
    i32 9, label %22
    i32 10, label %24
    i32 11, label %26
    i32 12, label %28
    i32 13, label %30
    i32 14, label %32
    i32 15, label %34
    i32 16, label %36
    i32 17, label %38
    i32 18, label %40
    i32 19, label %42
    i32 20, label %44
    i32 21, label %46
    i32 22, label %48
    i32 23, label %50
    i32 24, label %52
    i32 25, label %54
    i32 26, label %56
    i32 27, label %58
    i32 28, label %60
    i32 29, label %62
    i32 30, label %64
    i32 31, label %66
    i32 32, label %68
    i32 33, label %70
    i32 34, label %72
    i32 35, label %74
    i32 36, label %76
    i32 37, label %78
    i32 38, label %80
    i32 39, label %82
    i32 40, label %84
    i32 41, label %86
    i32 42, label %88
    i32 43, label %90
    i32 44, label %92
    i32 45, label %94
    i32 46, label %96
    i32 47, label %98
    i32 48, label %100
    i32 49, label %102
    i32 50, label %104
    i32 51, label %106
    i32 52, label %108
    i32 53, label %110
    i32 54, label %112
    i32 55, label %114
    i32 56, label %116
    i32 57, label %118
  ]

4:                                                ; preds = %1
  %5 = call i32 @kprint(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %136

6:                                                ; preds = %1
  %7 = call i32 @kprint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %136

8:                                                ; preds = %1
  %9 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %136

10:                                               ; preds = %1
  %11 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %136

12:                                               ; preds = %1
  %13 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %136

14:                                               ; preds = %1
  %15 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %136

16:                                               ; preds = %1
  %17 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %136

18:                                               ; preds = %1
  %19 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %136

20:                                               ; preds = %1
  %21 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %136

22:                                               ; preds = %1
  %23 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %136

24:                                               ; preds = %1
  %25 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %136

26:                                               ; preds = %1
  %27 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %136

28:                                               ; preds = %1
  %29 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %136

30:                                               ; preds = %1
  %31 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %136

32:                                               ; preds = %1
  %33 = call i32 @kprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %136

34:                                               ; preds = %1
  %35 = call i32 @kprint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %136

36:                                               ; preds = %1
  %37 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %136

38:                                               ; preds = %1
  %39 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %136

40:                                               ; preds = %1
  %41 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %136

42:                                               ; preds = %1
  %43 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %136

44:                                               ; preds = %1
  %45 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %136

46:                                               ; preds = %1
  %47 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %136

48:                                               ; preds = %1
  %49 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %136

50:                                               ; preds = %1
  %51 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %136

52:                                               ; preds = %1
  %53 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %136

54:                                               ; preds = %1
  %55 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %136

56:                                               ; preds = %1
  %57 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %136

58:                                               ; preds = %1
  %59 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %136

60:                                               ; preds = %1
  %61 = call i32 @kprint(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  br label %136

62:                                               ; preds = %1
  %63 = call i32 @kprint(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  br label %136

64:                                               ; preds = %1
  %65 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  br label %136

66:                                               ; preds = %1
  %67 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  br label %136

68:                                               ; preds = %1
  %69 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %136

70:                                               ; preds = %1
  %71 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %136

72:                                               ; preds = %1
  %73 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %136

74:                                               ; preds = %1
  %75 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %136

76:                                               ; preds = %1
  %77 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  br label %136

78:                                               ; preds = %1
  %79 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %136

80:                                               ; preds = %1
  %81 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  br label %136

82:                                               ; preds = %1
  %83 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  br label %136

84:                                               ; preds = %1
  %85 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %136

86:                                               ; preds = %1
  %87 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  br label %136

88:                                               ; preds = %1
  %89 = call i32 @kprint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  br label %136

90:                                               ; preds = %1
  %91 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  br label %136

92:                                               ; preds = %1
  %93 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0))
  br label %136

94:                                               ; preds = %1
  %95 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0))
  br label %136

96:                                               ; preds = %1
  %97 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0))
  br label %136

98:                                               ; preds = %1
  %99 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  br label %136

100:                                              ; preds = %1
  %101 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0))
  br label %136

102:                                              ; preds = %1
  %103 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0))
  br label %136

104:                                              ; preds = %1
  %105 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  br label %136

106:                                              ; preds = %1
  %107 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0))
  br label %136

108:                                              ; preds = %1
  %109 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  br label %136

110:                                              ; preds = %1
  %111 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  br label %136

112:                                              ; preds = %1
  %113 = call i32 @kprint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0))
  br label %136

114:                                              ; preds = %1
  %115 = call i32 @kprint(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0))
  br label %136

116:                                              ; preds = %1
  %117 = call i32 @kprint(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0))
  br label %136

118:                                              ; preds = %1
  %119 = call i32 @kprint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0))
  br label %136

120:                                              ; preds = %1
  %121 = load i32, i32* %2, align 4
  %122 = icmp sle i32 %121, 127
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 @kprint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0))
  br label %135

125:                                              ; preds = %120
  %126 = load i32, i32* %2, align 4
  %127 = icmp sle i32 %126, 185
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = call i32 @kprint(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0))
  %130 = load i32, i32* %2, align 4
  %131 = sub nsw i32 %130, 128
  call void @print_letter(i32 %131)
  br label %134

132:                                              ; preds = %125
  %133 = call i32 @kprint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128
  br label %135

135:                                              ; preds = %134, %123
  br label %136

136:                                              ; preds = %135, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret void
}

declare dso_local i32 @kprint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
