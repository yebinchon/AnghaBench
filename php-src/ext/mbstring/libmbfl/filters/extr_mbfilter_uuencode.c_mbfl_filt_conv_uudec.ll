; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uuencode.c_mbfl_filt_conv_uudec.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_uuencode.c_mbfl_filt_conv_uudec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@uuenc_begin_text = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_uudec(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %203 [
    i32 132, label %13
    i32 131, label %39
    i32 128, label %64
    i32 130, label %71
    i32 136, label %80
    i32 135, label %91
    i32 134, label %102
    i32 133, label %112
    i32 129, label %200
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 98
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 131, i32* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %38

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %29
  br label %38

38:                                               ; preds = %37, %21
  br label %203

39:                                               ; preds = %2
  %40 = load i32*, i32** @uuenc_begin_text, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 132, i32* %52, align 8
  br label %203

53:                                               ; preds = %39
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 128, i32* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %203

64:                                               ; preds = %2
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 130, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  br label %203

71:                                               ; preds = %2
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @UUDEC(i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 %74, 24
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 136, i32* %79, align 8
  br label %203

80:                                               ; preds = %2
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @UUDEC(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 16
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 135, i32* %90, align 8
  br label %203

91:                                               ; preds = %2
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @UUDEC(i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = shl i32 %94, 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 134, i32* %101, align 8
  br label %203

102:                                              ; preds = %2
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @UUDEC(i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 133, i32* %111, align 8
  br label %203

112:                                              ; preds = %2
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @UUDEC(i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 16
  %119 = and i32 %118, 255
  store i32 %119, i32* %6, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 8
  %124 = and i32 %123, 255
  store i32 %124, i32* %7, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 255
  store i32 %128, i32* %8, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 24
  %133 = and i32 %132, 255
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %5, align 4
  %136 = icmp sgt i32 %134, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %112
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32 (i32, i32)*, i32 (i32, i32)** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = shl i32 %141, 2
  %143 = load i32, i32* %7, align 4
  %144 = ashr i32 %143, 4
  %145 = or i32 %142, %144
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 %140(i32 %145, i32 %148)
  %150 = call i32 @CK(i32 %149)
  br label %151

151:                                              ; preds = %137, %112
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %5, align 4
  %154 = icmp sgt i32 %152, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = load i32 (i32, i32)*, i32 (i32, i32)** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = shl i32 %159, 4
  %161 = load i32, i32* %8, align 4
  %162 = ashr i32 %161, 2
  %163 = or i32 %160, %162
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 %158(i32 %163, i32 %166)
  %168 = call i32 @CK(i32 %167)
  br label %169

169:                                              ; preds = %155, %151
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %5, align 4
  %172 = icmp sgt i32 %170, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load i32 (i32, i32)*, i32 (i32, i32)** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = shl i32 %177, 6
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 %176(i32 %180, i32 %183)
  %185 = call i32 @CK(i32 %184)
  br label %186

186:                                              ; preds = %173, %169
  %187 = load i32, i32* %5, align 4
  %188 = shl i32 %187, 24
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %5, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store i32 129, i32* %195, align 8
  br label %199

196:                                              ; preds = %186
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  store i32 136, i32* %198, align 8
  br label %199

199:                                              ; preds = %196, %193
  br label %203

200:                                              ; preds = %2
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 130, i32* %202, align 8
  br label %203

203:                                              ; preds = %200, %2, %199, %102, %91, %80, %71, %70, %63, %50, %38
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @UUDEC(i32) #1

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
