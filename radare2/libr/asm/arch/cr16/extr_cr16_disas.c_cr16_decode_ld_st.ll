; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_ld_st.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_ld_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_ld_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_ld_st(i32* %0, %struct.cr16_cmd* %1) #0 {
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
  store i32 %11, i32* %9, align 4
  %12 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @cr16_print_ld_sw_opcode(%struct.cr16_cmd* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %219

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @cr16_get_opcode_159_0(i32 %18)
  %20 = and i32 %19, -33
  switch i32 %20, label %78 [
    i32 4, label %21
    i32 5, label %43
    i32 69, label %57
  ]

21:                                               ; preds = %17
  store i32 4, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 192
  %24 = icmp ne i32 %23, 192
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %79

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @r_read_at_le16(i32* %27, i32 2)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 256
  %32 = shl i32 %31, 9
  %33 = or i32 %29, %32
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 32
  %36 = shl i32 %35, 11
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @cr16_get_srcreg(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @cr16_print_short_abs18(%struct.cr16_cmd* %38, i32 %40, i32 %41)
  br label %79

43:                                               ; preds = %17
  store i32 4, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @r_read_at_le16(i32* %44, i32 2)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @cr16_get_srcreg(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @cr16_get_dstreg(i32 %50)
  %52 = and i32 %51, 9
  %53 = call i32 @cr16_print_short_reg_rel(%struct.cr16_cmd* %46, i32 %48, i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %219

56:                                               ; preds = %43
  br label %79

57:                                               ; preds = %17
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 6
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %57
  store i32 -1, i32* %6, align 4
  br label %79

67:                                               ; preds = %61
  %68 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @cr16_get_srcreg(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @cr16_get_dstreg(i32 %71)
  %73 = and i32 %72, 9
  %74 = call i32 @cr16_print_short_reg_rel(%struct.cr16_cmd* %68, i32 %70, i32 0, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %219

77:                                               ; preds = %67
  br label %79

78:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %77, %66, %56, %26, %25
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %219

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = ashr i32 %85, 11
  %87 = and i32 %86, -5
  switch i32 %87, label %179 [
    i32 18, label %88
    i32 19, label %109
    i32 27, label %136
    i32 26, label %163
  ]

88:                                               ; preds = %84
  store i32 4, i32* %6, align 4
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 -1, i32* %6, align 4
  br label %180

93:                                               ; preds = %88
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @r_read_at_le16(i32* %94, i32 2)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %97, 9
  %99 = and i32 %98, 3
  %100 = shl i32 %99, 16
  %101 = or i32 %96, %100
  store i32 %101, i32* %7, align 4
  %102 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @cr16_get_srcreg(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @cr16_get_dstreg(i32 %106)
  %108 = call i32 @cr16_print_reg_rel_reg(%struct.cr16_cmd* %102, i32 %103, i32 %105, i32 %107, i32 0)
  br label %180

109:                                              ; preds = %84
  store i32 4, i32* %6, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @r_read_at_le16(i32* %110, i32 2)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = ashr i32 %113, 9
  %115 = and i32 %114, 3
  %116 = shl i32 %115, 16
  %117 = or i32 %112, %116
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @cr16_get_srcreg(i32 %118)
  %120 = icmp eq i32 %119, 15
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @cr16_get_dstreg(i32 %124)
  %126 = call i32 @cr16_print_long_reg(%struct.cr16_cmd* %122, i32 %123, i32 %125, i32 0)
  br label %135

127:                                              ; preds = %109
  %128 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @cr16_get_srcreg(i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @cr16_get_dstreg(i32 %132)
  %134 = call i32 @cr16_print_longregreg_reg(%struct.cr16_cmd* %128, i32 %129, i32 %131, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %127, %121
  br label %180

136:                                              ; preds = %84
  store i32 4, i32* %6, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @r_read_at_le16(i32* %137, i32 2)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = ashr i32 %140, 9
  %142 = and i32 %141, 3
  %143 = shl i32 %142, 16
  %144 = or i32 %139, %143
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @cr16_get_srcreg(i32 %145)
  %147 = icmp eq i32 %146, 15
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @cr16_get_dstreg(i32 %151)
  %153 = call i32 @cr16_print_long_reg(%struct.cr16_cmd* %149, i32 %150, i32 %152, i32 1)
  br label %162

154:                                              ; preds = %136
  %155 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @cr16_get_dstreg(i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @cr16_get_srcreg(i32 %159)
  %161 = call i32 @cr16_print_longregreg_reg(%struct.cr16_cmd* %155, i32 %156, i32 %158, i32 %160, i32 1)
  br label %162

162:                                              ; preds = %154, %148
  br label %180

163:                                              ; preds = %84
  store i32 4, i32* %6, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @r_read_at_le16(i32* %164, i32 2)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = ashr i32 %167, 9
  %169 = and i32 %168, 3
  %170 = shl i32 %169, 16
  %171 = or i32 %166, %170
  store i32 %171, i32* %7, align 4
  %172 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @cr16_get_srcreg(i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @cr16_get_dstreg(i32 %176)
  %178 = call i32 @cr16_print_reg_rel_reg(%struct.cr16_cmd* %172, i32 %173, i32 %175, i32 %177, i32 1)
  br label %180

179:                                              ; preds = %84
  store i32 -1, i32* %6, align 4
  br label %180

180:                                              ; preds = %179, %163, %162, %135, %93, %92
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %219

185:                                              ; preds = %180
  %186 = load i32, i32* %9, align 4
  %187 = ashr i32 %186, 14
  switch i32 %187, label %216 [
    i32 3, label %188
    i32 2, label %202
  ]

188:                                              ; preds = %185
  store i32 2, i32* %6, align 4
  %189 = load i32, i32* %9, align 4
  %190 = and i32 %189, 1
  %191 = load i32, i32* %9, align 4
  %192 = ashr i32 %191, 8
  %193 = and i32 %192, 30
  %194 = or i32 %190, %193
  store i32 %194, i32* %8, align 4
  %195 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @cr16_get_srcreg(i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @cr16_get_dstreg(i32 %199)
  %201 = call i32 @cr16_print_reg_reg_rel(%struct.cr16_cmd* %195, i32 %197, i32 %198, i32 %200, i32 1)
  br label %217

202:                                              ; preds = %185
  store i32 2, i32* %6, align 4
  %203 = load i32, i32* %9, align 4
  %204 = and i32 %203, 1
  %205 = load i32, i32* %9, align 4
  %206 = ashr i32 %205, 8
  %207 = and i32 %206, 30
  %208 = or i32 %204, %207
  store i32 %208, i32* %8, align 4
  %209 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @cr16_get_srcreg(i32 %210)
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @cr16_get_dstreg(i32 %213)
  %215 = call i32 @cr16_print_reg_reg_rel(%struct.cr16_cmd* %209, i32 %211, i32 %212, i32 %214, i32 0)
  br label %217

216:                                              ; preds = %185
  store i32 -1, i32* %6, align 4
  br label %217

217:                                              ; preds = %216, %202, %188
  %218 = load i32, i32* %6, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %217, %183, %82, %76, %55, %16
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i64 @cr16_print_ld_sw_opcode(%struct.cr16_cmd*, i32) #1

declare dso_local i32 @cr16_get_opcode_159_0(i32) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @cr16_print_short_abs18(%struct.cr16_cmd*, i32, i32) #1

declare dso_local i32 @cr16_get_srcreg(i32) #1

declare dso_local i32 @cr16_print_short_reg_rel(%struct.cr16_cmd*, i32, i32, i32) #1

declare dso_local i32 @cr16_get_dstreg(i32) #1

declare dso_local i32 @cr16_print_reg_rel_reg(%struct.cr16_cmd*, i32, i32, i32, i32) #1

declare dso_local i32 @cr16_print_long_reg(%struct.cr16_cmd*, i32, i32, i32) #1

declare dso_local i32 @cr16_print_longregreg_reg(%struct.cr16_cmd*, i32, i32, i32, i32) #1

declare dso_local i32 @cr16_print_reg_reg_rel(%struct.cr16_cmd*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
