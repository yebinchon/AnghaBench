; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_add_external_file.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_add_external_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer_params = type { i32, i32 }
%struct.MPContext = type { i32, i32, i64, i32, %struct.MPOpts* }
%struct.MPOpts = type { i64, i32, i32 }
%struct.mp_cancel = type { i32 }
%struct.demuxer = type { i32, i32 }
%struct.sh_stream = type { i32, i8* }
%struct.track = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"memory://\00", align 1
@__const.mp_add_external_file.params = private unnamed_addr constant %struct.demuxer_params { i32 1, i32 0 }, align 4
@STREAM_TYPE_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"No %sstreams in file %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Can not open external file %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_add_external_file(%struct.MPContext* %0, i8* %1, i32 %2, %struct.mp_cancel* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_cancel*, align 8
  %10 = alloca %struct.MPOpts*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.demuxer_params, align 4
  %13 = alloca %struct.demuxer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sh_stream*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sh_stream*, align 8
  %21 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mp_cancel* %3, %struct.mp_cancel** %9, align 8
  %22 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 4
  %24 = load %struct.MPOpts*, %struct.MPOpts** %23, align 8
  store %struct.MPOpts* %24, %struct.MPOpts** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.mp_cancel*, %struct.mp_cancel** %9, align 8
  %29 = call i64 @mp_cancel_test(%struct.mp_cancel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %4
  store i32 -1, i32* %5, align 4
  br label %236

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %38

38:                                               ; preds = %37, %32
  %39 = bitcast %struct.demuxer_params* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 bitcast (%struct.demuxer_params* @__const.mp_add_external_file.params to i8*), i64 8, i1 false)
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %51 [
    i32 128, label %41
    i32 129, label %46
  ]

41:                                               ; preds = %38
  %42 = load %struct.MPOpts*, %struct.MPOpts** %10, align 8
  %43 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %12, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %51

