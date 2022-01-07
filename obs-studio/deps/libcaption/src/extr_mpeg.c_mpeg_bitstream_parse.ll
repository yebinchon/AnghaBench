; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_mpeg_bitstream_parse.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_mpeg_bitstream_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32* }

@MAX_NALU_SIZE = common dso_local global i64 0, align 8
@LIBCAPTION_ERROR = common dso_local global i64 0, align 8
@LIBCAPTION_OK = common dso_local global i64 0, align 8
@STREAM_TYPE_H262 = common dso_local global i32 0, align 4
@STREAM_TYPE_H264 = common dso_local global i32 0, align 4
@STREAM_TYPE_H265 = common dso_local global i32 0, align 4
@sei_type_user_data_registered_itu_t_t35 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mpeg_bitstream_parse(%struct.TYPE_6__* %0, i32* %1, i32* %2, i64 %3, i32 %4, double %5, double %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  %22 = load i64, i64* @MAX_NALU_SIZE, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i64, i64* @LIBCAPTION_ERROR, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  store i64 0, i64* %8, align 8
  br label %222

31:                                               ; preds = %7
  %32 = load i64, i64* @MAX_NALU_SIZE, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %35, %36
  %38 = icmp ule i64 %32, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i64, i64* @MAX_NALU_SIZE, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %39, %31
  %46 = load i64, i64* @LIBCAPTION_OK, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32*, i32** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @memcpy(i32* %55, i32* %56, i64 %57)
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %201, %45
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LIBCAPTION_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @find_start_code(i32* %74, i64 %77)
  store i64 %78, i64* %18, align 8
  %79 = icmp ult i64 0, %78
  br label %80

80:                                               ; preds = %70, %64
  %81 = phi i1 [ false, %64 ], [ %79, %70 ]
  br i1 %81, label %82, label %220

82:                                               ; preds = %80
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @mpeg_bitstream_packet_type(%struct.TYPE_6__* %83, i32 %84)
  switch i32 %85, label %86 [
    i32 130, label %87
    i32 129, label %123
    i32 128, label %123
  ]

86:                                               ; preds = %82
  br label %201

87:                                               ; preds = %82
  store i64 4, i64* %17, align 8
  %88 = load i32, i32* @STREAM_TYPE_H262, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %87
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* %17, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = load double, double* %14, align 8
  %98 = load double, double* %15, align 8
  %99 = fadd double %97, %98
  %100 = call i32* @_mpeg_bitstream_cea708_emplace_back(%struct.TYPE_6__* %96, double %99)
  store i32* %100, i32** %19, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %17, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %17, align 8
  %111 = sub i64 %109, %110
  %112 = load i32*, i32** %19, align 8
  %113 = call i32 @cea708_parse_h262(i32* %108, i64 %111, i32* %112)
  %114 = call i8* @libcaption_status_update(i64 %103, i32 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = load double, double* %14, align 8
  %121 = call i32 @_mpeg_bitstream_cea708_sort_flush(%struct.TYPE_6__* %118, i32* %119, double %120)
  br label %122

122:                                              ; preds = %95, %91, %87
  br label %201

123:                                              ; preds = %82, %82
  %124 = load i32, i32* @STREAM_TYPE_H264, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @STREAM_TYPE_H265, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 5, i32 0
  br label %134

134:                                              ; preds = %128, %127
  %135 = phi i32 [ 4, %127 ], [ %133, %128 ]
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* %17, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %200

139:                                              ; preds = %134
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %17, align 8
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %143, label %200

143:                                              ; preds = %139
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %17, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i64, i64* %18, align 8
  %153 = load i64, i64* %17, align 8
  %154 = sub i64 %152, %153
  %155 = load double, double* %14, align 8
  %156 = load double, double* %15, align 8
  %157 = fadd double %155, %156
  %158 = call i32 @sei_parse(i32* %16, i32* %151, i64 %154, double %157)
  %159 = call i8* @libcaption_status_update(i64 %146, i32 %158)
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = call i32* @sei_message_head(i32* %16)
  store i32* %163, i32** %20, align 8
  br label %164

164:                                              ; preds = %196, %143
  %165 = load i32*, i32** %20, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %199

167:                                              ; preds = %164
  %168 = load i32, i32* @sei_type_user_data_registered_itu_t_t35, align 4
  %169 = load i32*, i32** %20, align 8
  %170 = call i32 @sei_message_type(i32* %169)
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %167
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = load double, double* %14, align 8
  %175 = load double, double* %15, align 8
  %176 = fadd double %174, %175
  %177 = call i32* @_mpeg_bitstream_cea708_emplace_back(%struct.TYPE_6__* %173, double %176)
  store i32* %177, i32** %21, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i32*, i32** %20, align 8
  %182 = call i32 @sei_message_data(i32* %181)
  %183 = load i32*, i32** %20, align 8
  %184 = call i32 @sei_message_size(i32* %183)
  %185 = load i32*, i32** %21, align 8
  %186 = call i32 @cea708_parse_h264(i32 %182, i32 %184, i32* %185)
  %187 = call i8* @libcaption_status_update(i64 %180, i32 %186)
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = load double, double* %14, align 8
  %194 = call i32 @_mpeg_bitstream_cea708_sort_flush(%struct.TYPE_6__* %191, i32* %192, double %193)
  br label %195

195:                                              ; preds = %172, %167
  br label %196

196:                                              ; preds = %195
  %197 = load i32*, i32** %20, align 8
  %198 = call i32* @sei_message_next(i32* %197)
  store i32* %198, i32** %20, align 8
  br label %164

199:                                              ; preds = %164
  br label %200

200:                                              ; preds = %199, %139, %134
  br label %201

201:                                              ; preds = %200, %122, %86
  %202 = load i64, i64* %18, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = sub i64 %205, %202
  store i64 %206, i64* %204, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %18, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @memmove(i32* %210, i32* %215, i64 %218)
  br label %64

220:                                              ; preds = %80
  %221 = load i64, i64* %12, align 8
  store i64 %221, i64* %8, align 8
  br label %222

222:                                              ; preds = %220, %27
  %223 = load i64, i64* %8, align 8
  ret i64 %223
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @find_start_code(i32*, i64) #1

declare dso_local i32 @mpeg_bitstream_packet_type(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @_mpeg_bitstream_cea708_emplace_back(%struct.TYPE_6__*, double) #1

declare dso_local i8* @libcaption_status_update(i64, i32) #1

declare dso_local i32 @cea708_parse_h262(i32*, i64, i32*) #1

declare dso_local i32 @_mpeg_bitstream_cea708_sort_flush(%struct.TYPE_6__*, i32*, double) #1

declare dso_local i32 @sei_parse(i32*, i32*, i64, double) #1

declare dso_local i32* @sei_message_head(i32*) #1

declare dso_local i32 @sei_message_type(i32*) #1

declare dso_local i32 @cea708_parse_h264(i32, i32, i32*) #1

declare dso_local i32 @sei_message_data(i32*) #1

declare dso_local i32 @sei_message_size(i32*) #1

declare dso_local i32* @sei_message_next(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
