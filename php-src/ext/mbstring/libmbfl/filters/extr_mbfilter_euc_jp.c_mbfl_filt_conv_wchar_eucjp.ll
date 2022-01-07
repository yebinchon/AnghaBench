; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp.c_mbfl_filt_conv_wchar_eucjp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp.c_mbfl_filt_conv_wchar_eucjp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@ucs_a1_jis_table_min = common dso_local global i32 0, align 4
@ucs_a1_jis_table_max = common dso_local global i32 0, align 4
@ucs_a1_jis_table = common dso_local global i32* null, align 8
@ucs_a2_jis_table_min = common dso_local global i32 0, align 4
@ucs_a2_jis_table_max = common dso_local global i32 0, align 4
@ucs_a2_jis_table = common dso_local global i32* null, align 8
@ucs_i_jis_table_min = common dso_local global i32 0, align 4
@ucs_i_jis_table_max = common dso_local global i32 0, align 4
@ucs_i_jis_table = common dso_local global i32* null, align 8
@ucs_r_jis_table_min = common dso_local global i32 0, align 4
@ucs_r_jis_table_max = common dso_local global i32 0, align 4
@ucs_r_jis_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_eucjp(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** @ucs_a1_jis_table, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %73

22:                                               ; preds = %10, %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** @ucs_a2_jis_table, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %72

38:                                               ; preds = %26, %22
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ucs_i_jis_table_min, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ucs_i_jis_table_max, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** @ucs_i_jis_table, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ucs_i_jis_table_min, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %71

54:                                               ; preds = %42, %38
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @ucs_r_jis_table_min, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @ucs_r_jis_table_max, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32*, i32** @ucs_r_jis_table, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @ucs_r_jis_table_min, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %62, %58, %54
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %30
  br label %73

73:                                               ; preds = %72, %14
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %144

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %6, align 4
  br label %134

88:                                               ; preds = %76
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 32896
  store i32 %97, i32* %6, align 4
  br label %133

98:                                               ; preds = %88
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 65340
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 8512, i32* %6, align 4
  br label %132

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 65374
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 8513, i32* %6, align 4
  br label %131

106:                                              ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 8741
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 8514, i32* %6, align 4
  br label %130

110:                                              ; preds = %106
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 %111, 65293
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 8541, i32* %6, align 4
  br label %129

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = icmp eq i32 %115, 65504
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 8561, i32* %6, align 4
  br label %128

118:                                              ; preds = %114
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 65505
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 8562, i32* %6, align 4
  br label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = icmp eq i32 %123, 65506
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 8780, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %122
  br label %127

127:                                              ; preds = %126, %121
  br label %128

128:                                              ; preds = %127, %117
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %109
  br label %131

131:                                              ; preds = %130, %105
  br label %132

132:                                              ; preds = %131, %101
  br label %133

133:                                              ; preds = %132, %92
  br label %134

134:                                              ; preds = %133, %84
  %135 = load i32, i32* %3, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %143

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 -1, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %138
  br label %143

143:                                              ; preds = %142, %137
  br label %144

144:                                              ; preds = %143, %73
  %145 = load i32, i32* %6, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %243

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %148, 128
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32 (i32, i32)*, i32 (i32, i32)** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 %153(i32 %154, i32 %157)
  %159 = call i32 @CK(i32 %158)
  br label %242

160:                                              ; preds = %147
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 256
  br i1 %162, label %163, label %181

163:                                              ; preds = %160
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32 (i32, i32)*, i32 (i32, i32)** %165, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 %166(i32 142, i32 %169)
  %171 = call i32 @CK(i32 %170)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32 (i32, i32)*, i32 (i32, i32)** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 %174(i32 %175, i32 %178)
  %180 = call i32 @CK(i32 %179)
  br label %241

181:                                              ; preds = %160
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 32896
  br i1 %183, label %184, label %208

184:                                              ; preds = %181
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32 (i32, i32)*, i32 (i32, i32)** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = ashr i32 %188, 8
  %190 = and i32 %189, 255
  %191 = or i32 %190, 128
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %187(i32 %191, i32 %194)
  %196 = call i32 @CK(i32 %195)
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32 (i32, i32)*, i32 (i32, i32)** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = and i32 %200, 255
  %202 = or i32 %201, 128
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 %199(i32 %202, i32 %205)
  %207 = call i32 @CK(i32 %206)
  br label %240

208:                                              ; preds = %181
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32 (i32, i32)*, i32 (i32, i32)** %210, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 %211(i32 143, i32 %214)
  %216 = call i32 @CK(i32 %215)
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32 (i32, i32)*, i32 (i32, i32)** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = ashr i32 %220, 8
  %222 = and i32 %221, 255
  %223 = or i32 %222, 128
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 %219(i32 %223, i32 %226)
  %228 = call i32 @CK(i32 %227)
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i32 (i32, i32)*, i32 (i32, i32)** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = and i32 %232, 255
  %234 = or i32 %233, 128
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 %231(i32 %234, i32 %237)
  %239 = call i32 @CK(i32 %238)
  br label %240

240:                                              ; preds = %208, %184
  br label %241

241:                                              ; preds = %240, %163
  br label %242

242:                                              ; preds = %241, %150
  br label %248

243:                                              ; preds = %144
  %244 = load i32, i32* %3, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %246 = call i32 @mbfl_filt_conv_illegal_output(i32 %244, %struct.TYPE_4__* %245)
  %247 = call i32 @CK(i32 %246)
  br label %248

248:                                              ; preds = %243, %242
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
