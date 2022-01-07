; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_cn.c_mbfl_filt_conv_wchar_euccn.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_cn.c_mbfl_filt_conv_wchar_euccn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

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
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_GB2312 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_euccn(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ucs_a1_cp936_table_min, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ucs_a1_cp936_table_max, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32*, i32** @ucs_a1_cp936_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ucs_a1_cp936_table_min, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %118

23:                                               ; preds = %11, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ucs_a2_cp936_table_min, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ucs_a2_cp936_table_max, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** @ucs_a2_cp936_table, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ucs_a2_cp936_table_min, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %117

39:                                               ; preds = %27, %23
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ucs_a3_cp936_table_min, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ucs_a3_cp936_table_max, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** @ucs_a3_cp936_table, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ucs_a3_cp936_table_min, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %116

55:                                               ; preds = %43, %39
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ucs_i_cp936_table_min, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ucs_i_cp936_table_max, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** @ucs_i_cp936_table, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ucs_i_cp936_table_min, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  br label %115

71:                                               ; preds = %59, %55
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @ucs_hff_cp936_table_min, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @ucs_hff_cp936_table_max, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 65284
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 41447, i32* %7, align 4
  br label %113

83:                                               ; preds = %79
  %84 = load i32, i32* %3, align 4
  %85 = icmp eq i32 %84, 65374
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 41387, i32* %7, align 4
  br label %112

87:                                               ; preds = %83
  %88 = load i32, i32* %3, align 4
  %89 = icmp sge i32 %88, 65281
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp sle i32 %91, 65373
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = sub nsw i32 %94, 65281
  %96 = add nsw i32 %95, 41889
  store i32 %96, i32* %7, align 4
  br label %111

97:                                               ; preds = %90, %87
  %98 = load i32, i32* %3, align 4
  %99 = icmp sge i32 %98, 65504
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = icmp sle i32 %101, 65509
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32*, i32** @ucs_hff_s_cp936_table, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sub nsw i32 %105, 65504
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %103, %100, %97
  br label %111

111:                                              ; preds = %110, %93
  br label %112

112:                                              ; preds = %111, %86
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113, %75, %71
  br label %115

115:                                              ; preds = %114, %63
  br label %116

116:                                              ; preds = %115, %47
  br label %117

117:                                              ; preds = %116, %31
  br label %118

118:                                              ; preds = %117, %15
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 8
  %121 = and i32 %120, 255
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, 255
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 161
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 161
  br i1 %128, label %129, label %131

129:                                              ; preds = %126, %118
  %130 = load i32, i32* %3, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, i32* %7, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %131
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @MBFL_WCSPLANE_GB2312, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %142, %134
  %147 = load i32, i32* %3, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %7, align 4
  br label %155

150:                                              ; preds = %146
  %151 = load i32, i32* %7, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 -1, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %150
  br label %155

155:                                              ; preds = %154, %149
  br label %156

156:                                              ; preds = %155, %131
  %157 = load i32, i32* %7, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %195

159:                                              ; preds = %156
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 128
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 %165(i32 %166, i32 %169)
  %171 = call i32 @CK(i32 %170)
  br label %194

172:                                              ; preds = %159
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32 (i32, i32)*, i32 (i32, i32)** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = ashr i32 %176, 8
  %178 = and i32 %177, 255
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 %175(i32 %178, i32 %181)
  %183 = call i32 @CK(i32 %182)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32 (i32, i32)*, i32 (i32, i32)** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = and i32 %187, 255
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 %186(i32 %188, i32 %191)
  %193 = call i32 @CK(i32 %192)
  br label %194

194:                                              ; preds = %172, %162
  br label %200

195:                                              ; preds = %156
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %198 = call i32 @mbfl_filt_conv_illegal_output(i32 %196, %struct.TYPE_4__* %197)
  %199 = call i32 @CK(i32 %198)
  br label %200

200:                                              ; preds = %195, %194
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
