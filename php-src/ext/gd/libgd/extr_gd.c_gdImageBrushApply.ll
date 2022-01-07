; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageBrushApply.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageBrushApply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32)* @gdImageBrushApply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdImageBrushApply(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %234

26:                                               ; preds = %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = call i32 @gdImageSY(%struct.TYPE_11__* %29)
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 @gdImageSY(%struct.TYPE_11__* %38)
  %40 = add nsw i32 %35, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = call i32 @gdImageSX(%struct.TYPE_11__* %43)
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @gdImageSX(%struct.TYPE_11__* %52)
  %54 = add nsw i32 %49, %53
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %161

59:                                               ; preds = %26
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %106, %66
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %100, %72
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @gdImageGetTrueColorPixel(%struct.TYPE_11__* %81, i32 %82, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = call i32 @gdImageGetTransparent(%struct.TYPE_11__* %88)
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @gdImageSetPixel(%struct.TYPE_10__* %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %78
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %74

103:                                              ; preds = %74
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %68

109:                                              ; preds = %68
  br label %160

110:                                              ; preds = %59
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %156, %110
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %112
  store i32 0, i32* %15, align 4
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %150, %116
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %153

122:                                              ; preds = %118
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @gdImageGetPixel(%struct.TYPE_11__* %125, i32 %126, i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @gdImageGetTrueColorPixel(%struct.TYPE_11__* %131, i32 %132, i32 %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = call i32 @gdImageGetTransparent(%struct.TYPE_11__* %138)
  %140 = icmp ne i32 %135, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %122
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @gdImageSetPixel(%struct.TYPE_10__* %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %122
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %118

153:                                              ; preds = %118
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %112

159:                                              ; preds = %112
  br label %160

160:                                              ; preds = %159, %109
  br label %234

161:                                              ; preds = %26
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %230, %161
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %233

167:                                              ; preds = %163
  store i32 0, i32* %15, align 4
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %224, %167
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %227

173:                                              ; preds = %169
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @gdImageGetPixel(%struct.TYPE_11__* %176, i32 %177, i32 %178)
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = call i32 @gdImageGetTransparent(%struct.TYPE_11__* %183)
  %185 = icmp ne i32 %180, %184
  br i1 %185, label %186, label %221

186:                                              ; preds = %173
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %186
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %198 = load i32, i32* %20, align 4
  %199 = call i32 @gdTrueColorGetRed(i32 %198)
  %200 = load i32, i32* %20, align 4
  %201 = call i32 @gdTrueColorGetGreen(i32 %200)
  %202 = load i32, i32* %20, align 4
  %203 = call i32 @gdTrueColorGetBlue(i32 %202)
  %204 = load i32, i32* %20, align 4
  %205 = call i32 @gdTrueColorGetAlpha(i32 %204)
  %206 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_10__* %197, i32 %199, i32 %201, i32 %203, i32 %205)
  %207 = call i32 @gdImageSetPixel(%struct.TYPE_10__* %194, i32 %195, i32 %196, i32 %206)
  br label %220

208:                                              ; preds = %186
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @gdImageSetPixel(%struct.TYPE_10__* %209, i32 %210, i32 %211, i32 %218)
  br label %220

220:                                              ; preds = %208, %193
  br label %221

221:                                              ; preds = %220, %173
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  br label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %169

227:                                              ; preds = %169
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %16, align 4
  br label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  br label %163

233:                                              ; preds = %163
  br label %234

234:                                              ; preds = %25, %233, %160
  ret void
}

declare dso_local i32 @gdImageSY(%struct.TYPE_11__*) #1

declare dso_local i32 @gdImageSX(%struct.TYPE_11__*) #1

declare dso_local i32 @gdImageGetTrueColorPixel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gdImageGetTransparent(%struct.TYPE_11__*) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gdImageColorResolveAlpha(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @gdTrueColorGetRed(i32) #1

declare dso_local i32 @gdTrueColorGetGreen(i32) #1

declare dso_local i32 @gdTrueColorGetBlue(i32) #1

declare dso_local i32 @gdTrueColorGetAlpha(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
