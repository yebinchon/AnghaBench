; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_d51_util.c_dled_print.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_d51_util.c_dled_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_LED_ON = common dso_local global i32 0, align 4
@DLED_ONTIME = common dso_local global i32 0, align 4
@w = common dso_local global i32 0, align 4
@DBG_LED_OFF = common dso_local global i32 0, align 4
@DLED_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dled_print(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %52

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 1000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 2, i32* %5, align 4
  br label %51

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 10000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 3, i32* %5, align 4
  br label %50

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 100000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 4, i32* %5, align 4
  br label %49

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 1000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 5, i32* %5, align 4
  br label %48

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 10000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 6, i32* %5, align 4
  br label %47

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 100000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 7, i32* %5, align 4
  br label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 1000000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 8, i32* %5, align 4
  br label %45

44:                                               ; preds = %40
  store i32 9, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %19
  br label %52

52:                                               ; preds = %51, %15
  br label %53

53:                                               ; preds = %52, %11
  br label %54

54:                                               ; preds = %162, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %165

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %63, %57
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %8, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 10
  store i32 %65, i32* %7, align 4
  br label %59

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %3, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %124, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @DBG_LED_ON, align 4
  %79 = load i32, i32* @DLED_ONTIME, align 4
  %80 = sdiv i32 %79, 4
  store i32 %80, i32* @w, align 4
  br label %81

81:                                               ; preds = %85, %77
  %82 = load i32, i32* @w, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* @w, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* @w, align 4
  br label %81

88:                                               ; preds = %81
  %89 = load i32, i32* @DBG_LED_OFF, align 4
  %90 = load i32, i32* @DLED_ONTIME, align 4
  %91 = sdiv i32 %90, 4
  store i32 %91, i32* @w, align 4
  br label %92

92:                                               ; preds = %96, %88
  %93 = load i32, i32* @w, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* @w, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* @w, align 4
  br label %92

99:                                               ; preds = %92
  %100 = load i32, i32* @DBG_LED_ON, align 4
  %101 = load i32, i32* @DLED_ONTIME, align 4
  %102 = sdiv i32 %101, 4
  store i32 %102, i32* @w, align 4
  br label %103

103:                                              ; preds = %107, %99
  %104 = load i32, i32* @w, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* @w, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* @w, align 4
  br label %103

110:                                              ; preds = %103
  %111 = load i32, i32* @DBG_LED_OFF, align 4
  %112 = load i32, i32* @DLED_ONTIME, align 4
  %113 = sdiv i32 %112, 4
  store i32 %113, i32* @w, align 4
  br label %114

114:                                              ; preds = %118, %110
  %115 = load i32, i32* @w, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* @w, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* @w, align 4
  br label %114

121:                                              ; preds = %114
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %6, align 4
  br label %153

124:                                              ; preds = %66
  br label %125

125:                                              ; preds = %149, %124
  %126 = load i32, i32* %6, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %125
  %129 = load i32, i32* @DBG_LED_ON, align 4
  %130 = load i32, i32* @DLED_ONTIME, align 4
  store i32 %130, i32* @w, align 4
  br label %131

131:                                              ; preds = %135, %128
  %132 = load i32, i32* @w, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* @w, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* @w, align 4
  br label %131

138:                                              ; preds = %131
  %139 = load i32, i32* @DBG_LED_OFF, align 4
  %140 = load i32, i32* @DLED_ONTIME, align 4
  %141 = sdiv i32 %140, 2
  store i32 %141, i32* @w, align 4
  br label %142

142:                                              ; preds = %146, %138
  %143 = load i32, i32* @w, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* @w, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* @w, align 4
  br label %142

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %6, align 4
  br label %125

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152, %121
  %154 = load i32, i32* @DLED_PAUSE, align 4
  store i32 %154, i32* @w, align 4
  br label %155

155:                                              ; preds = %159, %153
  %156 = load i32, i32* @w, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* @w, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* @w, align 4
  br label %155

162:                                              ; preds = %155
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %5, align 4
  br label %54

165:                                              ; preds = %54
  %166 = load i64, i64* %4, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load i32, i32* @DLED_PAUSE, align 4
  %170 = mul nsw i32 %169, 4
  store i32 %170, i32* @w, align 4
  br label %171

171:                                              ; preds = %175, %168
  %172 = load i32, i32* @w, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* @w, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* @w, align 4
  br label %171

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %165
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
