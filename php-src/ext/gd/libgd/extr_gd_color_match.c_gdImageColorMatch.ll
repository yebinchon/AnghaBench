; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_color_match.c_gdImageColorMatch.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_color_match.c_gdImageColorMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32**, i32**, i32*, i32*, i32*, i32*, i64 }

@gdMaxColors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImageColorMatch(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %212

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -2, i32* %3, align 4
  br label %212

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %24
  store i32 -3, i32* %3, align 4
  br label %212

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -4, i32* %3, align 4
  br label %212

47:                                               ; preds = %41
  %48 = load i32, i32* @gdMaxColors, align 4
  %49 = mul nsw i32 5, %48
  %50 = call i64 @safe_emalloc(i32 8, i32 %49, i32 0)
  %51 = inttoptr i64 %50 to i64*
  store i64* %51, i64** %6, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i32, i32* @gdMaxColors, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 40, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memset(i64* %52, i32 0, i32 %56)
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %131, %47
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %134

64:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %127, %64
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %130

71:                                               ; preds = %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  %94 = load i64*, i64** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %95, 5
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  store i64* %98, i64** %7, align 8
  %99 = load i64*, i64** %7, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %7, align 8
  %101 = load i64, i64* %99, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %99, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @gdTrueColorGetRed(i32 %103)
  %105 = load i64*, i64** %7, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %7, align 8
  %107 = load i64, i64* %105, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %105, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @gdTrueColorGetGreen(i32 %109)
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i32 1
  store i64* %112, i64** %7, align 8
  %113 = load i64, i64* %111, align 8
  %114 = add i64 %113, %110
  store i64 %114, i64* %111, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @gdTrueColorGetBlue(i32 %115)
  %117 = load i64*, i64** %7, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %7, align 8
  %119 = load i64, i64* %117, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %117, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @gdTrueColorGetAlpha(i32 %121)
  %123 = load i64*, i64** %7, align 8
  %124 = getelementptr inbounds i64, i64* %123, i32 1
  store i64* %124, i64** %7, align 8
  %125 = load i64, i64* %123, align 8
  %126 = add i64 %125, %122
  store i64 %126, i64* %123, align 8
  br label %127

127:                                              ; preds = %71
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %65

130:                                              ; preds = %65
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %58

134:                                              ; preds = %58
  %135 = load i64*, i64** %6, align 8
  store i64* %135, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %206, %134
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %209

142:                                              ; preds = %136
  %143 = load i64*, i64** %7, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %7, align 8
  %145 = load i64, i64* %143, align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %202

149:                                              ; preds = %142
  %150 = load i64*, i64** %7, align 8
  %151 = getelementptr inbounds i64, i64* %150, i32 1
  store i64* %151, i64** %7, align 8
  %152 = load i64, i64* %150, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = udiv i64 %152, %154
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %156, i32* %162, align 4
  %163 = load i64*, i64** %7, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %7, align 8
  %165 = load i64, i64* %163, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = udiv i64 %165, %167
  %169 = trunc i64 %168 to i32
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  %176 = load i64*, i64** %7, align 8
  %177 = getelementptr inbounds i64, i64* %176, i32 1
  store i64* %177, i64** %7, align 8
  %178 = load i64, i64* %176, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = udiv i64 %178, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 7
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load i64*, i64** %7, align 8
  %190 = getelementptr inbounds i64, i64* %189, i32 1
  store i64* %190, i64** %7, align 8
  %191 = load i64, i64* %189, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = udiv i64 %191, %193
  %195 = trunc i64 %194 to i32
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 8
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %195, i32* %201, align 4
  br label %205

202:                                              ; preds = %142
  %203 = load i64*, i64** %7, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 4
  store i64* %204, i64** %7, align 8
  br label %205

205:                                              ; preds = %202, %149
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %136

209:                                              ; preds = %136
  %210 = load i64*, i64** %6, align 8
  %211 = call i32 @gdFree(i64* %210)
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %209, %46, %40, %23, %17
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @gdTrueColorGetRed(i32) #1

declare dso_local i64 @gdTrueColorGetGreen(i32) #1

declare dso_local i64 @gdTrueColorGetBlue(i32) #1

declare dso_local i64 @gdTrueColorGetAlpha(i32) #1

declare dso_local i32 @gdFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
