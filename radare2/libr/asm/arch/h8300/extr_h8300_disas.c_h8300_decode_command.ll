; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_h8300_decode_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/h8300/extr_h8300_disas.c_h8300_decode_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h8300_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h8300_decode_command(i32* %0, %struct.h8300_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.h8300_cmd*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.h8300_cmd* %1, %struct.h8300_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 4
  switch i32 %10, label %23 [
    i32 159, label %11
    i32 160, label %15
    i32 215, label %19
    i32 219, label %19
    i32 218, label %19
    i32 178, label %19
    i32 161, label %19
    i32 144, label %19
    i32 132, label %19
    i32 128, label %19
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %14 = call i32 @decode_r2imm_short(i32* %12, %struct.h8300_cmd* %13)
  store i32 %14, i32* %6, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %18 = call i32 @decode_abs2r_short(i32* %16, %struct.h8300_cmd* %17)
  store i32 %18, i32* %6, align 4
  br label %23

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %22 = call i32 @decode_imm2r_short(i32* %20, %struct.h8300_cmd* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %2, %19, %15, %11
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %175

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %172 [
    i32 216, label %32
    i32 135, label %36
    i32 221, label %40
    i32 179, label %40
    i32 222, label %44
    i32 214, label %48
    i32 212, label %48
    i32 186, label %48
    i32 185, label %48
    i32 201, label %48
    i32 193, label %48
    i32 181, label %48
    i32 194, label %48
    i32 188, label %48
    i32 217, label %52
    i32 223, label %52
    i32 209, label %52
    i32 131, label %52
    i32 133, label %52
    i32 220, label %52
    i32 130, label %52
    i32 195, label %52
    i32 189, label %52
    i32 180, label %52
    i32 163, label %52
    i32 184, label %52
    i32 210, label %56
    i32 211, label %70
    i32 202, label %84
    i32 203, label %88
    i32 187, label %92
    i32 148, label %96
    i32 177, label %100
    i32 176, label %100
    i32 175, label %100
    i32 172, label %100
    i32 147, label %100
    i32 143, label %100
    i32 142, label %100
    i32 139, label %100
    i32 138, label %100
    i32 174, label %104
    i32 149, label %104
    i32 173, label %108
    i32 140, label %108
    i32 141, label %108
    i32 137, label %108
    i32 171, label %112
    i32 168, label %112
    i32 170, label %116
    i32 167, label %116
    i32 169, label %120
    i32 166, label %120
    i32 191, label %120
    i32 190, label %120
    i32 204, label %120
    i32 199, label %120
    i32 213, label %120
    i32 208, label %120
    i32 196, label %120
    i32 207, label %120
    i32 183, label %120
    i32 182, label %120
    i32 192, label %120
    i32 197, label %120
    i32 206, label %120
    i32 198, label %120
    i32 205, label %120
    i32 200, label %120
    i32 145, label %124
    i32 165, label %124
    i32 164, label %124
    i32 136, label %124
    i32 129, label %124
    i32 146, label %128
    i32 162, label %132
    i32 134, label %132
    i32 156, label %136
    i32 155, label %140
    i32 157, label %144
    i32 154, label %148
    i32 158, label %152
    i32 151, label %156
    i32 152, label %160
    i32 150, label %164
    i32 153, label %168
  ]

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %35 = call i32 @decode_andc(i32* %33, %struct.h8300_cmd* %34)
  store i32 %35, i32* %6, align 4
  br label %173

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %39 = call i32 @decode_subs(i32* %37, %struct.h8300_cmd* %38)
  store i32 %39, i32* %6, align 4
  br label %173

40:                                               ; preds = %28, %28
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %43 = call i32 @decode_r162r16(i32* %41, %struct.h8300_cmd* %42)
  store i32 %43, i32* %6, align 4
  br label %173

44:                                               ; preds = %28
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %47 = call i32 @decode_adds(i32* %45, %struct.h8300_cmd* %46)
  store i32 %47, i32* %6, align 4
  br label %173

48:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %51 = call i32 @decode_imm2r8(i32* %49, %struct.h8300_cmd* %50)
  store i32 %51, i32* %6, align 4
  br label %173

52:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %55 = call i32 @decode_r2r8(i32* %53, %struct.h8300_cmd* %54)
  store i32 %55, i32* %6, align 4
  br label %173

56:                                               ; preds = %28
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %68 [
    i32 96, label %60
    i32 97, label %60
    i32 98, label %60
    i32 112, label %64
    i32 113, label %64
    i32 114, label %64
    i32 103, label %64
    i32 117, label %64
  ]

60:                                               ; preds = %56, %56, %56
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %63 = call i32 @decode_r2ind16(i32* %61, %struct.h8300_cmd* %62)
  store i32 %63, i32* %6, align 4
  br label %69

64:                                               ; preds = %56, %56, %56, %56, %56
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %67 = call i32 @decode_imm2ind16(i32* %65, %struct.h8300_cmd* %66)
  store i32 %67, i32* %6, align 4
  br label %69

68:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %64, %60
  br label %173

70:                                               ; preds = %28
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %82 [
    i32 96, label %74
    i32 97, label %74
    i32 98, label %74
    i32 103, label %78
    i32 112, label %78
    i32 113, label %78
    i32 114, label %78
  ]

74:                                               ; preds = %70, %70, %70
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %77 = call i32 @decode_r2abs8(i32* %75, %struct.h8300_cmd* %76)
  store i32 %77, i32* %6, align 4
  br label %83

78:                                               ; preds = %70, %70, %70, %70
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %81 = call i32 @decode_imm2abs8(i32* %79, %struct.h8300_cmd* %80)
  store i32 %81, i32* %6, align 4
  br label %83

82:                                               ; preds = %70
  store i32 -1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %78, %74
  br label %173

84:                                               ; preds = %28
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %87 = call i32 @decode_imm2ind16(i32* %85, %struct.h8300_cmd* %86)
  store i32 %87, i32* %6, align 4
  br label %173

88:                                               ; preds = %28
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %91 = call i32 @decode_imm2abs8(i32* %89, %struct.h8300_cmd* %90)
  store i32 %91, i32* %6, align 4
  br label %173

92:                                               ; preds = %28
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %95 = call i32 @decode_bsr(i32* %93, %struct.h8300_cmd* %94)
  store i32 %95, i32* %6, align 4
  br label %173

96:                                               ; preds = %28
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %99 = call i32 @decode_nop(i32* %97, %struct.h8300_cmd* %98)
  store i32 %99, i32* %6, align 4
  br label %173

100:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %103 = call i32 @decode_daa(i32* %101, %struct.h8300_cmd* %102)
  store i32 %103, i32* %6, align 4
  br label %173

104:                                              ; preds = %28, %28
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %107 = call i32 @decode_r82r16(i32* %105, %struct.h8300_cmd* %106)
  store i32 %107, i32* %6, align 4
  br label %173

108:                                              ; preds = %28, %28, %28, %28
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %111 = call i32 @decode_eepmov(i32* %109, %struct.h8300_cmd* %110)
  store i32 %111, i32* %6, align 4
  br label %173

112:                                              ; preds = %28, %28
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %115 = call i32 @decode_jmp_ind(i32* %113, %struct.h8300_cmd* %114)
  store i32 %115, i32* %6, align 4
  br label %173

116:                                              ; preds = %28, %28
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %119 = call i32 @decode_jmp_abs16(i32* %117, %struct.h8300_cmd* %118)
  store i32 %119, i32* %6, align 4
  br label %173

120:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %123 = call i32 @decode_jmp_abs8(i32* %121, %struct.h8300_cmd* %122)
  store i32 %123, i32* %6, align 4
  br label %173

124:                                              ; preds = %28, %28, %28, %28, %28
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %127 = call i32 @decode_ldc(i32* %125, %struct.h8300_cmd* %126)
  store i32 %127, i32* %6, align 4
  br label %173

128:                                              ; preds = %28
  %129 = load i32*, i32** %4, align 8
  %130 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %131 = call i32 @decode_r2r8(i32* %129, %struct.h8300_cmd* %130)
  store i32 %131, i32* %6, align 4
  br label %173

132:                                              ; preds = %28, %28
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %135 = call i32 @decode_r162r16(i32* %133, %struct.h8300_cmd* %134)
  store i32 %135, i32* %6, align 4
  br label %173

136:                                              ; preds = %28
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %139 = call i32 @decode_imm162r16(i32* %137, %struct.h8300_cmd* %138)
  store i32 %139, i32* %6, align 4
  br label %173

140:                                              ; preds = %28
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %143 = call i32 @decode_ind162r16(i32* %141, %struct.h8300_cmd* %142)
  store i32 %143, i32* %6, align 4
  br label %173

144:                                              ; preds = %28
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %147 = call i32 @decode_disp162r16(i32* %145, %struct.h8300_cmd* %146)
  store i32 %147, i32* %6, align 4
  br label %173

148:                                              ; preds = %28
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %151 = call i32 @decode_indinc162r16(i32* %149, %struct.h8300_cmd* %150)
  store i32 %151, i32* %6, align 4
  br label %173

152:                                              ; preds = %28
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %155 = call i32 @decode_abs162r16(i32* %153, %struct.h8300_cmd* %154)
  store i32 %155, i32* %6, align 4
  br label %173

156:                                              ; preds = %28
  %157 = load i32*, i32** %4, align 8
  %158 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %159 = call i32 @decode_r82ind16(i32* %157, %struct.h8300_cmd* %158)
  store i32 %159, i32* %6, align 4
  br label %173

160:                                              ; preds = %28
  %161 = load i32*, i32** %4, align 8
  %162 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %163 = call i32 @decode_r82dispr16(i32* %161, %struct.h8300_cmd* %162)
  store i32 %163, i32* %6, align 4
  br label %173

164:                                              ; preds = %28
  %165 = load i32*, i32** %4, align 8
  %166 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %167 = call i32 @decode_r82rdec16(i32* %165, %struct.h8300_cmd* %166)
  store i32 %167, i32* %6, align 4
  br label %173

168:                                              ; preds = %28
  %169 = load i32*, i32** %4, align 8
  %170 = load %struct.h8300_cmd*, %struct.h8300_cmd** %5, align 8
  %171 = call i32 @decode_r82abs16(i32* %169, %struct.h8300_cmd* %170)
  store i32 %171, i32* %6, align 4
  br label %173

172:                                              ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %175

173:                                              ; preds = %168, %164, %160, %156, %152, %148, %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %83, %69, %52, %48, %44, %40, %36, %32
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %172, %26
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @decode_r2imm_short(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_abs2r_short(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_imm2r_short(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_andc(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_subs(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r162r16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_adds(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_imm2r8(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r2r8(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r2ind16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_imm2ind16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r2abs8(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_imm2abs8(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_bsr(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_nop(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_daa(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r82r16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_eepmov(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_jmp_ind(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_jmp_abs16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_jmp_abs8(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_ldc(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_imm162r16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_ind162r16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_disp162r16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_indinc162r16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_abs162r16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r82ind16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r82dispr16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r82rdec16(i32*, %struct.h8300_cmd*) #1

declare dso_local i32 @decode_r82abs16(i32*, %struct.h8300_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
