; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_hz.c_mbfl_filt_conv_hz_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_hz.c_mbfl_filt_conv_hz_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@cp936_ucs_table_size = common dso_local global i32 0, align 4
@cp936_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_GB2312 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_hz_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
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
  %11 = and i32 %10, 15
  switch i32 %11, label %207 [
    i32 0, label %12
    i32 1, label %74
    i32 2, label %178
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 126
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %17, align 8
  br label %73

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 32
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 127
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %72

39:                                               ; preds = %28, %25, %20
  %40 = load i32, i32* %3, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %48(i32 %49, i32 %52)
  %54 = call i32 @CK(i32 %53)
  br label %71

55:                                               ; preds = %42, %39
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %64(i32 %65, i32 %68)
  %70 = call i32 @CK(i32 %69)
  br label %71

71:                                               ; preds = %55, %45
  br label %72

72:                                               ; preds = %71, %31
  br label %73

73:                                               ; preds = %72, %15
  br label %210

74:                                               ; preds = %2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, -16
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 32
  br i1 %83, label %84, label %137

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 127
  br i1 %86, label %87, label %137

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp sgt i32 %88, 32
  br i1 %89, label %90, label %137

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %91, 127
  br i1 %92, label %93, label %137

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 1
  %96 = mul nsw i32 %95, 192
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %96, %97
  %99 = add nsw i32 %98, 64
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @cp936_ucs_table_size, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32*, i32** @cp936_ucs_table, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  br label %113

112:                                              ; preds = %102, %93
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %112, %106
  %114 = load i32, i32* %7, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @MBFL_WCSPLANE_GB2312, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %116, %113
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32 (i32, i32)*, i32 (i32, i32)** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %130(i32 %131, i32 %134)
  %136 = call i32 @CK(i32 %135)
  br label %177

137:                                              ; preds = %90, %87, %84, %74
  %138 = load i32, i32* %3, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %3, align 4
  %142 = icmp slt i32 %141, 33
  br i1 %142, label %146, label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %3, align 4
  %145 = icmp eq i32 %144, 127
  br i1 %145, label %146, label %156

146:                                              ; preds = %143, %140
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i32 (i32, i32)*, i32 (i32, i32)** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %149(i32 %150, i32 %153)
  %155 = call i32 @CK(i32 %154)
  br label %176

156:                                              ; preds = %143
  %157 = load i32, i32* %5, align 4
  %158 = shl i32 %157, 8
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  %169 = load i32 (i32, i32)*, i32 (i32, i32)** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 %169(i32 %170, i32 %173)
  %175 = call i32 @CK(i32 %174)
  br label %176

176:                                              ; preds = %156, %146
  br label %177

177:                                              ; preds = %176, %127
  br label %210

178:                                              ; preds = %2
  %179 = load i32, i32* %3, align 4
  %180 = icmp eq i32 %179, 125
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  br label %206

184:                                              ; preds = %178
  %185 = load i32, i32* %3, align 4
  %186 = icmp eq i32 %185, 123
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i32 16, i32* %189, align 8
  br label %205

190:                                              ; preds = %184
  %191 = load i32, i32* %3, align 4
  %192 = icmp eq i32 %191, 126
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 3
  %198 = load i32 (i32, i32)*, i32 (i32, i32)** %197, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %198(i32 126, i32 %201)
  %203 = call i32 @CK(i32 %202)
  br label %204

204:                                              ; preds = %193, %190
  br label %205

205:                                              ; preds = %204, %187
  br label %206

206:                                              ; preds = %205, %181
  br label %210

207:                                              ; preds = %2
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %206, %177, %73
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
