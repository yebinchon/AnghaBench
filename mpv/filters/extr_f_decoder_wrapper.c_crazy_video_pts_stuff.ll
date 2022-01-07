; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_crazy_video_pts_stuff.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_crazy_video_pts_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i64, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 (i32, i32, i32*)* }
%struct.TYPE_4__ = type { i64 }
%struct.mp_image = type { i64, i64 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@VDCTRL_GET_BFRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, %struct.mp_image*)* @crazy_video_pts_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crazy_video_pts_stuff(%struct.priv* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %6 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %7 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %13 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %26 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %32 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %38 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %51 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %30
  %56 = load %struct.priv*, %struct.priv** %3, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.priv*, %struct.priv** %3, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.priv*, %struct.priv** %3, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.priv*, %struct.priv** %3, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 4
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.priv*, %struct.priv** %3, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.priv*, %struct.priv** %3, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %73
  %82 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %83 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81, %73
  %88 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %89 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %95 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %98 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %87, %81
  %100 = load %struct.priv*, %struct.priv** %3, align 8
  %101 = getelementptr inbounds %struct.priv, %struct.priv* %100, i32 0, i32 6
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %155

104:                                              ; preds = %99
  %105 = load %struct.priv*, %struct.priv** %3, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 6
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %108, align 8
  %110 = icmp ne i32 (i32, i32, i32*)* %109, null
  br i1 %110, label %111, label %155

111:                                              ; preds = %104
  %112 = load %struct.priv*, %struct.priv** %3, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 7
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %111
  %119 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %120 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %118
  %125 = load %struct.priv*, %struct.priv** %3, align 8
  %126 = getelementptr inbounds %struct.priv, %struct.priv* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  store i32 -1, i32* %5, align 4
  %131 = load %struct.priv*, %struct.priv** %3, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 6
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %134, align 8
  %136 = load %struct.priv*, %struct.priv** %3, align 8
  %137 = getelementptr inbounds %struct.priv, %struct.priv* %136, i32 0, i32 6
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @VDCTRL_GET_BFRAMES, align 4
  %142 = call i32 %135(i32 %140, i32 %141, i32* %5)
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @MPMAX(i32 %143, i32 0)
  %145 = sext i32 %144 to i64
  %146 = load %struct.priv*, %struct.priv** %3, align 8
  %147 = getelementptr inbounds %struct.priv, %struct.priv* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = sdiv i64 %145, %149
  %151 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %152 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, %150
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %130, %124, %118, %111, %104, %99
  ret void
}

declare dso_local i32 @MPMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
