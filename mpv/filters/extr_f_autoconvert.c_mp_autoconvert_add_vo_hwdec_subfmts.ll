; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_add_vo_hwdec_subfmts.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_add_vo_hwdec_subfmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_autoconvert = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i32, i32*, i32*, i32 }
%struct.mp_hwdec_devices = type { i32 }
%struct.mp_hwdec_ctx = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_autoconvert_add_vo_hwdec_subfmts(%struct.mp_autoconvert* %0, %struct.mp_hwdec_devices* %1) #0 {
  %3 = alloca %struct.mp_autoconvert*, align 8
  %4 = alloca %struct.mp_hwdec_devices*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_hwdec_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mp_autoconvert* %0, %struct.mp_autoconvert** %3, align 8
  store %struct.mp_hwdec_devices* %1, %struct.mp_hwdec_devices** %4, align 8
  %12 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %3, align 8
  %13 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %5, align 8
  %17 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %4, align 8
  %18 = call i32 @assert(%struct.mp_hwdec_devices* %17)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %120, %2
  %20 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.mp_hwdec_ctx* @hwdec_devices_get_n(%struct.mp_hwdec_devices* %20, i32 %21)
  store %struct.mp_hwdec_ctx* %22, %struct.mp_hwdec_ctx** %8, align 8
  %23 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %24 = icmp ne %struct.mp_hwdec_ctx* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %123

26:                                               ; preds = %19
  %27 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %26
  br label %120

37:                                               ; preds = %31
  %38 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %120

44:                                               ; preds = %37
  %45 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %90, %44
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.priv*, %struct.priv** %5, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %48
  %55 = load %struct.priv*, %struct.priv** %5, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %90

67:                                               ; preds = %54
  %68 = load %struct.priv*, %struct.priv** %5, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  %71 = load %struct.priv*, %struct.priv** %5, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @MP_TARRAY_REMOVE_AT(i32* %73, i32 %74, i32 %75)
  %77 = load %struct.priv*, %struct.priv** %5, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %10, align 4
  %80 = load %struct.priv*, %struct.priv** %5, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @MP_TARRAY_REMOVE_AT(i32* %82, i32 %83, i32 %84)
  %86 = load %struct.priv*, %struct.priv** %5, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %93

90:                                               ; preds = %66
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %48

93:                                               ; preds = %67, %48
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %116, %93
  %95 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %96 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %94
  %104 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %3, align 8
  %105 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %8, align 8
  %109 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @mp_autoconvert_add_imgfmt(%struct.mp_autoconvert* %104, i32 %107, i64 %114)
  br label %116

116:                                              ; preds = %103
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %94

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119, %43, %36
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %19

123:                                              ; preds = %25
  %124 = load %struct.priv*, %struct.priv** %5, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 3
  store i32 1, i32* %125, align 8
  ret void
}

declare dso_local i32 @assert(%struct.mp_hwdec_devices*) #1

declare dso_local %struct.mp_hwdec_ctx* @hwdec_devices_get_n(%struct.mp_hwdec_devices*, i32) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(i32*, i32, i32) #1

declare dso_local i32 @mp_autoconvert_add_imgfmt(%struct.mp_autoconvert*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
