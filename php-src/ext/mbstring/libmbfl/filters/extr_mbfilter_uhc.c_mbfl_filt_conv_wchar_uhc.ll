; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uhc.c_mbfl_filt_conv_wchar_uhc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uhc.c_mbfl_filt_conv_wchar_uhc.c"
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
@MBFL_WCSPLANE_UHC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_uhc(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ucs_a1_uhc_table_min, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ucs_a1_uhc_table_max, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32*, i32** @ucs_a1_uhc_table, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ucs_a1_uhc_table_min, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %124

22:                                               ; preds = %10, %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ucs_a2_uhc_table_min, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ucs_a2_uhc_table_max, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** @ucs_a2_uhc_table, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ucs_a2_uhc_table_min, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %123

38:                                               ; preds = %26, %22
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ucs_a3_uhc_table_min, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ucs_a3_uhc_table_max, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** @ucs_a3_uhc_table, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ucs_a3_uhc_table_min, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %122

54:                                               ; preds = %42, %38
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @ucs_i_uhc_table_min, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @ucs_i_uhc_table_max, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32*, i32** @ucs_i_uhc_table, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @ucs_i_uhc_table_min, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  br label %121

70:                                               ; preds = %58, %54
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @ucs_s_uhc_table_min, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @ucs_s_uhc_table_max, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32*, i32** @ucs_s_uhc_table, align 8
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @ucs_s_uhc_table_min, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %6, align 4
  br label %120

86:                                               ; preds = %74, %70
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @ucs_r1_uhc_table_min, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @ucs_r1_uhc_table_max, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32*, i32** @ucs_r1_uhc_table, align 8
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @ucs_r1_uhc_table_min, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %6, align 4
  br label %119

102:                                              ; preds = %90, %86
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @ucs_r2_uhc_table_min, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @ucs_r2_uhc_table_max, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i32*, i32** @ucs_r2_uhc_table, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @ucs_r2_uhc_table_min, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %110, %106, %102
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %78
  br label %121

121:                                              ; preds = %120, %62
  br label %122

122:                                              ; preds = %121, %46
  br label %123

123:                                              ; preds = %122, %30
  br label %124

124:                                              ; preds = %123, %14
  %125 = load i32, i32* %6, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %124
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @MBFL_WCSPLANE_UHC, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %138 = and i32 %136, %137
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %135, %127
  %140 = load i32, i32* %3, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 0, i32* %6, align 4
  br label %148

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 -1, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %143
  br label %148

148:                                              ; preds = %147, %142
  br label %149

149:                                              ; preds = %148, %124
  %150 = load i32, i32* %6, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %188

152:                                              ; preds = %149
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 128
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32 (i32, i32)*, i32 (i32, i32)** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 %158(i32 %159, i32 %162)
  %164 = call i32 @CK(i32 %163)
  br label %187

165:                                              ; preds = %152
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32 (i32, i32)*, i32 (i32, i32)** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = ashr i32 %169, 8
  %171 = and i32 %170, 255
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 %168(i32 %171, i32 %174)
  %176 = call i32 @CK(i32 %175)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32 (i32, i32)*, i32 (i32, i32)** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = and i32 %180, 255
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 %179(i32 %181, i32 %184)
  %186 = call i32 @CK(i32 %185)
  br label %187

187:                                              ; preds = %165, %155
  br label %193

188:                                              ; preds = %149
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = call i32 @mbfl_filt_conv_illegal_output(i32 %189, %struct.TYPE_4__* %190)
  %192 = call i32 @CK(i32 %191)
  br label %193

193:                                              ; preds = %188, %187
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
