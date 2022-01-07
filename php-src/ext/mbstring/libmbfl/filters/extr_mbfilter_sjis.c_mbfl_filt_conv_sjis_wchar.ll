; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis.c_mbfl_filt_conv_sjis_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis.c_mbfl_filt_conv_sjis_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_sjis_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %201 [
    i32 0, label %12
    i32 1, label %79
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i32 %22, i32 %25)
  %27 = call i32 @CK(i32 %26)
  br label %78

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 160
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 224
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 65216, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %37(i32 %39, i32 %42)
  %44 = call i32 @CK(i32 %43)
  br label %77

45:                                               ; preds = %31, %28
  %46 = load i32, i32* %3, align 4
  %47 = icmp sgt i32 %46, 128
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 253
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 160
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %76

60:                                               ; preds = %51, %48, %45
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(i32 %70, i32 %73)
  %75 = call i32 @CK(i32 %74)
  br label %76

76:                                               ; preds = %60, %54
  br label %77

77:                                               ; preds = %76, %34
  br label %78

78:                                               ; preds = %77, %18
  br label %204

79:                                               ; preds = %2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp sge i32 %85, 64
  br i1 %86, label %87, label %160

87:                                               ; preds = %79
  %88 = load i32, i32* %3, align 4
  %89 = icmp sle i32 %88, 252
  br i1 %89, label %90, label %160

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 127
  br i1 %92, label %93, label %160

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @SJIS_DECODE(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 33
  %101 = mul nsw i32 %100, 94
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 33
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %93
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32*, i32** @jisx0208_ucs_table, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %8, align 4
  br label %118

117:                                              ; preds = %107, %93
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %111
  %119 = load i32, i32* %8, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 127
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 127
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32, i32* %6, align 4
  %129 = shl i32 %128, 8
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %149

138:                                              ; preds = %124, %121
  %139 = load i32, i32* %5, align 4
  %140 = shl i32 %139, 8
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %138, %127
  br label %150

150:                                              ; preds = %149, %118
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32 (i32, i32)*, i32 (i32, i32)** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 %153(i32 %154, i32 %157)
  %159 = call i32 @CK(i32 %158)
  br label %200

160:                                              ; preds = %90, %87, %79
  %161 = load i32, i32* %3, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %3, align 4
  %165 = icmp slt i32 %164, 33
  br i1 %165, label %169, label %166

166:                                              ; preds = %163, %160
  %167 = load i32, i32* %3, align 4
  %168 = icmp eq i32 %167, 127
  br i1 %168, label %169, label %179

169:                                              ; preds = %166, %163
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32 (i32, i32)*, i32 (i32, i32)** %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 %172(i32 %173, i32 %176)
  %178 = call i32 @CK(i32 %177)
  br label %199

179:                                              ; preds = %166
  %180 = load i32, i32* %5, align 4
  %181 = shl i32 %180, 8
  %182 = load i32, i32* %3, align 4
  %183 = or i32 %181, %182
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %185 = load i32, i32* %8, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 3
  %192 = load i32 (i32, i32)*, i32 (i32, i32)** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 %192(i32 %193, i32 %196)
  %198 = call i32 @CK(i32 %197)
  br label %199

199:                                              ; preds = %179, %169
  br label %200

200:                                              ; preds = %199, %150
  br label %204

201:                                              ; preds = %2
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %200, %78
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @SJIS_DECODE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
