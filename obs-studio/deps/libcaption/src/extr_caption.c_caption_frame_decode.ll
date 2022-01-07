; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, double, i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@LIBCAPTION_ERROR = common dso_local global i64 0, align 8
@LIBCAPTION_OK = common dso_local global i64 0, align 8
@LIBCAPTION_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @caption_frame_decode(%struct.TYPE_11__* %0, i64 %1, double %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @eia608_parity_varify(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @LIBCAPTION_ERROR, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  br label %179

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @eia608_is_padding(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* @LIBCAPTION_OK, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  br label %179

29:                                               ; preds = %18
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fcmp ogt double 0.000000e+00, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @LIBCAPTION_READY, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %29
  %41 = load double, double* %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store double %41, double* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @eia608_is_specialna(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @eia608_is_control(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48, %44
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i64, i64* @LIBCAPTION_OK, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  br label %179

66:                                               ; preds = %52, %48
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i64, i64* %6, align 8
  %80 = call i8* @xds_decode(%struct.TYPE_12__* %78, i64 %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %175

84:                                               ; preds = %66
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @eia608_is_xds(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load i64, i64* %6, align 8
  %92 = call i8* @xds_decode(%struct.TYPE_12__* %90, i64 %91)
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %174

96:                                               ; preds = %84
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @eia608_is_control(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @caption_frame_decode_control(%struct.TYPE_11__* %101, i64 %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %173

106:                                              ; preds = %96
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @eia608_is_basicna(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %6, align 8
  %112 = call i64 @eia608_is_specialna(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @eia608_is_westeu(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %150

118:                                              ; preds = %114, %110, %106
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = load i64, i64* @LIBCAPTION_OK, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %4, align 8
  br label %179

130:                                              ; preds = %118
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i64 @caption_frame_decode_text(%struct.TYPE_11__* %131, i64 %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* @LIBCAPTION_OK, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %130
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %143 = call i64 @caption_frame_painton(%struct.TYPE_11__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i64, i64* @LIBCAPTION_READY, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %141, %130
  br label %172

150:                                              ; preds = %114
  %151 = load i64, i64* %6, align 8
  %152 = call i64 @eia608_is_preamble(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call i64 @caption_frame_decode_preamble(%struct.TYPE_11__* %155, i64 %156)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %171

160:                                              ; preds = %150
  %161 = load i64, i64* %6, align 8
  %162 = call i64 @eia608_is_midrowchange(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i64 @caption_frame_decode_midrowchange(%struct.TYPE_11__* %165, i64 %166)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %164, %160
  br label %171

171:                                              ; preds = %170, %154
  br label %172

172:                                              ; preds = %171, %149
  br label %173

173:                                              ; preds = %172, %100
  br label %174

174:                                              ; preds = %173, %88
  br label %175

175:                                              ; preds = %174, %76
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %4, align 8
  br label %179

179:                                              ; preds = %175, %123, %59, %22, %11
  %180 = load i64, i64* %4, align 8
  ret i64 %180
}

declare dso_local i32 @eia608_parity_varify(i64) #1

declare dso_local i64 @eia608_is_padding(i64) #1

declare dso_local i64 @eia608_is_specialna(i64) #1

declare dso_local i64 @eia608_is_control(i64) #1

declare dso_local i8* @xds_decode(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @eia608_is_xds(i64) #1

declare dso_local i64 @caption_frame_decode_control(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @eia608_is_basicna(i64) #1

declare dso_local i64 @eia608_is_westeu(i64) #1

declare dso_local i64 @caption_frame_decode_text(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @caption_frame_painton(%struct.TYPE_11__*) #1

declare dso_local i64 @eia608_is_preamble(i64) #1

declare dso_local i64 @caption_frame_decode_preamble(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @eia608_is_midrowchange(i64) #1

declare dso_local i64 @caption_frame_decode_midrowchange(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
