; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nvenc_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nvenc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (i64)*, i32 (i64, %struct.TYPE_24__*)* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.nvenc_data = type { i64, %struct.TYPE_19__, %struct.TYPE_19__, %struct.TYPE_19__, %struct.TYPE_19__, i32, %struct.nvenc_data*, %struct.nvenc_data*, %struct.TYPE_27__*, %struct.TYPE_28__*, i64, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_25__*, %struct.TYPE_26__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_25__*)* }
%struct.TYPE_26__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_26__*)* }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_27__*)* }
%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_28__*)* }

@NV_ENC_PIC_PARAMS_VER = common dso_local global i32 0, align 4
@NV_ENC_PIC_FLAG_EOS = common dso_local global i32 0, align 4
@nv = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nvenc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvenc_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvenc_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.nvenc_data*
  store %struct.nvenc_data* %13, %struct.nvenc_data** %3, align 8
  %14 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %15 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %14, i32 0, i32 11
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %20 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  %22 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %23 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %31 = load i32, i32* @NV_ENC_PIC_PARAMS_VER, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @NV_ENC_PIC_FLAG_EOS, align 4
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32 (i64, %struct.TYPE_24__*)*, i32 (i64, %struct.TYPE_24__*)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @nv, i32 0, i32 1), align 8
  %39 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %40 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %39, i32 0, i32 10
  %41 = load i64, i64* %40, align 8
  %42 = call i32 %38(i64 %41, %struct.TYPE_24__* %6)
  %43 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %44 = call i32 @get_encoded_packet(%struct.nvenc_data* %43, i32 1)
  br label %45

45:                                               ; preds = %18, %1
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %49 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %55 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %56 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 %59
  %61 = call i32 @nv_texture_free(%struct.nvenc_data* %54, %struct.TYPE_17__* %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %46

65:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %69 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %75 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %76 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 %79
  %81 = call i32 @nv_bitstream_free(%struct.nvenc_data* %74, %struct.TYPE_17__* %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %66

85:                                               ; preds = %66
  %86 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %87 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @nv, i32 0, i32 0), align 8
  %92 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %93 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = call i32 %91(i64 %94)
  br label %96

96:                                               ; preds = %90, %85
  store i64 0, i64* %9, align 8
  br label %97

97:                                               ; preds = %135, %96
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %100 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %98, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %97
  %105 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %106 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %111, align 8
  store %struct.TYPE_26__* %112, %struct.TYPE_26__** %10, align 8
  %113 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %114 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %119, align 8
  store %struct.TYPE_25__* %120, %struct.TYPE_25__** %11, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %124, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %127 = call i32 %125(%struct.TYPE_26__* %126)
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %131, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %134 = call i32 %132(%struct.TYPE_25__* %133)
  br label %135

135:                                              ; preds = %104
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %9, align 8
  br label %97

138:                                              ; preds = %97
  %139 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %140 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %139, i32 0, i32 9
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %140, align 8
  %142 = icmp ne %struct.TYPE_28__* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %145 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %144, i32 0, i32 9
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %149, align 8
  %151 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %152 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %151, i32 0, i32 9
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %152, align 8
  %154 = call i32 %150(%struct.TYPE_28__* %153)
  br label %155

155:                                              ; preds = %143, %138
  %156 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %157 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %156, i32 0, i32 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %157, align 8
  %159 = icmp ne %struct.TYPE_27__* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %162 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %161, i32 0, i32 8
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %166, align 8
  %168 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %169 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %168, i32 0, i32 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %169, align 8
  %171 = call i32 %167(%struct.TYPE_27__* %170)
  br label %172

172:                                              ; preds = %160, %155
  %173 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %174 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %173, i32 0, i32 7
  %175 = load %struct.nvenc_data*, %struct.nvenc_data** %174, align 8
  %176 = call i32 @bfree(%struct.nvenc_data* %175)
  %177 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %178 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %177, i32 0, i32 6
  %179 = load %struct.nvenc_data*, %struct.nvenc_data** %178, align 8
  %180 = call i32 @bfree(%struct.nvenc_data* %179)
  %181 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %182 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %181, i32 0, i32 5
  %183 = call i32 @circlebuf_free(i32* %182)
  %184 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %185 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %184, i32 0, i32 4
  %186 = bitcast %struct.TYPE_19__* %185 to { i64, %struct.TYPE_17__* }*
  %187 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %186, i32 0, i32 1
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = call i32 @da_free(i64 %188, %struct.TYPE_17__* %190)
  %192 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %193 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %192, i32 0, i32 3
  %194 = bitcast %struct.TYPE_19__* %193 to { i64, %struct.TYPE_17__* }*
  %195 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %194, i32 0, i32 1
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = call i32 @da_free(i64 %196, %struct.TYPE_17__* %198)
  %200 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %201 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %200, i32 0, i32 2
  %202 = bitcast %struct.TYPE_19__* %201 to { i64, %struct.TYPE_17__* }*
  %203 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %202, i32 0, i32 1
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = call i32 @da_free(i64 %204, %struct.TYPE_17__* %206)
  %208 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %209 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %208, i32 0, i32 1
  %210 = bitcast %struct.TYPE_19__* %209 to { i64, %struct.TYPE_17__* }*
  %211 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %210, i32 0, i32 1
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  %215 = call i32 @da_free(i64 %212, %struct.TYPE_17__* %214)
  %216 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %217 = call i32 @bfree(%struct.nvenc_data* %216)
  ret void
}

declare dso_local i32 @get_encoded_packet(%struct.nvenc_data*, i32) #1

declare dso_local i32 @nv_texture_free(%struct.nvenc_data*, %struct.TYPE_17__*) #1

declare dso_local i32 @nv_bitstream_free(%struct.nvenc_data*, %struct.TYPE_17__*) #1

declare dso_local i32 @bfree(%struct.nvenc_data*) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @da_free(i64, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
