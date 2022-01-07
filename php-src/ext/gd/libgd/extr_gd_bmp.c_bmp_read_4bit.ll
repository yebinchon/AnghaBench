; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_4bit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i64, double, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@BMP_PALETTE_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_12__*, %struct.TYPE_13__*)* @bmp_read_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_read_4bit(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 129
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %222

26:                                               ; preds = %20, %4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i32 16, i32* %33, align 4
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  store i32 1, i32* %5, align 4
  br label %222

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BMP_PALETTE_4, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @bmp_read_palette(%struct.TYPE_11__* %47, i32 %48, i32 %51, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %222

61:                                               ; preds = %46
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @gdTell(i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @gdSeek(i32 %74, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %222

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %61
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load double, double* %84, align 8
  %86 = fmul double 5.000000e-01, %85
  %87 = call i64 @ceil(double %86)
  %88 = trunc i64 %87 to i32
  %89 = srem i32 %88, 4
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 4, %93
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %92, %82
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %220 [
    i32 129, label %99
    i32 128, label %212
  ]

99:                                               ; preds = %95
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %208, %99
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %211

106:                                              ; preds = %100
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %12, align 4
  br label %120

113:                                              ; preds = %106
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %113, %111
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %190, %120
  %122 = load i32, i32* %11, align 4
  %123 = sitofp i32 %122 to double
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load double, double* %125, align 8
  %127 = fcmp olt double %123, %126
  br i1 %127, label %128, label %193

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @gdGetByte(i32* %15, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  store i32 1, i32* %5, align 4
  br label %222

133:                                              ; preds = %128
  %134 = load i32, i32* %15, align 4
  %135 = ashr i32 %134, 4
  %136 = and i32 %135, 15
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %133
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %133
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = sitofp i32 %158 to double
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load double, double* %161, align 8
  %163 = fcmp oge double %159, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  br label %193

165:                                              ; preds = %152
  %166 = load i32, i32* %15, align 4
  %167 = and i32 %166, 15
  store i32 %167, i32* %13, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %165
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %176, %165
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %184, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 2
  store i32 %192, i32* %11, align 4
  br label %121

193:                                              ; preds = %164, %121
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %204, %193
  %196 = load i32, i32* %11, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @gdGetByte(i32* %13, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  store i32 1, i32* %5, align 4
  br label %222

203:                                              ; preds = %198
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %11, align 4
  br label %195

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %100

211:                                              ; preds = %100
  br label %221

212:                                              ; preds = %95
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %216 = call i32 @bmp_read_rle(%struct.TYPE_11__* %213, i32 %214, %struct.TYPE_12__* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  store i32 1, i32* %5, align 4
  br label %222

219:                                              ; preds = %212
  br label %221

220:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  br label %222

221:                                              ; preds = %219, %211
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %221, %220, %218, %202, %132, %80, %60, %44, %25
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i64 @bmp_read_palette(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @gdTell(i32) #1

declare dso_local i32 @gdSeek(i32, i64) #1

declare dso_local i64 @ceil(double) #1

declare dso_local i32 @gdGetByte(i32*, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @bmp_read_rle(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
