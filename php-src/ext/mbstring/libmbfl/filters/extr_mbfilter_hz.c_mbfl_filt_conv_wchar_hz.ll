; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_hz.c_mbfl_filt_conv_wchar_hz.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_hz.c_mbfl_filt_conv_wchar_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (i32, i32)* }

@ucs_a1_cp936_table_min = common dso_local global i32 0, align 4
@ucs_a1_cp936_table_max = common dso_local global i32 0, align 4
@ucs_a1_cp936_table = common dso_local global i32* null, align 8
@ucs_a2_cp936_table_min = common dso_local global i32 0, align 4
@ucs_a2_cp936_table_max = common dso_local global i32 0, align 4
@ucs_a2_cp936_table = common dso_local global i32* null, align 8
@ucs_a3_cp936_table_min = common dso_local global i32 0, align 4
@ucs_a3_cp936_table_max = common dso_local global i32 0, align 4
@ucs_a3_cp936_table = common dso_local global i32* null, align 8
@ucs_i_cp936_table_min = common dso_local global i32 0, align 4
@ucs_i_cp936_table_max = common dso_local global i32 0, align 4
@ucs_i_cp936_table = common dso_local global i32* null, align 8
@ucs_hff_cp936_table_min = common dso_local global i32 0, align 4
@ucs_hff_cp936_table_max = common dso_local global i32 0, align 4
@ucs_hff_s_cp936_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_hz(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ucs_a1_cp936_table_min, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ucs_a1_cp936_table_max, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32*, i32** @ucs_a1_cp936_table, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ucs_a1_cp936_table_min, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %116

21:                                               ; preds = %9, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ucs_a2_cp936_table_min, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ucs_a2_cp936_table_max, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32*, i32** @ucs_a2_cp936_table, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @ucs_a2_cp936_table_min, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %115

37:                                               ; preds = %25, %21
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ucs_a3_cp936_table_min, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ucs_a3_cp936_table_max, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32*, i32** @ucs_a3_cp936_table, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ucs_a3_cp936_table_min, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %114

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @ucs_i_cp936_table_min, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @ucs_i_cp936_table_max, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32*, i32** @ucs_i_cp936_table, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @ucs_i_cp936_table_min, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %113

69:                                               ; preds = %57, %53
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @ucs_hff_cp936_table_min, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %69
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @ucs_hff_cp936_table_max, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = icmp eq i32 %78, 65284
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 41447, i32* %5, align 4
  br label %111

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = icmp eq i32 %82, 65374
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 41387, i32* %5, align 4
  br label %110

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = icmp sge i32 %86, 65281
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* %3, align 4
  %90 = icmp sle i32 %89, 65373
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = sub nsw i32 %92, 65281
  %94 = add nsw i32 %93, 41889
  store i32 %94, i32* %5, align 4
  br label %109

95:                                               ; preds = %88, %85
  %96 = load i32, i32* %3, align 4
  %97 = icmp sge i32 %96, 65504
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = icmp sle i32 %99, 65509
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32*, i32** @ucs_hff_s_cp936_table, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sub nsw i32 %103, 65504
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %101, %98, %95
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %84
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %73, %69
  br label %113

113:                                              ; preds = %112, %61
  br label %114

114:                                              ; preds = %113, %45
  br label %115

115:                                              ; preds = %114, %29
  br label %116

116:                                              ; preds = %115, %13
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 32768
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 32896
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32, i32* %5, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load i32, i32* %3, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %135

130:                                              ; preds = %126
  %131 = load i32, i32* %5, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 -1, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %130
  br label %135

135:                                              ; preds = %134, %129
  br label %147

136:                                              ; preds = %123
  %137 = load i32, i32* %5, align 4
  %138 = icmp sge i32 %137, 128
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = icmp slt i32 %140, 8481
  br i1 %141, label %145, label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %5, align 4
  %144 = icmp sgt i32 %143, 32896
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %139
  store i32 -1, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %142
  br label %147

147:                                              ; preds = %146, %135
  %148 = load i32, i32* %5, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %248

150:                                              ; preds = %147
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 128
  br i1 %152, label %153, label %200

153:                                              ; preds = %150
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 65280
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32 (i32, i32)*, i32 (i32, i32)** %161, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 %162(i32 126, i32 %165)
  %167 = call i32 @CK(i32 %166)
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32 (i32, i32)*, i32 (i32, i32)** %169, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 %170(i32 125, i32 %173)
  %175 = call i32 @CK(i32 %174)
  br label %176

176:                                              ; preds = %159, %153
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load i32, i32* %5, align 4
  %180 = icmp eq i32 %179, 126
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32 (i32, i32)*, i32 (i32, i32)** %183, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 %184(i32 126, i32 %187)
  %189 = call i32 @CK(i32 %188)
  br label %190

190:                                              ; preds = %181, %176
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 %193(i32 %194, i32 %197)
  %199 = call i32 @CK(i32 %198)
  br label %247

200:                                              ; preds = %150
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, 65280
  %205 = icmp ne i32 %204, 512
  br i1 %205, label %206, label %223

206:                                              ; preds = %200
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32 (i32, i32)*, i32 (i32, i32)** %208, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 %209(i32 126, i32 %212)
  %214 = call i32 @CK(i32 %213)
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32 (i32, i32)*, i32 (i32, i32)** %216, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 %217(i32 123, i32 %220)
  %222 = call i32 @CK(i32 %221)
  br label %223

223:                                              ; preds = %206, %200
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  store i32 512, i32* %225, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load i32 (i32, i32)*, i32 (i32, i32)** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = ashr i32 %229, 8
  %231 = and i32 %230, 127
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 %228(i32 %231, i32 %234)
  %236 = call i32 @CK(i32 %235)
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32 (i32, i32)*, i32 (i32, i32)** %238, align 8
  %240 = load i32, i32* %5, align 4
  %241 = and i32 %240, 127
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 %239(i32 %241, i32 %244)
  %246 = call i32 @CK(i32 %245)
  br label %247

247:                                              ; preds = %223, %190
  br label %253

248:                                              ; preds = %147
  %249 = load i32, i32* %3, align 4
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %251 = call i32 @mbfl_filt_conv_illegal_output(i32 %249, %struct.TYPE_4__* %250)
  %252 = call i32 @CK(i32 %251)
  br label %253

253:                                              ; preds = %248, %247
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
