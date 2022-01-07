; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageColorResolveAlpha.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageColorResolveAlpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32*, i32*, i64*, i64 }

@gdMaxColors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImageColorResolveAlpha(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i64 260100, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @gdTrueColorAlpha(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %180

31:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %124, %31
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %127

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %14, align 4
  br label %124

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %124

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %15, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %16, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %17, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %18, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = mul nsw i64 %97, %98
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = mul nsw i64 %100, %101
  %103 = add nsw i64 %99, %102
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %17, align 8
  %106 = mul nsw i64 %104, %105
  %107 = add nsw i64 %103, %106
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %18, align 8
  %110 = mul nsw i64 %108, %109
  %111 = add nsw i64 %107, %110
  store i64 %111, i64* %19, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %20, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %56
  %116 = load i64, i64* %19, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %180

120:                                              ; preds = %115
  %121 = load i64, i64* %19, align 8
  store i64 %121, i64* %20, align 8
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %120, %56
  br label %124

124:                                              ; preds = %123, %55, %47
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %32

127:                                              ; preds = %32
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @gdMaxColors, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %6, align 4
  br label %180

139:                                              ; preds = %130
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %139, %127
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 6
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  store i64 0, i64* %178, align 8
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %144, %137, %118, %25
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
