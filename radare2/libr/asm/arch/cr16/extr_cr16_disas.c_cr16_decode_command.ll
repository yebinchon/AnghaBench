; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr16_decode_command(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @r_read_le16(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @cr16_get_opcode_low(i32 %10)
  switch i32 %11, label %44 [
    i32 148, label %12
    i32 163, label %12
    i32 161, label %12
    i32 162, label %12
    i32 144, label %12
    i32 132, label %12
    i32 131, label %12
    i32 155, label %12
    i32 160, label %12
    i32 140, label %12
    i32 128, label %12
    i32 159, label %12
    i32 149, label %12
    i32 157, label %36
    i32 156, label %40
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @cr16_get_opcode_hi(i32 %13)
  switch i32 %14, label %23 [
    i32 154, label %15
    i32 135, label %19
  ]

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %18 = call i32 @cr16_decode_i_r(i32* %16, %struct.cr16_cmd* %17)
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %22 = call i32 @cr16_decode_r_r(i32* %20, %struct.cr16_cmd* %21)
  store i32 %22, i32* %6, align 4
  br label %24

23:                                               ; preds = %12
  store i32 -1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %19, %15
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cr16_get_opcode_low(i32 %28)
  %30 = icmp eq i32 %29, 155
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %34 = call i32 @cr16_decode_scond(i32* %32, %struct.cr16_cmd* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %27, %24
  br label %45

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %39 = call i32 @cr16_decode_bcond01i(i32* %37, %struct.cr16_cmd* %38)
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %43 = call i32 @cr16_decode_biti(i32* %41, %struct.cr16_cmd* %42)
  store i32 %43, i32* %6, align 4
  br label %45

44:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %40, %36, %35
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %162

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 13
  switch i32 %52, label %57 [
    i32 2, label %53
    i32 0, label %53
  ]

53:                                               ; preds = %50, %50
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %56 = call i32 @cr16_decode_bcond_br(i32* %54, %struct.cr16_cmd* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %53
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %162

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 9
  switch i32 %64, label %107 [
    i32 150, label %65
    i32 134, label %65
    i32 129, label %69
    i32 130, label %80
    i32 158, label %84
    i32 152, label %88
    i32 153, label %88
    i32 11, label %88
    i32 146, label %99
    i32 145, label %99
    i32 143, label %103
    i32 142, label %103
    i32 141, label %103
  ]

65:                                               ; preds = %62, %62
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %68 = call i32 @cr16_decode_slpr(i32* %66, %struct.cr16_cmd* %67)
  store i32 %68, i32* %6, align 4
  br label %107

69:                                               ; preds = %62
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %72 = call i32 @cr16_decode_r_r(i32* %70, %struct.cr16_cmd* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %78 = call i32 @cr16_decode_bal(i32* %76, %struct.cr16_cmd* %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %69
  br label %107

80:                                               ; preds = %62
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %83 = call i32 @cr16_decode_i_r(i32* %81, %struct.cr16_cmd* %82)
  store i32 %83, i32* %6, align 4
  br label %107

84:                                               ; preds = %62
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %87 = call i32 @cr16_decode_bal(i32* %85, %struct.cr16_cmd* %86)
  store i32 %87, i32* %6, align 4
  br label %107

88:                                               ; preds = %62, %62, %62
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %91 = call i32 @cr16_decode_jmp(i32* %89, %struct.cr16_cmd* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %97 = call i32 @cr16_decode_bcond_br(i32* %95, %struct.cr16_cmd* %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %88
  br label %107

99:                                               ; preds = %62, %62
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %102 = call i32 @cr16_decode_movz(i32* %100, %struct.cr16_cmd* %101)
  store i32 %102, i32* %6, align 4
  br label %107

103:                                              ; preds = %62, %62, %62
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %106 = call i32 @cr16_decode_muls(i32* %104, %struct.cr16_cmd* %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %62, %103, %99, %98, %84, %80, %79, %65
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %162

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = ashr i32 %113, 7
  switch i32 %114, label %123 [
    i32 136, label %115
    i32 139, label %115
    i32 138, label %115
    i32 137, label %115
    i32 151, label %119
    i32 133, label %119
  ]

115:                                              ; preds = %112, %112, %112, %112
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %118 = call i32 @cr16_decode_push_pop(i32* %116, %struct.cr16_cmd* %117)
  store i32 %118, i32* %6, align 4
  br label %123

119:                                              ; preds = %112, %112
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %122 = call i32 @cr16_decode_loadm_storm(i32* %120, %struct.cr16_cmd* %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %112, %119, %115
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %162

128:                                              ; preds = %123
  %129 = load i32, i32* %7, align 4
  %130 = ashr i32 %129, 10
  switch i32 %130, label %135 [
    i32 147, label %131
  ]

131:                                              ; preds = %128
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %134 = call i32 @cr16_decode_movd(i32* %132, %struct.cr16_cmd* %133)
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %128, %131
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %162

140:                                              ; preds = %135
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %143 = call i32 @cr16_decode_misc(i32* %141, %struct.cr16_cmd* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %162

148:                                              ; preds = %140
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @cr16_get_opcode_hi(i32 %149)
  switch i32 %150, label %155 [
    i32 2, label %151
    i32 3, label %151
    i32 1, label %151
    i32 0, label %151
  ]

151:                                              ; preds = %148, %148, %148, %148
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %154 = call i32 @cr16_decode_ld_st(i32* %152, %struct.cr16_cmd* %153)
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %148, %151
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %158, %146, %138, %126, %110, %60, %48
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @cr16_get_opcode_low(i32) #1

declare dso_local i32 @cr16_get_opcode_hi(i32) #1

declare dso_local i32 @cr16_decode_i_r(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_r_r(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_scond(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_bcond01i(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_biti(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_bcond_br(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_slpr(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_bal(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_jmp(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_movz(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_muls(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_push_pop(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_loadm_storm(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_movd(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_misc(i32*, %struct.cr16_cmd*) #1

declare dso_local i32 @cr16_decode_ld_st(i32*, %struct.cr16_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
