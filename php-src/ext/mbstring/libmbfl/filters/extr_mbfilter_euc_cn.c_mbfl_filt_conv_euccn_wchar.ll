; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_cn.c_mbfl_filt_conv_euccn_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_cn.c_mbfl_filt_conv_euccn_wchar.c"
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
define dso_local i32 @mbfl_filt_conv_euccn_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %158 [
    i32 0, label %10
    i32 1, label %56
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %19(i32 %20, i32 %23)
  %25 = call i32 @CK(i32 %24)
  br label %55

26:                                               ; preds = %13, %10
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 160
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 255
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %54

38:                                               ; preds = %29, %26
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %47(i32 %48, i32 %51)
  %53 = call i32 @CK(i32 %52)
  br label %54

54:                                               ; preds = %38, %32
  br label %55

55:                                               ; preds = %54, %16
  br label %161

56:                                               ; preds = %2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 160
  br i1 %63, label %64, label %117

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 255
  br i1 %66, label %67, label %117

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = icmp sgt i32 %68, 160
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %71, 255
  br i1 %72, label %73, label %117

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %74, 129
  %76 = mul nsw i32 %75, 192
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %77, 64
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @cp936_ucs_table_size, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32*, i32** @cp936_ucs_table, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  br label %93

92:                                               ; preds = %82, %73
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %86
  %94 = load i32, i32* %6, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = shl i32 %97, 8
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @MBFL_WCSPLANE_GB2312, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %96, %93
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32 (i32, i32)*, i32 (i32, i32)** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %110(i32 %111, i32 %114)
  %116 = call i32 @CK(i32 %115)
  br label %157

117:                                              ; preds = %70, %67, %64, %56
  %118 = load i32, i32* %3, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %3, align 4
  %122 = icmp slt i32 %121, 33
  br i1 %122, label %126, label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %3, align 4
  %125 = icmp eq i32 %124, 127
  br i1 %125, label %126, label %136

126:                                              ; preds = %123, %120
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = load i32 (i32, i32)*, i32 (i32, i32)** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %129(i32 %130, i32 %133)
  %135 = call i32 @CK(i32 %134)
  br label %156

136:                                              ; preds = %123
  %137 = load i32, i32* %5, align 4
  %138 = shl i32 %137, 8
  %139 = load i32, i32* %3, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %142 = load i32, i32* %6, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i32 (i32, i32)*, i32 (i32, i32)** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %149(i32 %150, i32 %153)
  %155 = call i32 @CK(i32 %154)
  br label %156

156:                                              ; preds = %136, %126
  br label %157

157:                                              ; preds = %156, %107
  br label %161

158:                                              ; preds = %2
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %157, %55
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
