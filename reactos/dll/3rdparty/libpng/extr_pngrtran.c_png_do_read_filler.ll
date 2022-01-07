; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_do_read_filler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrtran.c_png_do_read_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"in png_do_read_filler\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@PNG_FLAG_FILLER_AFTER = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32)* @png_do_read_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_do_read_filler(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %11, align 4
  %24 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %113

30:                                               ; preds = %4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %35, label %112

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %13, align 8
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %62, %40
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 -1
  store i32* %56, i32** %13, align 8
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 -1
  store i32* %61, i32** %13, align 8
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %49

65:                                               ; preds = %49
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 -1
  store i32* %68, i32** %13, align 8
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32 2, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  store i32 16, i32* %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %73, 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  br label %111

77:                                               ; preds = %35
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %14, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %15, align 8
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %99, %77
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 -1
  store i32* %92, i32** %14, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 -1
  store i32* %95, i32** %15, align 8
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 -1
  store i32* %98, i32** %15, align 8
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %86

102:                                              ; preds = %86
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  store i32 2, i32* %104, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  store i32 16, i32* %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 %107, 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %102, %65
  br label %112

112:                                              ; preds = %111, %30
  br label %225

113:                                              ; preds = %4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %224

119:                                              ; preds = %113
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 8
  br i1 %123, label %124, label %223

124:                                              ; preds = %119
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %177

129:                                              ; preds = %124
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 3
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32* %134, i32** %16, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32* %138, i32** %17, align 8
  store i32 1, i32* %9, align 4
  br label %139

139:                                              ; preds = %162, %129
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = load i32*, i32** %17, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 -1
  store i32* %146, i32** %17, align 8
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** %16, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 -1
  store i32* %148, i32** %16, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %17, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 -1
  store i32* %151, i32** %17, align 8
  store i32 %149, i32* %151, align 4
  %152 = load i32*, i32** %16, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 -1
  store i32* %153, i32** %16, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %17, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 -1
  store i32* %156, i32** %17, align 8
  store i32 %154, i32* %156, align 4
  %157 = load i32*, i32** %16, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 -1
  store i32* %158, i32** %16, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %17, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 -1
  store i32* %161, i32** %17, align 8
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %143
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %139

165:                                              ; preds = %139
  %166 = load i32, i32* %11, align 4
  %167 = load i32*, i32** %17, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 -1
  store i32* %168, i32** %17, align 8
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  store i32 4, i32* %170, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 4
  store i32 32, i32* %172, align 8
  %173 = load i32, i32* %10, align 4
  %174 = mul nsw i32 %173, 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  br label %222

177:                                              ; preds = %124
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 3
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32* %182, i32** %18, align 8
  %183 = load i32*, i32** %18, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32* %186, i32** %19, align 8
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %210, %177
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = load i32*, i32** %18, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 -1
  store i32* %193, i32** %18, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %19, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 -1
  store i32* %196, i32** %19, align 8
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %18, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 -1
  store i32* %198, i32** %18, align 8
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %19, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 -1
  store i32* %201, i32** %19, align 8
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %18, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 -1
  store i32* %203, i32** %18, align 8
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %19, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 -1
  store i32* %206, i32** %19, align 8
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32*, i32** %19, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 -1
  store i32* %209, i32** %19, align 8
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %191
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %187

213:                                              ; preds = %187
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 3
  store i32 4, i32* %215, align 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 4
  store i32 32, i32* %217, align 8
  %218 = load i32, i32* %10, align 4
  %219 = mul nsw i32 %218, 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %213, %165
  br label %223

223:                                              ; preds = %222, %119
  br label %224

224:                                              ; preds = %223, %113
  br label %225

225:                                              ; preds = %224, %112
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
