; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/doogle999/extr_doogle999.c_process_input.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/doogle999/extr_doogle999.c_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MODS_SHIFT_MASK = common dso_local global i32 0, align 4
@CALC_CHAR_BEG = common dso_local global i8 0, align 1
@CALC_CHAR_END = common dso_local global i8 0, align 1
@CALC_CHAR_ADD = common dso_local global i8 0, align 1
@CALC_CHAR_EXP = common dso_local global i8 0, align 1
@CALC_CHAR_MUL = common dso_local global i8 0, align 1
@CALC_CHAR_ASN = common dso_local global i8 0, align 1
@CALC_CHAR_ACS = common dso_local global i8 0, align 1
@CALC_CHAR_ATN = common dso_local global i8 0, align 1
@CALC_CHAR_LOG = common dso_local global i8 0, align 1
@KC_KP_0 = common dso_local global i32 0, align 4
@KC_KP_1 = common dso_local global i32 0, align 4
@KC_KP_9 = common dso_local global i32 0, align 4
@KC_1 = common dso_local global i32 0, align 4
@CALC_CHAR_SUB = common dso_local global i8 0, align 1
@CALC_CHAR_DIV = common dso_local global i8 0, align 1
@CALC_CHAR_SIN = common dso_local global i8 0, align 1
@CALC_CHAR_COS = common dso_local global i8 0, align 1
@CALC_CHAR_TAN = common dso_local global i8 0, align 1
@CALC_CHAR_SQT = common dso_local global i8 0, align 1
@CALC_CHAR_LGE = common dso_local global i8 0, align 1
@CALC_CHAR_DEC = common dso_local global i8 0, align 1
@CALC_CHAR_PI = common dso_local global i8 0, align 1
@CALC_CHAR_EUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_input(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %16 [
    i32 131, label %15
    i32 135, label %15
  ]

15:                                               ; preds = %13, %13
  store i32 0, i32* %4, align 4
  br label %125

16:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %125

17:                                               ; preds = %3
  %18 = call i32 (...) @get_mods()
  %19 = load i32, i32* @MODS_SHIFT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %46 [
    i32 147, label %24
    i32 150, label %26
    i32 142, label %28
    i32 138, label %30
    i32 149, label %32
    i32 148, label %34
    i32 141, label %36
    i32 130, label %38
    i32 145, label %40
    i32 128, label %42
    i32 136, label %44
  ]

24:                                               ; preds = %22
  %25 = load i8, i8* @CALC_CHAR_BEG, align 1
  store i8 %25, i8* %8, align 1
  br label %47

26:                                               ; preds = %22
  %27 = load i8, i8* @CALC_CHAR_END, align 1
  store i8 %27, i8* %8, align 1
  br label %47

28:                                               ; preds = %22
  %29 = load i8, i8* @CALC_CHAR_ADD, align 1
  store i8 %29, i8* %8, align 1
  br label %47

30:                                               ; preds = %22
  %31 = load i8, i8* @CALC_CHAR_ADD, align 1
  store i8 %31, i8* %8, align 1
  br label %47

32:                                               ; preds = %22
  %33 = load i8, i8* @CALC_CHAR_EXP, align 1
  store i8 %33, i8* %8, align 1
  br label %47

34:                                               ; preds = %22
  %35 = load i8, i8* @CALC_CHAR_MUL, align 1
  store i8 %35, i8* %8, align 1
  br label %47

36:                                               ; preds = %22
  %37 = load i8, i8* @CALC_CHAR_MUL, align 1
  store i8 %37, i8* %8, align 1
  br label %47

38:                                               ; preds = %22
  %39 = load i8, i8* @CALC_CHAR_ASN, align 1
  store i8 %39, i8* %8, align 1
  br label %47

40:                                               ; preds = %22
  %41 = load i8, i8* @CALC_CHAR_ACS, align 1
  store i8 %41, i8* %8, align 1
  br label %47

42:                                               ; preds = %22
  %43 = load i8, i8* @CALC_CHAR_ATN, align 1
  store i8 %43, i8* %8, align 1
  br label %47

44:                                               ; preds = %22
  %45 = load i8, i8* @CALC_CHAR_LOG, align 1
  store i8 %45, i8* %8, align 1
  br label %47

46:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %125

47:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24
  %48 = load i8, i8* %8, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %125

50:                                               ; preds = %17
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @KC_KP_0, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 150
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %50
  store i32 48, i32* %4, align 4
  br label %125

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @KC_KP_1, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @KC_KP_9, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @KC_KP_1, align 4
  %69 = sub nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = add nsw i32 %70, 48
  store i32 %71, i32* %4, align 4
  br label %125

72:                                               ; preds = %62, %58
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @KC_1, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = icmp sle i32 %77, 147
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @KC_1, align 4
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = add nsw i32 %83, 48
  store i32 %84, i32* %4, align 4
  br label %125

85:                                               ; preds = %76, %72
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  switch i32 %88, label %124 [
    i32 134, label %89
    i32 139, label %89
    i32 129, label %92
    i32 137, label %92
    i32 130, label %95
    i32 145, label %98
    i32 128, label %101
    i32 132, label %104
    i32 136, label %107
    i32 144, label %110
    i32 140, label %110
    i32 133, label %113
    i32 143, label %116
    i32 146, label %119
    i32 131, label %120
    i32 135, label %121
    i32 152, label %122
    i32 151, label %123
  ]

89:                                               ; preds = %87, %87
  %90 = load i8, i8* @CALC_CHAR_SUB, align 1
  store i8 %90, i8* %8, align 1
  %91 = sext i8 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %125

92:                                               ; preds = %87, %87
  %93 = load i8, i8* @CALC_CHAR_DIV, align 1
  store i8 %93, i8* %8, align 1
  %94 = sext i8 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %125

95:                                               ; preds = %87
  %96 = load i8, i8* @CALC_CHAR_SIN, align 1
  store i8 %96, i8* %8, align 1
  %97 = sext i8 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %125

98:                                               ; preds = %87
  %99 = load i8, i8* @CALC_CHAR_COS, align 1
  store i8 %99, i8* %8, align 1
  %100 = sext i8 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %125

101:                                              ; preds = %87
  %102 = load i8, i8* @CALC_CHAR_TAN, align 1
  store i8 %102, i8* %8, align 1
  %103 = sext i8 %102 to i32
  store i32 %103, i32* %4, align 4
  br label %125

104:                                              ; preds = %87
  %105 = load i8, i8* @CALC_CHAR_SQT, align 1
  store i8 %105, i8* %8, align 1
  %106 = sext i8 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %125

107:                                              ; preds = %87
  %108 = load i8, i8* @CALC_CHAR_LGE, align 1
  store i8 %108, i8* %8, align 1
  %109 = sext i8 %108 to i32
  store i32 %109, i32* %4, align 4
  br label %125

110:                                              ; preds = %87, %87
  %111 = load i8, i8* @CALC_CHAR_DEC, align 1
  store i8 %111, i8* %8, align 1
  %112 = sext i8 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %125

113:                                              ; preds = %87
  %114 = load i8, i8* @CALC_CHAR_PI, align 1
  store i8 %114, i8* %8, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %125

116:                                              ; preds = %87
  %117 = load i8, i8* @CALC_CHAR_EUL, align 1
  store i8 %117, i8* %8, align 1
  %118 = sext i8 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %125

119:                                              ; preds = %87
  store i32 -2, i32* %4, align 4
  br label %125

120:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %125

121:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %125

122:                                              ; preds = %87
  store i32 -3, i32* %4, align 4
  br label %125

123:                                              ; preds = %87
  store i32 -4, i32* %4, align 4
  br label %125

124:                                              ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %123, %122, %121, %120, %119, %116, %113, %110, %107, %104, %101, %98, %95, %92, %89, %79, %66, %57, %47, %46, %16, %15
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @get_mods(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
