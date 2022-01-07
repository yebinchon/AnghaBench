; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uhc.c_mbfl_filt_conv_uhc_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uhc.c_mbfl_filt_conv_uhc_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@uhc1_ucs_table_size = common dso_local global i32 0, align 4
@uhc1_ucs_table = common dso_local global i32* null, align 8
@uhc2_ucs_table_size = common dso_local global i32 0, align 4
@uhc2_ucs_table = common dso_local global i32* null, align 8
@uhc3_ucs_table_size = common dso_local global i32 0, align 4
@uhc3_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_UHC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_uhc_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %216 [
    i32 0, label %11
    i32 1, label %60
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(i32 %21, i32 %24)
  %26 = call i32 @CK(i32 %25)
  br label %59

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 128
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 255
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 201
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %58

42:                                               ; preds = %33, %30, %27
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %51(i32 %52, i32 %55)
  %57 = call i32 @CK(i32 %56)
  br label %58

58:                                               ; preds = %42, %36
  br label %59

59:                                               ; preds = %58, %17
  br label %219

60:                                               ; preds = %2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp sge i32 %66, 129
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = icmp sle i32 %69, 160
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 129
  %74 = mul nsw i32 %73, 190
  %75 = load i32, i32* %3, align 4
  %76 = sub nsw i32 %75, 65
  %77 = add nsw i32 %74, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @uhc1_ucs_table_size, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  %85 = load i32*, i32** @uhc1_ucs_table, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  br label %91

90:                                               ; preds = %80, %71
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %84
  br label %148

92:                                               ; preds = %68, %60
  %93 = load i32, i32* %5, align 4
  %94 = icmp sge i32 %93, 161
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = icmp sle i32 %96, 198
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %99, 161
  %101 = mul nsw i32 %100, 190
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 %102, 65
  %104 = add nsw i32 %101, %103
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @uhc2_ucs_table_size, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  store i32 2, i32* %7, align 4
  %112 = load i32*, i32** @uhc2_ucs_table, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %6, align 4
  br label %118

117:                                              ; preds = %107, %98
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %111
  br label %147

119:                                              ; preds = %95, %92
  %120 = load i32, i32* %5, align 4
  %121 = icmp sge i32 %120, 199
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = icmp sle i32 %123, 254
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 %126, 199
  %128 = mul nsw i32 %127, 94
  %129 = load i32, i32* %3, align 4
  %130 = sub nsw i32 %129, 161
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %125
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @uhc3_ucs_table_size, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  store i32 3, i32* %7, align 4
  %139 = load i32*, i32** @uhc3_ucs_table, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %6, align 4
  br label %145

144:                                              ; preds = %134, %125
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %138
  br label %146

146:                                              ; preds = %145, %122, %119
  br label %147

147:                                              ; preds = %146, %118
  br label %148

148:                                              ; preds = %147, %91
  %149 = load i32, i32* %7, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %148
  %152 = load i32, i32* %6, align 4
  %153 = icmp sle i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load i32, i32* %5, align 4
  %156 = shl i32 %155, 8
  %157 = load i32, i32* %3, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %160 = load i32, i32* %6, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* @MBFL_WCSPLANE_UHC, align 4
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %154, %151
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32 (i32, i32)*, i32 (i32, i32)** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 %168(i32 %169, i32 %172)
  %174 = call i32 @CK(i32 %173)
  br label %215

175:                                              ; preds = %148
  %176 = load i32, i32* %3, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %3, align 4
  %180 = icmp slt i32 %179, 33
  br i1 %180, label %184, label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %3, align 4
  %183 = icmp eq i32 %182, 127
  br i1 %183, label %184, label %194

184:                                              ; preds = %181, %178
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32 (i32, i32)*, i32 (i32, i32)** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 %187(i32 %188, i32 %191)
  %193 = call i32 @CK(i32 %192)
  br label %214

194:                                              ; preds = %181
  %195 = load i32, i32* %5, align 4
  %196 = shl i32 %195, 8
  %197 = load i32, i32* %3, align 4
  %198 = or i32 %196, %197
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %200 = load i32, i32* %6, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %6, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32 (i32, i32)*, i32 (i32, i32)** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %207(i32 %208, i32 %211)
  %213 = call i32 @CK(i32 %212)
  br label %214

214:                                              ; preds = %194, %184
  br label %215

215:                                              ; preds = %214, %165
  br label %219

216:                                              ; preds = %2
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %216, %215, %59
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
