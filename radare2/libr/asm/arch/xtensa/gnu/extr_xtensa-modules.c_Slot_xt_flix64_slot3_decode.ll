; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot3_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot3_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Slot_xt_flix64_slot3_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Slot_xt_flix64_slot3_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @Field_op0_s6_Slot_xt_flix64_slot3_get(i32 %4)
  switch i32 %5, label %156 [
    i32 1, label %6
    i32 2, label %12
    i32 3, label %18
    i32 4, label %24
    i32 5, label %30
    i32 6, label %36
    i32 7, label %42
    i32 8, label %48
    i32 9, label %54
    i32 10, label %60
    i32 11, label %66
    i32 12, label %72
    i32 13, label %78
    i32 14, label %84
    i32 15, label %90
    i32 16, label %96
    i32 17, label %102
    i32 18, label %108
    i32 19, label %114
    i32 20, label %120
    i32 21, label %126
    i32 22, label %132
    i32 23, label %138
    i32 24, label %144
    i32 25, label %150
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @Field_combined3e2c5767_fld71_Slot_xt_flix64_slot3_get(i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 516, i32* %2, align 4
  br label %157

11:                                               ; preds = %6
  br label %156

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @Field_combined3e2c5767_fld71_Slot_xt_flix64_slot3_get(i32 %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 517, i32* %2, align 4
  br label %157

17:                                               ; preds = %12
  br label %156

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @Field_combined3e2c5767_fld89xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 526, i32* %2, align 4
  br label %157

23:                                               ; preds = %18
  br label %156

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @Field_combined3e2c5767_fld87xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 524, i32* %2, align 4
  br label %157

29:                                               ; preds = %24
  br label %156

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @Field_combined3e2c5767_fld91xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 528, i32* %2, align 4
  br label %157

35:                                               ; preds = %30
  br label %156

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @Field_combined3e2c5767_fld92xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 529, i32* %2, align 4
  br label %157

41:                                               ; preds = %36
  br label %156

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @Field_combined3e2c5767_fld81xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 518, i32* %2, align 4
  br label %157

47:                                               ; preds = %42
  br label %156

48:                                               ; preds = %1
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @Field_combined3e2c5767_fld75xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 510, i32* %2, align 4
  br label %157

53:                                               ; preds = %48
  br label %156

54:                                               ; preds = %1
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @Field_combined3e2c5767_fld83xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 520, i32* %2, align 4
  br label %157

59:                                               ; preds = %54
  br label %156

60:                                               ; preds = %1
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @Field_combined3e2c5767_fld77xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 512, i32* %2, align 4
  br label %157

65:                                               ; preds = %60
  br label %156

66:                                               ; preds = %1
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @Field_combined3e2c5767_fld85xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 522, i32* %2, align 4
  br label %157

71:                                               ; preds = %66
  br label %156

72:                                               ; preds = %1
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @Field_combined3e2c5767_fld79xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %73)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 514, i32* %2, align 4
  br label %157

77:                                               ; preds = %72
  br label %156

78:                                               ; preds = %1
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @Field_combined3e2c5767_fld84xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 521, i32* %2, align 4
  br label %157

83:                                               ; preds = %78
  br label %156

84:                                               ; preds = %1
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @Field_combined3e2c5767_fld78xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 513, i32* %2, align 4
  br label %157

89:                                               ; preds = %84
  br label %156

90:                                               ; preds = %1
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @Field_combined3e2c5767_fld86xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 523, i32* %2, align 4
  br label %157

95:                                               ; preds = %90
  br label %156

96:                                               ; preds = %1
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @Field_combined3e2c5767_fld80xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 515, i32* %2, align 4
  br label %157

101:                                              ; preds = %96
  br label %156

102:                                              ; preds = %1
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @Field_combined3e2c5767_fld90xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 527, i32* %2, align 4
  br label %157

107:                                              ; preds = %102
  br label %156

108:                                              ; preds = %1
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @Field_combined3e2c5767_fld82xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 519, i32* %2, align 4
  br label %157

113:                                              ; preds = %108
  br label %156

114:                                              ; preds = %1
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @Field_combined3e2c5767_fld76xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %115)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 511, i32* %2, align 4
  br label %157

119:                                              ; preds = %114
  br label %156

120:                                              ; preds = %1
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @Field_combined3e2c5767_fld88xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 525, i32* %2, align 4
  br label %157

125:                                              ; preds = %120
  br label %156

126:                                              ; preds = %1
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @Field_combined3e2c5767_fld70xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 506, i32* %2, align 4
  br label %157

131:                                              ; preds = %126
  br label %156

132:                                              ; preds = %1
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @Field_combined3e2c5767_fld73xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %133)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 508, i32* %2, align 4
  br label %157

137:                                              ; preds = %132
  br label %156

138:                                              ; preds = %1
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @Field_combined3e2c5767_fld74xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %139)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 509, i32* %2, align 4
  br label %157

143:                                              ; preds = %138
  br label %156

144:                                              ; preds = %1
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @Field_combined3e2c5767_fld72xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %145)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 507, i32* %2, align 4
  br label %157

149:                                              ; preds = %144
  br label %156

150:                                              ; preds = %1
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @Field_combined3e2c5767_fld93xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32 %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 97, i32* %2, align 4
  br label %157

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %1, %155, %149, %143, %137, %131, %125, %119, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17, %11
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %154, %148, %142, %136, %130, %124, %118, %112, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @Field_op0_s6_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld71_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld89xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld87xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld91xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld92xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld81xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld75xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld83xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld77xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld85xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld79xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld84xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld78xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld86xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld80xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld90xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld82xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld76xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld88xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld70xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld73xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld74xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld72xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld93xt_flix64_slot3_Slot_xt_flix64_slot3_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
