; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/butterstick/extr_sten.c_send_steno_chord_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/butterstick/extr_sten.c_send_steno_chord_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cChord = common dso_local global i32 0, align 4
@PWR = common dso_local global i32 0, align 4
@FN = common dso_local global i32 0, align 4
@ST1 = common dso_local global i32 0, align 4
@ST2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Fallback Toggle\0A\00", align 1
@QWERSTENO = common dso_local global i32 0, align 4
@RD = common dso_local global i32 0, align 4
@RZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"COMMAND Toggle\0A\00", align 1
@cMode = common dso_local global i64 0, align 8
@COMMAND = common dso_local global i64 0, align 8
@CMDLEN = common dso_local global i32 0, align 4
@pMode = common dso_local global i64 0, align 8
@CMDBUF = common dso_local global i32* null, align 8
@ST4 = common dso_local global i32 0, align 4
@ST3 = common dso_local global i32 0, align 4
@keymapsCount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Switching to QMK\0A\00", align 1
@STENO = common dso_local global i64 0, align 8
@QWERTY = common dso_local global i64 0, align 8
@inChord = common dso_local global i32 0, align 4
@chordIndex = common dso_local global i64 0, align 8
@repEngaged = common dso_local global i32 0, align 4
@chordState = common dso_local global i32* null, align 8
@inMouse = common dso_local global i32 0, align 4
@mousePress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_steno_chord_user(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @cChord, align 4
  %9 = load i32, i32* @PWR, align 4
  %10 = load i32, i32* @FN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ST1, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ST2, align 4
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %8, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = call i32 @uprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @QWERSTENO, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @QWERSTENO, align 4
  br label %131

23:                                               ; preds = %2
  %24 = load i32, i32* @cChord, align 4
  %25 = load i32, i32* @PWR, align 4
  %26 = load i32, i32* @FN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RZ, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %23
  %34 = call i32 @uprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @cMode, align 8
  %36 = load i64, i64* @COMMAND, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  store i32 0, i32* @CMDLEN, align 4
  %39 = load i64, i64* @cMode, align 8
  store i64 %39, i64* @pMode, align 8
  %40 = load i64, i64* @COMMAND, align 8
  store i64 %40, i64* @cMode, align 8
  br label %59

41:                                               ; preds = %33
  %42 = load i64, i64* @pMode, align 8
  store i64 %42, i64* @cMode, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %54, %41
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CMDLEN, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32*, i32** @CMDBUF, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @register_code(i32 %52)
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %43

57:                                               ; preds = %43
  %58 = call i32 (...) @clear_keyboard()
  br label %59

59:                                               ; preds = %57, %38
  br label %131

60:                                               ; preds = %23
  %61 = load i32, i32* @cChord, align 4
  %62 = load i32, i32* @PWR, align 4
  %63 = load i32, i32* @FN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ST4, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ST3, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %61, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i32, i32* @keymapsCount, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call i32 @uprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @layer_on(i32 1)
  br label %131

76:                                               ; preds = %70, %60
  %77 = load i32, i32* @cChord, align 4
  %78 = load i32, i32* @FN, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i64, i64* @cMode, align 8
  %82 = load i64, i64* @STENO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* @QWERTY, align 8
  store i64 %85, i64* @cMode, align 8
  br label %88

86:                                               ; preds = %80
  %87 = load i64, i64* @STENO, align 8
  store i64 %87, i64* @cMode, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i64 [ %85, %84 ], [ %87, %86 ]
  br label %131

90:                                               ; preds = %76
  %91 = load i64, i64* @cMode, align 8
  %92 = load i64, i64* @QWERTY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* @cChord, align 4
  %96 = load i32, i32* @FN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @FN, align 4
  %101 = load i32, i32* @cChord, align 4
  %102 = xor i32 %101, %100
  store i32 %102, i32* @cChord, align 4
  br label %130

103:                                              ; preds = %94, %90
  %104 = load i64, i64* @cMode, align 8
  %105 = load i64, i64* @QWERTY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %118, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* @cMode, align 8
  %109 = load i64, i64* @COMMAND, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @cChord, align 4
  %113 = load i32, i32* @FN, align 4
  %114 = load i32, i32* @PWR, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111, %107, %103
  %119 = call i32 @processChord(i32 0)
  br label %131

120:                                              ; preds = %111
  %121 = load i64, i64* @cMode, align 8
  %122 = load i64, i64* @STENO, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* @QWERSTENO, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @processChord(i32 1)
  br label %131

129:                                              ; preds = %124, %120
  br label %130

130:                                              ; preds = %129, %99
  store i32 0, i32* @inChord, align 4
  store i64 0, i64* @chordIndex, align 8
  store i32 0, i32* @cChord, align 4
  store i32 1, i32* %3, align 4
  br label %145

131:                                              ; preds = %127, %118, %88, %73, %59, %17
  store i32 0, i32* @cChord, align 4
  store i32 0, i32* @inChord, align 4
  store i64 0, i64* @chordIndex, align 8
  %132 = call i32 (...) @clear_keyboard()
  store i32 0, i32* @repEngaged, align 4
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %141, %131
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 32
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i32*, i32** @chordState, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 65535, i32* %140, align 4
  br label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %133

144:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %130
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @processChord(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
