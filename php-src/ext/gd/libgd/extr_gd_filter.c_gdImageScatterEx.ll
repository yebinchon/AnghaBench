; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_filter.c_gdImageScatterEx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_filter.c_gdImageScatterEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdImageScatterEx(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %13, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %197

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %197

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @srand(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %130

42:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %126, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %129

49:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %122, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %125

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (...) @rand()
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %59, %60
  %62 = srem i32 %58, %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  %65 = add nsw i32 %57, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (...) @rand()
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  %71 = srem i32 %67, %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %66, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @gdImageBoundsSafe(%struct.TYPE_9__* %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %56
  br label %122

81:                                               ; preds = %56
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @gdImageGetPixel(%struct.TYPE_9__* %82, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @gdImageGetPixel(%struct.TYPE_9__* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %118, %81
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %97, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %96
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %112, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %106, %96
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %90

121:                                              ; preds = %90
  br label %122

122:                                              ; preds = %121, %80
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %50

125:                                              ; preds = %50
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %43

129:                                              ; preds = %43
  br label %196

130:                                              ; preds = %33
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %192, %130
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %195

137:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %188, %137
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %191

144:                                              ; preds = %138
  %145 = load i32, i32* %6, align 4
  %146 = call i32 (...) @rand()
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %147, %148
  %150 = srem i32 %146, %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %150, %151
  %153 = add nsw i32 %145, %152
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (...) @rand()
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = sub nsw i32 %156, %157
  %159 = srem i32 %155, %158
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %159, %160
  %162 = add nsw i32 %154, %161
  store i32 %162, i32* %9, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @gdImageBoundsSafe(%struct.TYPE_9__* %163, i32 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %144
  br label %188

169:                                              ; preds = %144
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @gdImageGetPixel(%struct.TYPE_9__* %170, i32 %171, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @gdImageGetPixel(%struct.TYPE_9__* %174, i32 %175, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %183, i32 %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %169, %168
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %138

191:                                              ; preds = %138
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %131

195:                                              ; preds = %131
  br label %196

196:                                              ; preds = %195, %129
  store i32 1, i32* %3, align 4
  br label %197

197:                                              ; preds = %196, %31, %26
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @gdImageBoundsSafe(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
