; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_GetCode_.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_GetCode_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CSD_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32, i32*)* @GetCode_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetCode_(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 2, i32* %24, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  store i32 0, i32* %6, align 4
  br label %165

28:                                               ; preds = %5
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %114

38:                                               ; preds = %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %43
  store i32 -1, i32* %6, align 4
  br label %165

53:                                               ; preds = %38
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @GetDataBlock(i32* %82, i32* %86, i32* %87)
  store i32 %88, i32* %15, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %53
  %91 = load i64, i64* @TRUE, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %53
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 2, %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  %106 = add nsw i32 %105, 16
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 2, %109
  %111 = mul nsw i32 %110, 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %94, %28
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* @CSD_BUF_SIZE, align 4
  %122 = mul nsw i32 %121, 8
  %123 = icmp sge i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  store i32 -1, i32* %14, align 4
  br label %158

125:                                              ; preds = %114
  store i32 0, i32* %14, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %152, %125
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sdiv i32 %137, 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = srem i32 %142, 8
  %144 = shl i32 1, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %13, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %133
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %129

157:                                              ; preds = %129
  br label %158

158:                                              ; preds = %157, %124
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %158, %52, %18
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @GetDataBlock(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
