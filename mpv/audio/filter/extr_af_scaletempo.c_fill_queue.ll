; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_fill_queue.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_fill_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*)* @fill_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_queue(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  store %struct.priv* %0, %struct.priv** %2, align 8
  %10 = load %struct.priv*, %struct.priv** %2, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %2, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mp_aframe_get_size(i64 %17)
  %19 = load %struct.priv*, %struct.priv** %2, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %14
  %25 = phi i32 [ %22, %14 ], [ 0, %23 ]
  store i32 %25, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %26 = load %struct.priv*, %struct.priv** %2, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %24
  %31 = load %struct.priv*, %struct.priv** %2, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.priv*, %struct.priv** %2, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %30
  %39 = load %struct.priv*, %struct.priv** %2, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.priv*, %struct.priv** %2, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.priv*, %struct.priv** %2, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.priv*, %struct.priv** %2, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load %struct.priv*, %struct.priv** %2, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @memmove(i32 %49, i32 %58, i32 %59)
  %61 = load %struct.priv*, %struct.priv** %2, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.priv*, %struct.priv** %2, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %95

67:                                               ; preds = %30
  %68 = load %struct.priv*, %struct.priv** %2, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.priv*, %struct.priv** %2, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.priv*, %struct.priv** %2, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @MPMIN(i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.priv*, %struct.priv** %2, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.priv*, %struct.priv** %2, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %3, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %67, %38
  br label %96

96:                                               ; preds = %95, %24
  %97 = load %struct.priv*, %struct.priv** %2, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.priv*, %struct.priv** %2, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @MPMIN(i32 %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %96
  %116 = load %struct.priv*, %struct.priv** %2, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = call i32** @mp_aframe_get_data_ro(i64 %118)
  store i32** %119, i32*** %9, align 8
  %120 = load %struct.priv*, %struct.priv** %2, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load %struct.priv*, %struct.priv** %2, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = trunc i64 %127 to i32
  %129 = load i32**, i32*** %9, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @memcpy(i32 %128, i32* %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.priv*, %struct.priv** %2, align 8
  %140 = getelementptr inbounds %struct.priv, %struct.priv* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %115, %96
  %150 = load %struct.priv*, %struct.priv** %2, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load %struct.priv*, %struct.priv** %2, align 8
  %156 = getelementptr inbounds %struct.priv, %struct.priv* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.priv*, %struct.priv** %2, align 8
  %160 = getelementptr inbounds %struct.priv, %struct.priv* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sdiv i32 %158, %161
  %163 = call i32 @mp_aframe_skip_samples(i64 %157, i32 %162)
  br label %164

164:                                              ; preds = %154, %149
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i32
  ret i32 %167
}

declare dso_local i32 @mp_aframe_get_size(i64) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32** @mp_aframe_get_data_ro(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mp_aframe_skip_samples(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