46:                                               ; preds = %38
  %47 = load %struct.MPOpts*, %struct.MPOpts** %10, align 8
  %48 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %12, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %38, %46, %41
  %52 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %53 = call i32 @mp_core_unlock(%struct.MPContext* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.mp_cancel*, %struct.mp_cancel** %9, align 8
  %56 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %57 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.demuxer* @demux_open_url(i8* %54, %struct.demuxer_params* %12, %struct.mp_cancel* %55, i32 %58)
  store %struct.demuxer* %59, %struct.demuxer** %13, align 8
  %60 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %61 = icmp ne %struct.demuxer* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %64 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %65 = call i32 @enable_demux_thread(%struct.MPContext* %63, %struct.demuxer* %64)
  br label %66

66:                                               ; preds = %62, %51
  %67 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %68 = call i32 @mp_core_lock(%struct.MPContext* %67)
  %69 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %70 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %225

74:                                               ; preds = %66
  %75 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %76 = icmp ne %struct.demuxer* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %225

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 128
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.MPOpts*, %struct.MPOpts** %10, align 8
  %83 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %88 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %89 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i32 @demux_set_ts_offset(%struct.demuxer* %87, i32 %91)
  br label %93

93:                                               ; preds = %86, %81, %78
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %114, %93
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %97 = call i32 @demux_get_num_stream(%struct.demuxer* %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call %struct.sh_stream* @demux_get_stream(%struct.demuxer* %100, i32 %101)
  store %struct.sh_stream* %102, %struct.sh_stream** %16, align 8
  %103 = load %struct.sh_stream*, %struct.sh_stream** %16, align 8
  %104 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %99
  store i32 1, i32* %14, align 4
  br label %117

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %94

117:                                              ; preds = %112, %94
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @stream_type_name(i32 %121)
  %123 = call i8* @mp_tprintf(i32 20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  store i8* %123, i8** %17, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %128

128:                                              ; preds = %127, %120
  %129 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 (%struct.MPContext*, i8*, i8*, ...) @MP_ERR(%struct.MPContext* %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %130, i8* %131)
  br label %225

133:                                              ; preds = %117
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %134

134:                                              ; preds = %213, %133
  %135 = load i32, i32* %19, align 4
  %136 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %137 = call i32 @demux_get_num_stream(%struct.demuxer* %136)
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %216

139:                                              ; preds = %134
  %140 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %141 = load i32, i32* %19, align 4
  %142 = call %struct.sh_stream* @demux_get_stream(%struct.demuxer* %140, i32 %141)
  store %struct.sh_stream* %142, %struct.sh_stream** %20, align 8
  %143 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %144 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %145 = load %struct.sh_stream*, %struct.sh_stream** %20, align 8
  %146 = call %struct.track* @add_stream_track(%struct.MPContext* %143, %struct.demuxer* %144, %struct.sh_stream* %145)
  store %struct.track* %146, %struct.track** %21, align 8
  %147 = load %struct.track*, %struct.track** %21, align 8
  %148 = getelementptr inbounds %struct.track, %struct.track* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.sh_stream*, %struct.sh_stream** %20, align 8
  %150 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %139
  %154 = load %struct.sh_stream*, %struct.sh_stream** %20, align 8
  %155 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load %struct.track*, %struct.track** %21, align 8
  %163 = load %struct.sh_stream*, %struct.sh_stream** %20, align 8
  %164 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @talloc_strdup(%struct.track* %162, i8* %165)
  %167 = load %struct.track*, %struct.track** %21, align 8
  %168 = getelementptr inbounds %struct.track, %struct.track* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  br label %176

169:                                              ; preds = %153, %139
  %170 = load %struct.track*, %struct.track** %21, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i8* @mp_basename(i8* %171)
  %173 = call i8* @talloc_strdup(%struct.track* %170, i8* %172)
  %174 = load %struct.track*, %struct.track** %21, align 8
  %175 = getelementptr inbounds %struct.track, %struct.track* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %169, %161
  %177 = load %struct.track*, %struct.track** %21, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = call i8* @talloc_strdup(%struct.track* %177, i8* %178)
  %180 = load %struct.track*, %struct.track** %21, align 8
  %181 = getelementptr inbounds %struct.track, %struct.track* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.sh_stream*, %struct.sh_stream** %20, align 8
  %183 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load %struct.track*, %struct.track** %21, align 8
  %189 = getelementptr inbounds %struct.track, %struct.track* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.track*, %struct.track** %21, align 8
  %191 = getelementptr inbounds %struct.track, %struct.track* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.track*, %struct.track** %21, align 8
  %194 = getelementptr inbounds %struct.track, %struct.track* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %18, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %176
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  %202 = load %struct.sh_stream*, %struct.sh_stream** %20, align 8
  %203 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %201, %197
  %208 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %209 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %212

212:                                              ; preds = %207, %201, %176
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %19, align 4
  br label %134

216:                                              ; preds = %134
  %217 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %218 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %221 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @mp_cancel_set_parent(i32 %219, i32 %222)
  %224 = load i32, i32* %18, align 4
  store i32 %224, i32* %5, align 4
  br label %236

225:                                              ; preds = %128, %77, %73
  %226 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %227 = call i32 @demux_cancel_and_free(%struct.demuxer* %226)
  %228 = load %struct.mp_cancel*, %struct.mp_cancel** %9, align 8
  %229 = call i64 @mp_cancel_test(%struct.mp_cancel* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %225
  %232 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %233 = load i8*, i8** %11, align 8
  %234 = call i32 (%struct.MPContext*, i8*, i8*, ...) @MP_ERR(%struct.MPContext* %232, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %231, %225
  store i32 -1, i32* %5, align 4
  br label %236

236:                                              ; preds = %235, %216, %31
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i64 @mp_cancel_test(%struct.mp_cancel*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_core_unlock(%struct.MPContext*) #1

declare dso_local %struct.demuxer* @demux_open_url(i8*, %struct.demuxer_params*, %struct.mp_cancel*, i32) #1

declare dso_local i32 @enable_demux_thread(%struct.MPContext*, %struct.demuxer*) #1

declare dso_local i32 @mp_core_lock(%struct.MPContext*) #1

declare dso_local i32 @demux_set_ts_offset(%struct.demuxer*, i32) #1

declare dso_local i32 @demux_get_num_stream(%struct.demuxer*) #1

declare dso_local %struct.sh_stream* @demux_get_stream(%struct.demuxer*, i32) #1

declare dso_local i8* @mp_tprintf(i32, i8*, i32) #1

declare dso_local i32 @stream_type_name(i32) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, i8*, ...) #1

declare dso_local %struct.track* @add_stream_track(%struct.MPContext*, %struct.demuxer*, %struct.sh_stream*) #1

declare dso_local i8* @talloc_strdup(%struct.track*, i8*) #1

declare dso_local i8* @mp_basename(i8*) #1

declare dso_local i32 @mp_cancel_set_parent(i32, i32) #1

declare dso_local i32 @demux_cancel_and_free(%struct.demuxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
