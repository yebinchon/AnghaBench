; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/primekb/prime_r/keymaps/rooski/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/primekb/prime_r/keymaps/rooski/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@arrow_toggle = common dso_local global i32 0, align 4
@X_UP = common dso_local global i32 0, align 4
@X_KP_2 = common dso_local global i32 0, align 4
@X_DOWN = common dso_local global i32 0, align 4
@X_KP_DOT = common dso_local global i32 0, align 4
@X_LEFT = common dso_local global i32 0, align 4
@X_KP_0 = common dso_local global i32 0, align 4
@X_RIGHT = common dso_local global i32 0, align 4
@X_KP_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %67 [
    i32 129, label %13
    i32 128, label %19
    i32 132, label %31
    i32 131, label %43
    i32 130, label %55
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @arrow_toggle, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @arrow_toggle, align 4
  %18 = call i32 (...) @backlight_toggle()
  store i32 0, i32* %3, align 4
  br label %126

19:                                               ; preds = %11
  %20 = load i32, i32* @arrow_toggle, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @X_UP, align 4
  %24 = call i32 @SS_DOWN(i32 %23)
  %25 = call i32 @SEND_STRING(i32 %24)
  br label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @X_KP_2, align 4
  %28 = call i32 @SS_DOWN(i32 %27)
  %29 = call i32 @SEND_STRING(i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %126

31:                                               ; preds = %11
  %32 = load i32, i32* @arrow_toggle, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @X_DOWN, align 4
  %36 = call i32 @SS_DOWN(i32 %35)
  %37 = call i32 @SEND_STRING(i32 %36)
  br label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @X_KP_DOT, align 4
  %40 = call i32 @SS_DOWN(i32 %39)
  %41 = call i32 @SEND_STRING(i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  store i32 0, i32* %3, align 4
  br label %126

43:                                               ; preds = %11
  %44 = load i32, i32* @arrow_toggle, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @X_LEFT, align 4
  %48 = call i32 @SS_DOWN(i32 %47)
  %49 = call i32 @SEND_STRING(i32 %48)
  br label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @X_KP_0, align 4
  %52 = call i32 @SS_DOWN(i32 %51)
  %53 = call i32 @SEND_STRING(i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  store i32 0, i32* %3, align 4
  br label %126

55:                                               ; preds = %11
  %56 = load i32, i32* @arrow_toggle, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @X_RIGHT, align 4
  %60 = call i32 @SS_DOWN(i32 %59)
  %61 = call i32 @SEND_STRING(i32 %60)
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @X_KP_ENTER, align 4
  %64 = call i32 @SS_DOWN(i32 %63)
  %65 = call i32 @SEND_STRING(i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  store i32 0, i32* %3, align 4
  br label %126

67:                                               ; preds = %11
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %125, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  switch i32 %75, label %124 [
    i32 128, label %76
    i32 132, label %88
    i32 131, label %100
    i32 130, label %112
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* @arrow_toggle, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @X_UP, align 4
  %81 = call i32 @SS_UP(i32 %80)
  %82 = call i32 @SEND_STRING(i32 %81)
  br label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @X_KP_2, align 4
  %85 = call i32 @SS_UP(i32 %84)
  %86 = call i32 @SEND_STRING(i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  store i32 0, i32* %3, align 4
  br label %126

88:                                               ; preds = %74
  %89 = load i32, i32* @arrow_toggle, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @X_DOWN, align 4
  %93 = call i32 @SS_UP(i32 %92)
  %94 = call i32 @SEND_STRING(i32 %93)
  br label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @X_KP_DOT, align 4
  %97 = call i32 @SS_UP(i32 %96)
  %98 = call i32 @SEND_STRING(i32 %97)
  br label %99

99:                                               ; preds = %95, %91
  store i32 0, i32* %3, align 4
  br label %126

100:                                              ; preds = %74
  %101 = load i32, i32* @arrow_toggle, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @X_LEFT, align 4
  %105 = call i32 @SS_UP(i32 %104)
  %106 = call i32 @SEND_STRING(i32 %105)
  br label %111

107:                                              ; preds = %100
  %108 = load i32, i32* @X_KP_0, align 4
  %109 = call i32 @SS_UP(i32 %108)
  %110 = call i32 @SEND_STRING(i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  store i32 0, i32* %3, align 4
  br label %126

112:                                              ; preds = %74
  %113 = load i32, i32* @arrow_toggle, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @X_RIGHT, align 4
  %117 = call i32 @SS_UP(i32 %116)
  %118 = call i32 @SEND_STRING(i32 %117)
  br label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @X_KP_ENTER, align 4
  %121 = call i32 @SS_UP(i32 %120)
  %122 = call i32 @SEND_STRING(i32 %121)
  br label %123

123:                                              ; preds = %119, %115
  store i32 0, i32* %3, align 4
  br label %126

124:                                              ; preds = %74
  br label %125

125:                                              ; preds = %124, %68
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123, %111, %99, %87, %66, %54, %42, %30, %13
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @backlight_toggle(...) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_DOWN(i32) #1

declare dso_local i32 @SS_UP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
