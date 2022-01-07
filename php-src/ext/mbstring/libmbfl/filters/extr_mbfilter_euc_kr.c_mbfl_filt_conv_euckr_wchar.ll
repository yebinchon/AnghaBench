; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_kr.c_mbfl_filt_conv_euckr_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_kr.c_mbfl_filt_conv_euckr_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@uhc2_ucs_table_size = common dso_local global i32 0, align 4
@uhc2_ucs_table = common dso_local global i32* null, align 8
@uhc3_ucs_table_size = common dso_local global i32 0, align 4
@uhc3_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_KSC5601 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_euckr_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %202 [
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
  %29 = icmp sgt i32 %28, 160
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
  br label %205

60:                                               ; preds = %2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp sge i32 %66, 161
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = icmp sle i32 %69, 198
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %83

72:                                               ; preds = %68, %60
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 199
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp sle i32 %76, 254
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 201
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 2, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %78, %75, %72
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %161

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = icmp sge i32 %87, 161
  br i1 %88, label %89, label %161

89:                                               ; preds = %86
  %90 = load i32, i32* %3, align 4
  %91 = icmp sle i32 %90, 254
  br i1 %91, label %92, label %161

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %116

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 161
  %98 = mul nsw i32 %97, 190
  %99 = load i32, i32* %3, align 4
  %100 = sub nsw i32 %99, 65
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @uhc2_ucs_table_size, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32*, i32** @uhc2_ucs_table, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %6, align 4
  br label %115

114:                                              ; preds = %104, %95
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %108
  br label %137

116:                                              ; preds = %92
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %117, 199
  %119 = mul nsw i32 %118, 94
  %120 = load i32, i32* %3, align 4
  %121 = sub nsw i32 %120, 161
  %122 = add nsw i32 %119, %121
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %116
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @uhc3_ucs_table_size, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32*, i32** @uhc3_ucs_table, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %6, align 4
  br label %136

135:                                              ; preds = %125, %116
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %135, %129
  br label %137

137:                                              ; preds = %136, %115
  %138 = load i32, i32* %6, align 4
  %139 = icmp sle i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load i32, i32* %5, align 4
  %142 = shl i32 %141, 8
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* @MBFL_WCSPLANE_KSC5601, align 4
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %140, %137
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32 (i32, i32)*, i32 (i32, i32)** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %154(i32 %155, i32 %158)
  %160 = call i32 @CK(i32 %159)
  br label %201

161:                                              ; preds = %89, %86, %83
  %162 = load i32, i32* %3, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = icmp slt i32 %165, 33
  br i1 %166, label %170, label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %3, align 4
  %169 = icmp eq i32 %168, 127
  br i1 %169, label %170, label %180

170:                                              ; preds = %167, %164
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = load i32 (i32, i32)*, i32 (i32, i32)** %172, align 8
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 %173(i32 %174, i32 %177)
  %179 = call i32 @CK(i32 %178)
  br label %200

180:                                              ; preds = %167
  %181 = load i32, i32* %5, align 4
  %182 = shl i32 %181, 8
  %183 = load i32, i32* %3, align 4
  %184 = or i32 %182, %183
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %186 = load i32, i32* %6, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %189 = load i32, i32* %6, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %6, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 %193(i32 %194, i32 %197)
  %199 = call i32 @CK(i32 %198)
  br label %200

200:                                              ; preds = %180, %170
  br label %201

201:                                              ; preds = %200, %151
  br label %205

202:                                              ; preds = %2
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %201, %59
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
