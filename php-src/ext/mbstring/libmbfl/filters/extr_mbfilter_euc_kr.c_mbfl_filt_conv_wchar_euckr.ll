; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_kr.c_mbfl_filt_conv_wchar_euckr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_kr.c_mbfl_filt_conv_wchar_euckr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@ucs_a1_uhc_table_min = common dso_local global i32 0, align 4
@ucs_a1_uhc_table_max = common dso_local global i32 0, align 4
@ucs_a1_uhc_table = common dso_local global i32* null, align 8
@ucs_a2_uhc_table_min = common dso_local global i32 0, align 4
@ucs_a2_uhc_table_max = common dso_local global i32 0, align 4
@ucs_a2_uhc_table = common dso_local global i32* null, align 8
@ucs_a3_uhc_table_min = common dso_local global i32 0, align 4
@ucs_a3_uhc_table_max = common dso_local global i32 0, align 4
@ucs_a3_uhc_table = common dso_local global i32* null, align 8
@ucs_i_uhc_table_min = common dso_local global i32 0, align 4
@ucs_i_uhc_table_max = common dso_local global i32 0, align 4
@ucs_i_uhc_table = common dso_local global i32* null, align 8
@ucs_s_uhc_table_min = common dso_local global i32 0, align 4
@ucs_s_uhc_table_max = common dso_local global i32 0, align 4
@ucs_s_uhc_table = common dso_local global i32* null, align 8
@ucs_r1_uhc_table_min = common dso_local global i32 0, align 4
@ucs_r1_uhc_table_max = common dso_local global i32 0, align 4
@ucs_r1_uhc_table = common dso_local global i32* null, align 8
@ucs_r2_uhc_table_min = common dso_local global i32 0, align 4
@ucs_r2_uhc_table_max = common dso_local global i32 0, align 4
@ucs_r2_uhc_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_KSC5601 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_euckr(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ucs_a1_uhc_table_min, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ucs_a1_uhc_table_max, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32*, i32** @ucs_a1_uhc_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ucs_a1_uhc_table_min, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %125

23:                                               ; preds = %11, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ucs_a2_uhc_table_min, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ucs_a2_uhc_table_max, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** @ucs_a2_uhc_table, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ucs_a2_uhc_table_min, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %124

39:                                               ; preds = %27, %23
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ucs_a3_uhc_table_min, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ucs_a3_uhc_table_max, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** @ucs_a3_uhc_table, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ucs_a3_uhc_table_min, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %123

55:                                               ; preds = %43, %39
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ucs_i_uhc_table_min, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ucs_i_uhc_table_max, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** @ucs_i_uhc_table, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ucs_i_uhc_table_min, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  br label %122

71:                                               ; preds = %59, %55
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @ucs_s_uhc_table_min, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @ucs_s_uhc_table_max, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32*, i32** @ucs_s_uhc_table, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @ucs_s_uhc_table_min, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  br label %121

87:                                               ; preds = %75, %71
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @ucs_r1_uhc_table_min, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @ucs_r1_uhc_table_max, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32*, i32** @ucs_r1_uhc_table, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @ucs_r1_uhc_table_min, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %7, align 4
  br label %120

103:                                              ; preds = %91, %87
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @ucs_r2_uhc_table_min, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @ucs_r2_uhc_table_max, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32*, i32** @ucs_r2_uhc_table, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @ucs_r2_uhc_table_min, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %111, %107, %103
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120, %79
  br label %122

122:                                              ; preds = %121, %63
  br label %123

123:                                              ; preds = %122, %47
  br label %124

124:                                              ; preds = %123, %31
  br label %125

125:                                              ; preds = %124, %15
  %126 = load i32, i32* %7, align 4
  %127 = ashr i32 %126, 8
  %128 = and i32 %127, 255
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, 255
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 161
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 161
  br i1 %135, label %136, label %138

136:                                              ; preds = %133, %125
  %137 = load i32, i32* %3, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i32, i32* %7, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @MBFL_WCSPLANE_KSC5601, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %141
  %154 = load i32, i32* %3, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 0, i32* %7, align 4
  br label %162

157:                                              ; preds = %153
  %158 = load i32, i32* %7, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 -1, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %157
  br label %162

162:                                              ; preds = %161, %156
  br label %163

163:                                              ; preds = %162, %138
  %164 = load i32, i32* %7, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = icmp slt i32 %167, 128
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32 (i32, i32)*, i32 (i32, i32)** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 %172(i32 %173, i32 %176)
  %178 = call i32 @CK(i32 %177)
  br label %201

179:                                              ; preds = %166
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32 (i32, i32)*, i32 (i32, i32)** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = ashr i32 %183, 8
  %185 = and i32 %184, 255
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 %182(i32 %185, i32 %188)
  %190 = call i32 @CK(i32 %189)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = and i32 %194, 255
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 %193(i32 %195, i32 %198)
  %200 = call i32 @CK(i32 %199)
  br label %201

201:                                              ; preds = %179, %169
  br label %207

202:                                              ; preds = %163
  %203 = load i32, i32* %3, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = call i32 @mbfl_filt_conv_illegal_output(i32 %203, %struct.TYPE_4__* %204)
  %206 = call i32 @CK(i32 %205)
  br label %207

207:                                              ; preds = %202, %201
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
