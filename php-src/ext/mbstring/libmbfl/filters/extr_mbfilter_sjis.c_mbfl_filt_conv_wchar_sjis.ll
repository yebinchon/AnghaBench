; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis.c_mbfl_filt_conv_wchar_sjis.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis.c_mbfl_filt_conv_wchar_sjis.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_sjis(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32*, i32** @ucs_a1_jis_table, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %75

24:                                               ; preds = %12, %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** @ucs_a2_jis_table, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %74

40:                                               ; preds = %28, %24
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @ucs_i_jis_table_min, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ucs_i_jis_table_max, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32*, i32** @ucs_i_jis_table, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ucs_i_jis_table_min, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %73

56:                                               ; preds = %44, %40
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ucs_r_jis_table_min, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ucs_r_jis_table_max, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** @ucs_r_jis_table, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @ucs_r_jis_table_min, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %64, %60, %56
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %32
  br label %75

75:                                               ; preds = %74, %16
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %145

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %7, align 4
  br label %135

90:                                               ; preds = %78
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %91, 165
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 8559, i32* %7, align 4
  br label %134

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 8254
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 8497, i32* %7, align 4
  br label %133

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 65340
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 8512, i32* %7, align 4
  br label %132

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 65374
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 8513, i32* %7, align 4
  br label %131

106:                                              ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 8741
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 8514, i32* %7, align 4
  br label %130

110:                                              ; preds = %106
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 %111, 65293
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 8541, i32* %7, align 4
  br label %129

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = icmp eq i32 %115, 65504
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 8561, i32* %7, align 4
  br label %128

118:                                              ; preds = %114
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 65505
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 8562, i32* %7, align 4
  br label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = icmp eq i32 %123, 65506
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 8780, i32* %7, align 4
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

133:                                              ; preds = %132, %97
  br label %134

134:                                              ; preds = %133, %93
  br label %135

135:                                              ; preds = %134, %86
  %136 = load i32, i32* %3, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %144

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 -1, i32* %7, align 4
  br label %143

143:                                              ; preds = %142, %139
  br label %144

144:                                              ; preds = %143, %138
  br label %150

145:                                              ; preds = %75
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %146, 32896
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 -1, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %145
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32, i32* %7, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %196

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 256
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32 (i32, i32)*, i32 (i32, i32)** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 %159(i32 %160, i32 %163)
  %165 = call i32 @CK(i32 %164)
  br label %195

166:                                              ; preds = %153
  %167 = load i32, i32* %7, align 4
  %168 = ashr i32 %167, 8
  %169 = and i32 %168, 255
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 255
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @SJIS_ENCODE(i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32 (i32, i32)*, i32 (i32, i32)** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 %179(i32 %180, i32 %183)
  %185 = call i32 @CK(i32 %184)
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32 (i32, i32)*, i32 (i32, i32)** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 %188(i32 %189, i32 %192)
  %194 = call i32 @CK(i32 %193)
  br label %195

195:                                              ; preds = %166, %156
  br label %201

196:                                              ; preds = %150
  %197 = load i32, i32* %3, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = call i32 @mbfl_filt_conv_illegal_output(i32 %197, %struct.TYPE_4__* %198)
  %200 = call i32 @CK(i32 %199)
  br label %201

201:                                              ; preds = %196, %195
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @SJIS_ENCODE(i32, i32, i32, i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
