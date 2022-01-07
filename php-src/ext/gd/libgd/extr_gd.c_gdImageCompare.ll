; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCompare.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i32, i32, i64 }

@GD_CMP_INTERLACE = common dso_local global i32 0, align 4
@GD_CMP_TRANSPARENT = common dso_local global i32 0, align 4
@GD_CMP_TRUECOLOR = common dso_local global i32 0, align 4
@GD_CMP_SIZE_X = common dso_local global i32 0, align 4
@GD_CMP_IMAGE = common dso_local global i32 0, align 4
@GD_CMP_SIZE_Y = common dso_local global i32 0, align 4
@GD_CMP_NUM_COLORS = common dso_local global i32 0, align 4
@GD_CMP_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImageCompare(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @GD_CMP_INTERLACE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @GD_CMP_TRANSPARENT, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @GD_CMP_TRUECOLOR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %35
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %47
  %59 = load i32, i32* @GD_CMP_SIZE_X, align 4
  %60 = load i32, i32* @GD_CMP_IMAGE, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %58
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %76
  %88 = load i32, i32* @GD_CMP_SIZE_Y, align 4
  %89 = load i32, i32* @GD_CMP_IMAGE, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %87
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* @GD_CMP_NUM_COLORS, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %113, %105
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %212, %117
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %215

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %202, %122
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %205

127:                                              ; preds = %123
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @gdImageTrueColorPixel(%struct.TYPE_10__* %133, i32 %134, i32 %135)
  br label %142

137:                                              ; preds = %127
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @gdImagePalettePixel(%struct.TYPE_10__* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i32 [ %136, %132 ], [ %141, %137 ]
  store i32 %143, i32* %7, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @gdImageTrueColorPixel(%struct.TYPE_10__* %149, i32 %150, i32 %151)
  br label %158

153:                                              ; preds = %142
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @gdImagePalettePixel(%struct.TYPE_10__* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = phi i32 [ %152, %148 ], [ %157, %153 ]
  store i32 %159, i32* %8, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i64 @gdImageRed(%struct.TYPE_10__* %160, i32 %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i64 @gdImageRed(%struct.TYPE_10__* %163, i32 %164)
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load i32, i32* @GD_CMP_COLOR, align 4
  %169 = load i32, i32* @GD_CMP_IMAGE, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %9, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %9, align 4
  br label %205

173:                                              ; preds = %158
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i64 @gdImageGreen(%struct.TYPE_10__* %174, i32 %175)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i64 @gdImageGreen(%struct.TYPE_10__* %177, i32 %178)
  %180 = icmp ne i64 %176, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load i32, i32* @GD_CMP_COLOR, align 4
  %183 = load i32, i32* @GD_CMP_IMAGE, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  br label %205

187:                                              ; preds = %173
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i64 @gdImageBlue(%struct.TYPE_10__* %188, i32 %189)
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i64 @gdImageBlue(%struct.TYPE_10__* %191, i32 %192)
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %187
  %196 = load i32, i32* @GD_CMP_COLOR, align 4
  %197 = load i32, i32* @GD_CMP_IMAGE, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %9, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %9, align 4
  br label %205

201:                                              ; preds = %187
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %123

205:                                              ; preds = %195, %181, %167, %123
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @GD_CMP_COLOR, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %215

211:                                              ; preds = %205
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %118

215:                                              ; preds = %210, %118
  %216 = load i32, i32* %9, align 4
  ret i32 %216
}

declare dso_local i32 @gdImageTrueColorPixel(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @gdImagePalettePixel(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @gdImageRed(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @gdImageGreen(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @gdImageBlue(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
