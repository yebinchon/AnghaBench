; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_frame_duration_process.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_frame_duration_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.frame_duration_priv* }
%struct.frame_duration_priv = type { %struct.mp_image* }
%struct.mp_image = type { i64, i64 }
%struct.mp_frame = type { i64, %struct.mp_image* }

@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @frame_duration_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_duration_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.frame_duration_priv*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_frame, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_frame, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 1
  %10 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %9, align 8
  store %struct.frame_duration_priv* %10, %struct.frame_duration_priv** %3, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %12 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %17 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mp_pin_can_transfer_data(i32 %15, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %171

24:                                               ; preds = %1
  %25 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %26 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call { i64, %struct.mp_image* } @mp_pin_out_read(i32 %29)
  %31 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %32 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %31, i32 0, i32 0
  %33 = extractvalue { i64, %struct.mp_image* } %30, 0
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %31, i32 0, i32 1
  %35 = extractvalue { i64, %struct.mp_image* } %30, 1
  store %struct.mp_image* %35, %struct.mp_image** %34, align 8
  %36 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MP_FRAME_EOF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %24
  %41 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %42 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %41, i32 0, i32 0
  %43 = load %struct.mp_image*, %struct.mp_image** %42, align 8
  %44 = icmp ne %struct.mp_image* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %47 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %52 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %53 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %52, i32 0, i32 0
  %54 = load %struct.mp_image*, %struct.mp_image** %53, align 8
  %55 = call { i64, %struct.mp_image* } @MAKE_FRAME(i64 %51, %struct.mp_image* %54)
  %56 = bitcast %struct.mp_frame* %5 to { i64, %struct.mp_image* }*
  %57 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %56, i32 0, i32 0
  %58 = extractvalue { i64, %struct.mp_image* } %55, 0
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %56, i32 0, i32 1
  %60 = extractvalue { i64, %struct.mp_image* } %55, 1
  store %struct.mp_image* %60, %struct.mp_image** %59, align 8
  %61 = bitcast %struct.mp_frame* %5 to { i64, %struct.mp_image* }*
  %62 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %61, i32 0, i32 1
  %65 = load %struct.mp_image*, %struct.mp_image** %64, align 8
  %66 = call i32 @mp_pin_in_write(i32 %50, i64 %63, %struct.mp_image* %65)
  %67 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %68 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %67, i32 0, i32 0
  store %struct.mp_image* null, %struct.mp_image** %68, align 8
  %69 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %70 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mp_pin_out_repeat_eof(i32 %73)
  br label %171

75:                                               ; preds = %40, %24
  %76 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %158

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %82 = load %struct.mp_image*, %struct.mp_image** %81, align 8
  store %struct.mp_image* %82, %struct.mp_image** %6, align 8
  %83 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %84 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %83, i32 0, i32 0
  %85 = load %struct.mp_image*, %struct.mp_image** %84, align 8
  %86 = icmp ne %struct.mp_image* %85, null
  br i1 %86, label %87, label %147

87:                                               ; preds = %80
  %88 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %89 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %88, i32 0, i32 0
  %90 = load %struct.mp_image*, %struct.mp_image** %89, align 8
  %91 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %87
  %96 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %97 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %103 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %106 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %105, i32 0, i32 0
  %107 = load %struct.mp_image*, %struct.mp_image** %106, align 8
  %108 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %104, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %101
  %112 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %113 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %116 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %115, i32 0, i32 0
  %117 = load %struct.mp_image*, %struct.mp_image** %116, align 8
  %118 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %114, %119
  %121 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %122 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %121, i32 0, i32 0
  %123 = load %struct.mp_image*, %struct.mp_image** %122, align 8
  %124 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %123, i32 0, i32 1
  store i64 %120, i64* %124, align 8
  br label %125

125:                                              ; preds = %111, %101, %95, %87
  %126 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %127 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %132 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %133 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %132, i32 0, i32 0
  %134 = load %struct.mp_image*, %struct.mp_image** %133, align 8
  %135 = call { i64, %struct.mp_image* } @MAKE_FRAME(i64 %131, %struct.mp_image* %134)
  %136 = bitcast %struct.mp_frame* %7 to { i64, %struct.mp_image* }*
  %137 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %136, i32 0, i32 0
  %138 = extractvalue { i64, %struct.mp_image* } %135, 0
  store i64 %138, i64* %137, align 8
  %139 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %136, i32 0, i32 1
  %140 = extractvalue { i64, %struct.mp_image* } %135, 1
  store %struct.mp_image* %140, %struct.mp_image** %139, align 8
  %141 = bitcast %struct.mp_frame* %7 to { i64, %struct.mp_image* }*
  %142 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %141, i32 0, i32 1
  %145 = load %struct.mp_image*, %struct.mp_image** %144, align 8
  %146 = call i32 @mp_pin_in_write(i32 %130, i64 %143, %struct.mp_image* %145)
  br label %154

147:                                              ; preds = %80
  %148 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %149 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @mp_pin_out_request_data(i32 %152)
  br label %154

154:                                              ; preds = %147, %125
  %155 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %156 = load %struct.frame_duration_priv*, %struct.frame_duration_priv** %3, align 8
  %157 = getelementptr inbounds %struct.frame_duration_priv, %struct.frame_duration_priv* %156, i32 0, i32 0
  store %struct.mp_image* %155, %struct.mp_image** %157, align 8
  br label %170

158:                                              ; preds = %75
  %159 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %160 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %165 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %164, i32 0, i32 1
  %168 = load %struct.mp_image*, %struct.mp_image** %167, align 8
  %169 = call i32 @mp_pin_in_write(i32 %163, i64 %166, %struct.mp_image* %168)
  br label %170

170:                                              ; preds = %158, %154
  br label %171

171:                                              ; preds = %23, %170, %45
  ret void
}

declare dso_local i32 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local { i64, %struct.mp_image* } @mp_pin_out_read(i32) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, %struct.mp_image*) #1

declare dso_local { i64, %struct.mp_image* } @MAKE_FRAME(i64, %struct.mp_image*) #1

declare dso_local i32 @mp_pin_out_repeat_eof(i32) #1

declare dso_local i32 @mp_pin_out_request_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
