; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_processSmartMacroTap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_processSmartMacroTap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@relativityTimer = common dso_local global i64 0, align 8
@relTimeout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"ribution\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Corporation\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Contact\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"oration\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Corp\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Distribution\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Distributor\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Dist\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Lookup\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Instance\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Item\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"NadRate\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"DistributionCenter\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"DistCenter\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Pricing\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Product\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Person\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Darden\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Step\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Session\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Supplier\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Task\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Workflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processSmartMacroTap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @relativityTimer, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = call i32 (...) @timer_read()
  %8 = load i64, i64* @relativityTimer, align 8
  %9 = call i64 @TIMER_DIFF_16(i32 %7, i64 %8)
  %10 = load i64, i64* @relTimeout, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 (...) @deactivateRelativity()
  store i32 1, i32* %2, align 4
  br label %116

14:                                               ; preds = %6, %1
  store i64 0, i64* @relativityTimer, align 8
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %113 [
    i32 137, label %16
    i32 136, label %37
    i32 135, label %51
    i32 134, label %54
    i32 133, label %62
    i32 132, label %64
    i32 131, label %84
    i32 130, label %86
    i32 129, label %103
    i32 128, label %111
  ]

16:                                               ; preds = %14
  %17 = call i32 @containsCode(i32 136)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 @printString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %36

22:                                               ; preds = %16
  %23 = call i32 @last2CodeAre(i32 137)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @ReplaceString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %35

27:                                               ; preds = %22
  %28 = call i32 @lastCodeIs(i32 137)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @printString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %34

32:                                               ; preds = %27
  %33 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %19
  br label %113

37:                                               ; preds = %14
  %38 = call i32 @last2CodeAre(i32 136)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @ReplaceString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %50

42:                                               ; preds = %37
  %43 = call i32 @lastCodeIs(i32 136)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @printString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %49

47:                                               ; preds = %42
  %48 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %40
  br label %113

51:                                               ; preds = %14
  %52 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %53 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %113

54:                                               ; preds = %14
  %55 = call i32 @containsCode(i32 128)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %61

59:                                               ; preds = %54
  %60 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %57
  br label %113

62:                                               ; preds = %14
  %63 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %113

64:                                               ; preds = %14
  %65 = call i32 @last2CodesAre(i32 136, i32 137)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @ReplaceString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %69 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %83

70:                                               ; preds = %64
  %71 = call i32 @last2CodeAre(i32 132)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %82

74:                                               ; preds = %70
  %75 = call i32 @lastCodeIs(i32 132)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @ReplaceString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  br label %81

79:                                               ; preds = %74
  %80 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %73
  br label %83

83:                                               ; preds = %82, %67
  br label %113

84:                                               ; preds = %14
  %85 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %113

86:                                               ; preds = %14
  %87 = call i32 @containsCode(i32 128)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = call i32 @containsCode(i32 130)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = call i32 @containsCode(i32 136)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %89
  %96 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %99

97:                                               ; preds = %92
  %98 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %95
  br label %102

100:                                              ; preds = %86
  %101 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %99
  br label %113

103:                                              ; preds = %14
  %104 = call i32 @containsCode(i32 128)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %110

108:                                              ; preds = %103
  %109 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  br label %113

111:                                              ; preds = %14
  %112 = call i32 @printStringAndQueueChar(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %113

113:                                              ; preds = %14, %111, %110, %102, %84, %83, %62, %61, %51, %50, %36
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @addKeyCode(i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %113, %12
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @TIMER_DIFF_16(i32, i64) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @deactivateRelativity(...) #1

declare dso_local i32 @containsCode(i32) #1

declare dso_local i32 @printString(i8*) #1

declare dso_local i32 @printStringAndQueueChar(i8*) #1

declare dso_local i32 @last2CodeAre(i32) #1

declare dso_local i32 @ReplaceString(i8*, i8*) #1

declare dso_local i32 @lastCodeIs(i32) #1

declare dso_local i32 @last2CodesAre(i32, i32) #1

declare dso_local i32 @addKeyCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
