; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageAALine.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageAALine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageAALine(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @gdImageLine(%struct.TYPE_7__* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  br label %242

32:                                               ; preds = %6
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = call i64 @gdImageSX(%struct.TYPE_7__* %33)
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @clip_1d(i32* %8, i32* %9, i32* %10, i32* %11, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = call i64 @gdImageSY(%struct.TYPE_7__* %39)
  %41 = sub nsw i64 %40, 1
  %42 = call i32 @clip_1d(i32* %9, i32* %8, i32* %11, i32* %10, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %32
  br label %242

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %17, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %17, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i64, i64* %18, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %242

60:                                               ; preds = %56, %45
  %61 = load i64, i64* %17, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @abs(i32 %62)
  %64 = load i64, i64* %18, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i64 @abs(i32 %65)
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %155

68:                                               ; preds = %60
  %69 = load i64, i64* %17, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %19, align 8
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i64, i64* %19, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %19, align 8
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %9, align 4
  %80 = load i64, i64* %19, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %17, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %18, align 8
  br label %90

90:                                               ; preds = %71, %68
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %14, align 8
  %93 = load i64, i64* %18, align 8
  %94 = mul nsw i64 %93, 65536
  %95 = load i64, i64* %17, align 8
  %96 = sdiv i64 %94, %95
  store i64 %96, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %13, align 8
  br label %99

99:                                               ; preds = %151, %90
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp sle i64 %100, %102
  br i1 %103, label %104, label %154

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i64, i64* %16, align 8
  %110 = ashr i64 %109, 8
  %111 = and i64 %110, 255
  %112 = call i32 @gdImageSetAAPixelColor(%struct.TYPE_7__* %105, i64 %106, i64 %107, i32 %108, i64 %111)
  %113 = load i64, i64* %14, align 8
  %114 = add nsw i64 %113, 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %104
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, 1
  %124 = load i32, i32* %12, align 4
  %125 = load i64, i64* %16, align 8
  %126 = xor i64 %125, -1
  %127 = ashr i64 %126, 8
  %128 = and i64 %127, 255
  %129 = call i32 @gdImageSetAAPixelColor(%struct.TYPE_7__* %120, i64 %121, i64 %123, i32 %124, i64 %128)
  br label %130

130:                                              ; preds = %119, %104
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %16, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %16, align 8
  %134 = load i64, i64* %16, align 8
  %135 = icmp sge i64 %134, 65536
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i64, i64* %16, align 8
  %138 = sub nsw i64 %137, 65536
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %14, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %14, align 8
  br label %150

141:                                              ; preds = %130
  %142 = load i64, i64* %16, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i64, i64* %16, align 8
  %146 = add nsw i64 %145, 65536
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %14, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %14, align 8
  br label %149

149:                                              ; preds = %144, %141
  br label %150

150:                                              ; preds = %149, %136
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %13, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %13, align 8
  br label %99

154:                                              ; preds = %99
  br label %242

155:                                              ; preds = %60
  %156 = load i64, i64* %18, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %19, align 8
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %8, align 4
  %162 = load i64, i64* %19, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %19, align 8
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %9, align 4
  %167 = load i64, i64* %19, align 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %8, align 4
  %171 = sub nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %17, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %18, align 8
  br label %177

177:                                              ; preds = %158, %155
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %17, align 8
  %181 = mul nsw i64 %180, 65536
  %182 = load i64, i64* %18, align 8
  %183 = sdiv i64 %181, %182
  store i64 %183, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %14, align 8
  br label %186

186:                                              ; preds = %238, %177
  %187 = load i64, i64* %14, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = icmp sle i64 %187, %189
  br i1 %190, label %191, label %241

191:                                              ; preds = %186
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %193 = load i64, i64* %13, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i32, i32* %12, align 4
  %196 = load i64, i64* %16, align 8
  %197 = ashr i64 %196, 8
  %198 = and i64 %197, 255
  %199 = call i32 @gdImageSetAAPixelColor(%struct.TYPE_7__* %192, i64 %193, i64 %194, i32 %195, i64 %198)
  %200 = load i64, i64* %13, align 8
  %201 = add nsw i64 %200, 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %191
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %208 = load i64, i64* %13, align 8
  %209 = add nsw i64 %208, 1
  %210 = load i64, i64* %14, align 8
  %211 = load i32, i32* %12, align 4
  %212 = load i64, i64* %16, align 8
  %213 = xor i64 %212, -1
  %214 = ashr i64 %213, 8
  %215 = and i64 %214, 255
  %216 = call i32 @gdImageSetAAPixelColor(%struct.TYPE_7__* %207, i64 %209, i64 %210, i32 %211, i64 %215)
  br label %217

217:                                              ; preds = %206, %191
  %218 = load i64, i64* %15, align 8
  %219 = load i64, i64* %16, align 8
  %220 = add nsw i64 %219, %218
  store i64 %220, i64* %16, align 8
  %221 = load i64, i64* %16, align 8
  %222 = icmp sge i64 %221, 65536
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load i64, i64* %16, align 8
  %225 = sub nsw i64 %224, 65536
  store i64 %225, i64* %16, align 8
  %226 = load i64, i64* %13, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %13, align 8
  br label %237

228:                                              ; preds = %217
  %229 = load i64, i64* %16, align 8
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load i64, i64* %16, align 8
  %233 = add nsw i64 %232, 65536
  store i64 %233, i64* %16, align 8
  %234 = load i64, i64* %13, align 8
  %235 = add nsw i64 %234, -1
  store i64 %235, i64* %13, align 8
  br label %236

236:                                              ; preds = %231, %228
  br label %237

237:                                              ; preds = %236, %223
  br label %238

238:                                              ; preds = %237
  %239 = load i64, i64* %14, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %14, align 8
  br label %186

241:                                              ; preds = %186
  br label %242

242:                                              ; preds = %24, %44, %59, %241, %154
  ret void
}

declare dso_local i32 @gdImageLine(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clip_1d(i32*, i32*, i32*, i32*, i64) #1

declare dso_local i64 @gdImageSX(%struct.TYPE_7__*) #1

declare dso_local i64 @gdImageSY(%struct.TYPE_7__*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @gdImageSetAAPixelColor(%struct.TYPE_7__*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
