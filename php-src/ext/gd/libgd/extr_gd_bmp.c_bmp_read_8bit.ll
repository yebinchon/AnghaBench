; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_8bit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@BMP_PALETTE_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_12__*, %struct.TYPE_13__*)* @bmp_read_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_read_8bit(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__* %2, %struct.TYPE_13__* %3) #0 {
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
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 129
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %183

25:                                               ; preds = %19, %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32 256, i32* %32, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 256
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33
  store i32 1, i32* %5, align 4
  br label %183

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BMP_PALETTE_4, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @bmp_read_palette(%struct.TYPE_11__* %46, i32 %47, i32 %50, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %183

60:                                               ; preds = %45
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @gdTell(i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @gdSeek(i32 %73, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %183

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %60
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 1, %84
  %86 = srem i32 %85, 4
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %14, align 4
  %91 = sub nsw i32 4, %90
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %89, %81
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %181 [
    i32 129, label %96
    i32 128, label %173
  ]

96:                                               ; preds = %92
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %169, %96
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %172

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %12, align 4
  br label %117

110:                                              ; preds = %103
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %110, %108
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %151, %117
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @gdGetByte(i32* %13, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store i32 1, i32* %5, align 4
  br label %183

129:                                              ; preds = %124
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %129
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %129
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %146, i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %118

154:                                              ; preds = %118
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %165, %154
  %157 = load i32, i32* %11, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @gdGetByte(i32* %13, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  store i32 1, i32* %5, align 4
  br label %183

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %11, align 4
  br label %156

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %97

172:                                              ; preds = %97
  br label %182

173:                                              ; preds = %92
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %177 = call i32 @bmp_read_rle(%struct.TYPE_11__* %174, i32 %175, %struct.TYPE_12__* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 1, i32* %5, align 4
  br label %183

180:                                              ; preds = %173
  br label %182

181:                                              ; preds = %92
  store i32 1, i32* %5, align 4
  br label %183

182:                                              ; preds = %180, %172
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %181, %179, %163, %128, %79, %59, %43, %24
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i64 @bmp_read_palette(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @gdTell(i32) #1

declare dso_local i32 @gdSeek(i32, i64) #1

declare dso_local i32 @gdGetByte(i32*, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @bmp_read_rle(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
