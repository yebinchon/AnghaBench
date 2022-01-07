; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot2_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xtensa/gnu/extr_xtensa-modules.c_Slot_xt_flix64_slot2_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Slot_xt_flix64_slot2_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Slot_xt_flix64_slot2_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @Field_combined3e2c5767_fld36xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %4)
  switch i32 %5, label %58 [
    i32 0, label %6
    i32 1, label %32
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 41, i32* %2, align 4
  br label %151

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %12)
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 42, i32* %2, align 4
  br label %151

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %17)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 43, i32* %2, align 4
  br label %151

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %22)
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 49, i32* %2, align 4
  br label %151

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %27)
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 450, i32* %2, align 4
  br label %151

31:                                               ; preds = %26
  br label %58

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %33)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 27, i32* %2, align 4
  br label %151

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %38)
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 44, i32* %2, align 4
  br label %151

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %43)
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 50, i32* %2, align 4
  br label %151

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %48)
  %50 = icmp eq i32 %49, 5
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 51, i32* %2, align 4
  br label %151

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %53)
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 113, i32* %2, align 4
  br label %151

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %1, %57, %31
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @Field_combined3e2c5767_fld37xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %63)
  %65 = icmp eq i32 %64, 6
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 33, i32* %2, align 4
  br label %151

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @Field_combined3e2c5767_fld39xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %68)
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %72)
  %74 = icmp eq i32 %73, 6
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = call i64 @Field_combined3e2c5767_fld63xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 32, i32* %2, align 4
  br label %151

80:                                               ; preds = %75, %71, %67
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @Field_combined3e2c5767_fld41xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %81)
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %85)
  %87 = icmp eq i32 %86, 6
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @Field_combined3e2c5767_fld65xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 97, i32* %2, align 4
  br label %151

93:                                               ; preds = %88, %84, %80
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @Field_combined3e2c5767_fld42xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %94)
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %98)
  %100 = icmp eq i32 %99, 6
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* %3, align 4
  %103 = call i64 @Field_combined3e2c5767_fld64xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 96, i32* %2, align 4
  br label %151

106:                                              ; preds = %101, %97, %93
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @Field_combined3e2c5767_fld44xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %107)
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %111)
  %113 = icmp eq i32 %112, 6
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = call i64 @Field_combined3e2c5767_fld64xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 95, i32* %2, align 4
  br label %151

119:                                              ; preds = %114, %110, %106
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @Field_combined3e2c5767_fld45xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %120)
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %124)
  %126 = icmp eq i32 %125, 6
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* %3, align 4
  %129 = call i64 @Field_combined3e2c5767_fld66xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 110, i32* %2, align 4
  br label %151

132:                                              ; preds = %127, %123, %119
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @Field_combined3e2c5767_fld47xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %133)
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %137)
  %139 = icmp eq i32 %138, 6
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i32, i32* %3, align 4
  %142 = call i64 @Field_combined3e2c5767_fld68xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 109, i32* %2, align 4
  br label %151

145:                                              ; preds = %140, %136, %132
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32 %146)
  %148 = icmp eq i32 %147, 7
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 112, i32* %2, align 4
  br label %151

150:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %149, %144, %131, %118, %105, %92, %79, %66, %56, %51, %46, %41, %36, %30, %25, %20, %15, %10
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @Field_combined3e2c5767_fld36xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i32 @Field_op0_s5_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld37xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld39xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld63xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld41xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld65xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld42xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld64xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld44xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld45xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld66xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i32 @Field_combined3e2c5767_fld47xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

declare dso_local i64 @Field_combined3e2c5767_fld68xt_flix64_slot2_Slot_xt_flix64_slot2_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
