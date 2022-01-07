; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_i_r.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_i_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32 }

@CR16_TBIT_I_R = common dso_local global i32 0, align 4
@CR16_TBIT_R_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_i_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_i_r(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @r_read_le16(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 512
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %125

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %16, 9
  %18 = load i32, i32* @CR16_TBIT_I_R, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 9
  %23 = load i32, i32* @CR16_TBIT_R_R, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @cr16_print_4biti_opcode(%struct.cr16_cmd* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %125

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %34 = call i32 @cr16_anal_4bit_opcode(i32 %32, %struct.cr16_cmd* %33)
  br label %42

35:                                               ; preds = %20, %15
  %36 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @cr16_print_4bit_opcode(%struct.cr16_cmd* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %125

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 31
  %45 = xor i32 %44, 17
  switch i32 %45, label %85 [
    i32 0, label %46
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @r_read_at_le16(i32* %51, i32 2)
  store i32 %52, i32* %8, align 4
  store i32 4, i32* %6, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @cr16_get_short_imm(i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 9
  %59 = load i32, i32* @CR16_TBIT_I_R, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 9
  %64 = load i32, i32* @CR16_TBIT_R_R, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @cr16_get_dstreg(i32 %69)
  %71 = call i32 @cr16_print_med_reg(%struct.cr16_cmd* %67, i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %125

74:                                               ; preds = %66
  br label %84

75:                                               ; preds = %61, %56
  %76 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @cr16_get_dstreg(i32 %78)
  %80 = call i32 @cr16_print_reg_med(%struct.cr16_cmd* %76, i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %125

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %74
  br label %123

85:                                               ; preds = %42
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @cr16_get_dstreg(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @cr16_check_reg_boundaries(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 -1, i32* %6, align 4
  br label %123

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = ashr i32 %93, 9
  %95 = load i32, i32* @CR16_TBIT_I_R, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, 9
  %100 = load i32, i32* @CR16_TBIT_R_R, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @cr16_get_short_imm(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @cr16_get_dstreg(i32 %106)
  %108 = call i32 @cr16_print_short_reg(%struct.cr16_cmd* %103, i32 %105, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 -1, i32* %3, align 4
  br label %125

111:                                              ; preds = %102
  br label %122

112:                                              ; preds = %97, %92
  %113 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @cr16_get_short_imm(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @cr16_get_dstreg(i32 %116)
  %118 = call i32 @cr16_print_reg_short(%struct.cr16_cmd* %113, i32 %115, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 -1, i32* %3, align 4
  br label %125

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %111
  br label %123

123:                                              ; preds = %122, %91, %84
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %120, %110, %82, %73, %40, %30, %14
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i64 @cr16_print_4biti_opcode(%struct.cr16_cmd*, i32) #1

declare dso_local i32 @cr16_anal_4bit_opcode(i32, %struct.cr16_cmd*) #1

declare dso_local i64 @cr16_print_4bit_opcode(%struct.cr16_cmd*, i32) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @cr16_get_short_imm(i32) #1

declare dso_local i32 @cr16_print_med_reg(%struct.cr16_cmd*, i32, i32) #1

declare dso_local i32 @cr16_get_dstreg(i32) #1

declare dso_local i32 @cr16_print_reg_med(%struct.cr16_cmd*, i32, i32) #1

declare dso_local i32 @cr16_check_reg_boundaries(i32) #1

declare dso_local i32 @cr16_print_short_reg(%struct.cr16_cmd*, i32, i32) #1

declare dso_local i32 @cr16_print_reg_short(%struct.cr16_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
