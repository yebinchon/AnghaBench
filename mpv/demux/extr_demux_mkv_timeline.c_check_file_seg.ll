; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_check_file_seg.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_check_file_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_ctx = type { i32, %struct.demuxer**, %struct.matroska_segment_uid*, i32, %struct.TYPE_3__* }
%struct.demuxer = type { i32, %struct.matroska_data }
%struct.matroska_data = type { i32, %struct.matroska_chapter*, %struct.TYPE_4__ }
%struct.matroska_chapter = type { %struct.matroska_segment_uid, i32 }
%struct.matroska_segment_uid = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.mp_cancel* }
%struct.mp_cancel = type { i32 }
%struct.demuxer_params = type { i8*, i32, i32, i32*, i32, %struct.matroska_segment_uid* }

@.str = private unnamed_addr constant [4 x i8] c"mkv\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Match for source %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tl_ctx*, i8*, i32)* @check_file_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file_seg(%struct.tl_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.demuxer_params, align 8
  %10 = alloca %struct.mp_cancel*, align 8
  %11 = alloca %struct.demuxer*, align 8
  %12 = alloca %struct.matroska_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.matroska_segment_uid*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.matroska_chapter*, align 8
  store %struct.tl_ctx* %0, %struct.tl_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %9, i32 0, i32 1
  %19 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %9, i32 0, i32 2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %9, i32 0, i32 3
  store i32* %8, i32** %24, align 8
  %25 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %9, i32 0, i32 4
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %9, i32 0, i32 5
  %27 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %27, i32 0, i32 2
  %29 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %28, align 8
  store %struct.matroska_segment_uid* %29, %struct.matroska_segment_uid** %26, align 8
  %30 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.mp_cancel*, %struct.mp_cancel** %33, align 8
  store %struct.mp_cancel* %34, %struct.mp_cancel** %10, align 8
  %35 = load %struct.mp_cancel*, %struct.mp_cancel** %10, align 8
  %36 = call i64 @mp_cancel_test(%struct.mp_cancel* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %187

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.mp_cancel*, %struct.mp_cancel** %10, align 8
  %42 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.demuxer* @demux_open_url(i8* %40, %struct.demuxer_params* %9, %struct.mp_cancel* %41, i32 %44)
  store %struct.demuxer* %45, %struct.demuxer** %11, align 8
  %46 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %47 = icmp ne %struct.demuxer* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %187

49:                                               ; preds = %39
  %50 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %51 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %50, i32 0, i32 1
  store %struct.matroska_data* %51, %struct.matroska_data** %12, align 8
  store i32 1, i32* %13, align 4
  br label %52

52:                                               ; preds = %180, %49
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %183

58:                                               ; preds = %52
  %59 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %59, i32 0, i32 2
  %61 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.matroska_segment_uid, %struct.matroska_segment_uid* %61, i64 %63
  store %struct.matroska_segment_uid* %64, %struct.matroska_segment_uid** %14, align 8
  %65 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %65, i32 0, i32 1
  %67 = load %struct.demuxer**, %struct.demuxer*** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.demuxer*, %struct.demuxer** %67, i64 %69
  %71 = load %struct.demuxer*, %struct.demuxer** %70, align 8
  %72 = icmp ne %struct.demuxer* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  br label %180

74:                                               ; preds = %58
  %75 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %14, align 8
  %76 = getelementptr inbounds %struct.matroska_segment_uid, %struct.matroska_segment_uid* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.matroska_data*, %struct.matroska_data** %12, align 8
  %79 = getelementptr inbounds %struct.matroska_data, %struct.matroska_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @memcmp(i32 %77, i32 %81, i32 16)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %179, label %84

84:                                               ; preds = %74
  %85 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %14, align 8
  %86 = getelementptr inbounds %struct.matroska_segment_uid, %struct.matroska_segment_uid* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %14, align 8
  %91 = getelementptr inbounds %struct.matroska_segment_uid, %struct.matroska_segment_uid* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.matroska_data*, %struct.matroska_data** %12, align 8
  %94 = getelementptr inbounds %struct.matroska_data, %struct.matroska_data* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %98, label %179

98:                                               ; preds = %89, %84
  %99 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %102 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @MP_INFO(%struct.tl_ctx* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %14, align 8
  %106 = getelementptr inbounds %struct.matroska_segment_uid, %struct.matroska_segment_uid* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %98
  %110 = load %struct.matroska_data*, %struct.matroska_data** %12, align 8
  %111 = getelementptr inbounds %struct.matroska_data, %struct.matroska_data* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %171

113:                                              ; preds = %98
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %167, %113
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.matroska_data*, %struct.matroska_data** %12, align 8
  %117 = getelementptr inbounds %struct.matroska_data, %struct.matroska_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %170

120:                                              ; preds = %114
  %121 = load %struct.matroska_data*, %struct.matroska_data** %12, align 8
  %122 = getelementptr inbounds %struct.matroska_data, %struct.matroska_data* %121, i32 0, i32 1
  %123 = load %struct.matroska_chapter*, %struct.matroska_chapter** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.matroska_chapter, %struct.matroska_chapter* %123, i64 %125
  store %struct.matroska_chapter* %126, %struct.matroska_chapter** %16, align 8
  %127 = load %struct.matroska_chapter*, %struct.matroska_chapter** %16, align 8
  %128 = getelementptr inbounds %struct.matroska_chapter, %struct.matroska_chapter* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %120
  br label %167

132:                                              ; preds = %120
  %133 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %134 = load %struct.matroska_chapter*, %struct.matroska_chapter** %16, align 8
  %135 = getelementptr inbounds %struct.matroska_chapter, %struct.matroska_chapter* %134, i32 0, i32 0
  %136 = call i64 @has_source_request(%struct.tl_ctx* %133, %struct.matroska_segment_uid* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %167

139:                                              ; preds = %132
  %140 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %141 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %140, i32 0, i32 2
  %142 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %141, align 8
  %143 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %144 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @MP_TARRAY_GROW(i32* null, %struct.matroska_segment_uid* %142, i32 %145)
  %147 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %147, i32 0, i32 2
  %149 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %148, align 8
  %150 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %151 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.matroska_segment_uid, %struct.matroska_segment_uid* %149, i64 %153
  %155 = load %struct.matroska_chapter*, %struct.matroska_chapter** %16, align 8
  %156 = getelementptr inbounds %struct.matroska_chapter, %struct.matroska_chapter* %155, i32 0, i32 0
  %157 = bitcast %struct.matroska_segment_uid* %154 to i8*
  %158 = bitcast %struct.matroska_segment_uid* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 8 %158, i64 16, i1 false)
  %159 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %160 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %159, i32 0, i32 1
  %161 = load %struct.demuxer**, %struct.demuxer*** %160, align 8
  %162 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %163 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.demuxer** %161, i64 %165, i32* null)
  br label %167

167:                                              ; preds = %139, %138, %131
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %114

170:                                              ; preds = %114
  br label %171

171:                                              ; preds = %170, %109
  %172 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %173 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %174 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %173, i32 0, i32 1
  %175 = load %struct.demuxer**, %struct.demuxer*** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.demuxer*, %struct.demuxer** %175, i64 %177
  store %struct.demuxer* %172, %struct.demuxer** %178, align 8
  store i32 1, i32* %4, align 4
  br label %187

179:                                              ; preds = %89, %74
  br label %180

180:                                              ; preds = %179, %73
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %52

183:                                              ; preds = %52
  %184 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %185 = call i32 @demux_free(%struct.demuxer* %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %171, %48, %38
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i64 @mp_cancel_test(%struct.mp_cancel*) #1

declare dso_local %struct.demuxer* @demux_open_url(i8*, %struct.demuxer_params*, %struct.mp_cancel*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @MP_INFO(%struct.tl_ctx*, i8*, i32, i32) #1

declare dso_local i64 @has_source_request(%struct.tl_ctx*, %struct.matroska_segment_uid*) #1

declare dso_local i32 @MP_TARRAY_GROW(i32*, %struct.matroska_segment_uid*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.demuxer**, i64, i32*) #1

declare dso_local i32 @demux_free(%struct.demuxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
