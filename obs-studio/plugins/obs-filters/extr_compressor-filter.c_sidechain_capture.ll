; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_sidechain_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_sidechain_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_data = type { i32, i32* }
%struct.compressor_data = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.audio_data*, i32)* @sidechain_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sidechain_capture(i8* %0, i32* %1, %struct.audio_data* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.compressor_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.audio_data* %2, %struct.audio_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.compressor_data*
  store %struct.compressor_data* %15, %struct.compressor_data** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @UNUSED_PARAMETER(i32* %16)
  %18 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %19 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %18, i32 0, i32 2
  %20 = call i32 @pthread_mutex_lock(i32* %19)
  %21 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %22 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %25 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %30 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %33 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %4
  %35 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %36 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %130

43:                                               ; preds = %34
  %44 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %45 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = mul i64 %50, 2
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %57 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %62 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @circlebuf_pop_front(%struct.TYPE_4__* %65, i32* null, i64 %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %54

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  store i64 0, i64* %12, align 8
  br label %76

76:                                               ; preds = %95, %75
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %79 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %84 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %89 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @circlebuf_push_back_zero(%struct.TYPE_4__* %87, i32 %93)
  br label %95

95:                                               ; preds = %82
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %76

98:                                               ; preds = %76
  br label %129

99:                                               ; preds = %72
  store i64 0, i64* %13, align 8
  br label %100

100:                                              ; preds = %125, %99
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %103 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %100
  %107 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %108 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %113 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %119 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @circlebuf_push_back(%struct.TYPE_4__* %111, i32 %117, i32 %123)
  br label %125

125:                                              ; preds = %106
  %126 = load i64, i64* %13, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %13, align 8
  br label %100

128:                                              ; preds = %100
  br label %129

129:                                              ; preds = %128, %98
  br label %130

130:                                              ; preds = %129, %42
  %131 = load %struct.compressor_data*, %struct.compressor_data** %9, align 8
  %132 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %131, i32 0, i32 2
  %133 = call i32 @pthread_mutex_unlock(i32* %132)
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @circlebuf_push_back_zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
