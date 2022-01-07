; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_swap_alpha.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_swap_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"in png_do_read_swap_alpha\0A\00", align 1
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_read_swap_alpha(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [2 x i32], align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %22 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %138

31:                                               ; preds = %2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  store i32* %43, i32** %7, align 8
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %70, %36
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 -1
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 -1
  store i32* %53, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 -1
  store i32* %56, i32** %7, align 8
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 -1
  store i32* %61, i32** %7, align 8
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 -1
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 -1
  store i32* %66, i32** %7, align 8
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 -1
  store i32* %69, i32** %7, align 8
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %48
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %44

73:                                               ; preds = %44
  br label %137

74:                                               ; preds = %31
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  store i32* %81, i32** %11, align 8
  store i64 0, i64* %13, align 8
  br label %82

82:                                               ; preds = %133, %74
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %136

86:                                               ; preds = %82
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 -1
  store i32* %88, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 -1
  store i32* %92, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 -1
  store i32* %96, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 -1
  store i32* %99, i32** %11, align 8
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 -1
  store i32* %101, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 -1
  store i32* %104, i32** %11, align 8
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 -1
  store i32* %106, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 -1
  store i32* %109, i32** %11, align 8
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 -1
  store i32* %111, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 -1
  store i32* %114, i32** %11, align 8
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 -1
  store i32* %116, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 -1
  store i32* %119, i32** %11, align 8
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 -1
  store i32* %121, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 -1
  store i32* %124, i32** %11, align 8
  store i32 %122, i32* %124, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 -1
  store i32* %128, i32** %11, align 8
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 -1
  store i32* %132, i32** %11, align 8
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %86
  %134 = load i64, i64* %13, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %13, align 8
  br label %82

136:                                              ; preds = %82
  br label %137

137:                                              ; preds = %136, %73
  br label %222

138:                                              ; preds = %2
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %221

144:                                              ; preds = %138
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %177

149:                                              ; preds = %144
  %150 = load i32*, i32** %4, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  store i32* %155, i32** %14, align 8
  %156 = load i32*, i32** %14, align 8
  store i32* %156, i32** %15, align 8
  store i64 0, i64* %17, align 8
  br label %157

157:                                              ; preds = %173, %149
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %5, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 -1
  store i32* %163, i32** %14, align 8
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %16, align 4
  %165 = load i32*, i32** %14, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 -1
  store i32* %166, i32** %14, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %15, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 -1
  store i32* %169, i32** %15, align 8
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32*, i32** %15, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 -1
  store i32* %172, i32** %15, align 8
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %161
  %174 = load i64, i64* %17, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %17, align 8
  br label %157

176:                                              ; preds = %157
  br label %220

177:                                              ; preds = %144
  %178 = load i32*, i32** %4, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  store i32* %183, i32** %18, align 8
  %184 = load i32*, i32** %18, align 8
  store i32* %184, i32** %19, align 8
  store i64 0, i64* %21, align 8
  br label %185

185:                                              ; preds = %216, %177
  %186 = load i64, i64* %21, align 8
  %187 = load i64, i64* %5, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %219

189:                                              ; preds = %185
  %190 = load i32*, i32** %18, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 -1
  store i32* %191, i32** %18, align 8
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %192, i32* %193, align 4
  %194 = load i32*, i32** %18, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 -1
  store i32* %195, i32** %18, align 8
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %196, i32* %197, align 4
  %198 = load i32*, i32** %18, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 -1
  store i32* %199, i32** %18, align 8
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %19, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 -1
  store i32* %202, i32** %19, align 8
  store i32 %200, i32* %202, align 4
  %203 = load i32*, i32** %18, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 -1
  store i32* %204, i32** %18, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %19, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 -1
  store i32* %207, i32** %19, align 8
  store i32 %205, i32* %207, align 4
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %19, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 -1
  store i32* %211, i32** %19, align 8
  store i32 %209, i32* %211, align 4
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %19, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 -1
  store i32* %215, i32** %19, align 8
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %189
  %217 = load i64, i64* %21, align 8
  %218 = add nsw i64 %217, 1
  store i64 %218, i64* %21, align 8
  br label %185

219:                                              ; preds = %185
  br label %220

220:                                              ; preds = %219, %176
  br label %221

221:                                              ; preds = %220, %138
  br label %222

222:                                              ; preds = %221, %137
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
