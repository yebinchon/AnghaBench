; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_initBitmap.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_initBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tjRedOffset = common dso_local global i32* null, align 8
@tjGreenOffset = common dso_local global i32* null, align 8
@tjBlueOffset = common dso_local global i32* null, align 8
@tjPixelSize = common dso_local global i32* null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@TJPF_GRAY = common dso_local global i32 0, align 4
@TJPF_CMYK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initBitmap(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
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
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32*, i32** @tjRedOffset, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** @tjGreenOffset, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** @tjBlueOffset, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** @tjPixelSize, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %215, %6
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %218

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %18, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi i32 [ %56, %52 ], [ %58, %57 ]
  store i32 %60, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %211, %59
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %214

65:                                               ; preds = %61
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 %66, 256
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %67, %68
  %70 = srem i32 %69, 256
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %20, align 1
  %72 = load i32, i32* %18, align 4
  %73 = mul nsw i32 %72, 256
  %74 = load i32, i32* %10, align 4
  %75 = sdiv i32 %73, %74
  %76 = srem i32 %75, 256
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %21, align 1
  %78 = load i32, i32* %18, align 4
  %79 = mul nsw i32 %78, 256
  %80 = load i32, i32* %10, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32, i32* %17, align 4
  %83 = mul nsw i32 %82, 256
  %84 = load i32, i32* %8, align 4
  %85 = sdiv i32 %83, %84
  %86 = add nsw i32 %81, %85
  %87 = srem i32 %86, 256
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %22, align 1
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %16, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %89, i64 %97
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @memset(i8* %98, i32 0, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @TJPF_GRAY, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %65
  %105 = load i8, i8* %22, align 1
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %16, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %106, i64 %114
  store i8 %105, i8* %115, align 1
  br label %210

116:                                              ; preds = %65
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @TJPF_CMYK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %169

120:                                              ; preds = %116
  %121 = load i8, i8* %20, align 1
  %122 = load i8, i8* %21, align 1
  %123 = load i8, i8* %22, align 1
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %16, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  %132 = add nsw i32 %131, 0
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %124, i64 %133
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = mul nsw i32 %139, %140
  %142 = add nsw i32 %138, %141
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %135, i64 %144
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %9, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %16, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %149, %152
  %154 = add nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %146, i64 %155
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %16, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %160, %163
  %165 = add nsw i32 %164, 3
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %157, i64 %166
  %168 = call i32 @rgb_to_cmyk(i8 zeroext %121, i8 zeroext %122, i8 zeroext %123, i8* %134, i8* %145, i8* %156, i8* %167)
  br label %209

169:                                              ; preds = %116
  %170 = load i8, i8* %20, align 1
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %9, align 4
  %174 = mul nsw i32 %172, %173
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %16, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %171, i64 %181
  store i8 %170, i8* %182, align 1
  %183 = load i8, i8* %21, align 1
  %184 = load i8*, i8** %7, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %9, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %16, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %187, %190
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %184, i64 %194
  store i8 %183, i8* %195, align 1
  %196 = load i8, i8* %22, align 1
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %9, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %16, align 4
  %203 = mul nsw i32 %201, %202
  %204 = add nsw i32 %200, %203
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %197, i64 %207
  store i8 %196, i8* %208, align 1
  br label %209

209:                                              ; preds = %169, %120
  br label %210

210:                                              ; preds = %209, %104
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %17, align 4
  br label %61

214:                                              ; preds = %61
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %18, align 4
  br label %43

218:                                              ; preds = %43
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rgb_to_cmyk(i8 zeroext, i8 zeroext, i8 zeroext, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
