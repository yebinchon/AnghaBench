; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_parse_avc_header.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_parse_avc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"codec: avc header profile=%ui, compat=%ui, level=%ui, nal_bytes=%ui, ref_frames=%ui, width=%ui, height=%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*)* @ngx_rtmp_codec_parse_avc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_codec_parse_avc_header(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %20 = call %struct.TYPE_15__* @ngx_rtmp_get_module_ctx(%struct.TYPE_14__* %18, i32 %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %16, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ngx_rtmp_bit_init_reader(i32* %17, i32 %25, i32 %30)
  %32 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 48)
  %33 = call i32 @ngx_rtmp_bit_read_8(i32* %17)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = call i32 @ngx_rtmp_bit_read_8(i32* %17)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = call i32 @ngx_rtmp_bit_read_8(i32* %17)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = call i32 @ngx_rtmp_bit_read_8(i32* %17)
  %43 = and i32 %42, 3
  %44 = add nsw i32 %43, 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = call i32 @ngx_rtmp_bit_read_8(i32* %17)
  %48 = and i32 %47, 31
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  br label %210

51:                                               ; preds = %2
  %52 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 16)
  %53 = call i32 @ngx_rtmp_bit_read_8(i32* %17)
  %54 = icmp ne i32 %53, 103
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %210

56:                                               ; preds = %51
  %57 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 8)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 8)
  %60 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 8)
  %61 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 100
  br i1 %63, label %85, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 110
  br i1 %66, label %85, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 122
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 244
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 44
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 83
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 86
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 118
  br i1 %84, label %85, label %115

85:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %56
  %86 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  br label %91

91:                                               ; preds = %89, %85
  %92 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  %93 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  %94 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %95 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %110, %97
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 3
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 8, i32 12
  %104 = icmp ult i32 %99, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %98

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %91
  br label %115

115:                                              ; preds = %114, %82
  %116 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  %117 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  switch i32 %117, label %135 [
    i32 0, label %118
    i32 1, label %120
  ]

118:                                              ; preds = %115
  %119 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  br label %135

120:                                              ; preds = %115
  %121 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %122 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  %123 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  %124 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %124, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %131, %120
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  br label %131

131:                                              ; preds = %129
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %125

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %115, %118
  %136 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %140 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %140, i32* %6, align 4
  %141 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %141, i32* %7, align 4
  %142 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %135
  %147 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  br label %148

148:                                              ; preds = %146, %135
  %149 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %150 = call i64 @ngx_rtmp_bit_read(i32* %17, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %153, i32* %8, align 4
  %154 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %154, i32* %9, align 4
  %155 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %155, i32* %10, align 4
  %156 = call i32 @ngx_rtmp_bit_read_golomb(i32* %17)
  store i32 %156, i32* %11, align 4
  br label %158

157:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %152
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %160, 16
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %162, %163
  %165 = mul nsw i32 %164, 2
  %166 = sub nsw i32 %161, %165
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sub nsw i32 2, %169
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  %173 = mul nsw i32 %170, %172
  %174 = mul nsw i32 %173, 16
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %175, %176
  %178 = mul nsw i32 %177, 2
  %179 = sub nsw i32 %174, %178
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ngx_log_debug7(i32 %182, i32 %187, i32 0, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %193, i32 %196, i32 %199, i32 %202, i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %158, %55, %50
  ret void
}

declare dso_local %struct.TYPE_15__* @ngx_rtmp_get_module_ctx(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_rtmp_bit_init_reader(i32*, i32, i32) #1

declare dso_local i64 @ngx_rtmp_bit_read(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_bit_read_8(i32*) #1

declare dso_local i32 @ngx_rtmp_bit_read_golomb(i32*) #1

declare dso_local i32 @ngx_log_debug7(i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
