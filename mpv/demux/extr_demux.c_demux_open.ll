; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_open.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer_desc = type { i32 }
%struct.demuxer = type { i32 }
%struct.stream = type { i8*, i32, i32, i32, i32, i32 }
%struct.mp_cancel = type { i32 }
%struct.demuxer_params = type { i8* }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }
%struct.parent_stream_info = type { %struct.mp_log*, %struct.mp_cancel*, i32, i32, i32 }

@d_normal = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"!demux\00", align 1
@d_request = common dso_local global i32* null, align 8
@d_force = common dso_local global i32* null, align 8
@demuxer_list = common dso_local global %struct.demuxer_desc** null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Demuxer %s does not exist.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Trying demuxers for level=%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demuxer* (%struct.stream*, %struct.mp_cancel*, %struct.demuxer_params*, %struct.mpv_global*)* @demux_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demuxer* @demux_open(%struct.stream* %0, %struct.mp_cancel* %1, %struct.demuxer_params* %2, %struct.mpv_global* %3) #0 {
  %5 = alloca %struct.stream*, align 8
  %6 = alloca %struct.mp_cancel*, align 8
  %7 = alloca %struct.demuxer_params*, align 8
  %8 = alloca %struct.mpv_global*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.demuxer_desc*, align 8
  %11 = alloca %struct.mp_log*, align 8
  %12 = alloca %struct.demuxer*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.parent_stream_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.demuxer_desc*, align 8
  store %struct.stream* %0, %struct.stream** %5, align 8
  store %struct.mp_cancel* %1, %struct.mp_cancel** %6, align 8
  store %struct.demuxer_params* %2, %struct.demuxer_params** %7, align 8
  store %struct.mpv_global* %3, %struct.mpv_global** %8, align 8
  %20 = load i32*, i32** @d_normal, align 8
  store i32* %20, i32** %9, align 8
  store %struct.demuxer_desc* null, %struct.demuxer_desc** %10, align 8
  %21 = load %struct.mpv_global*, %struct.mpv_global** %8, align 8
  %22 = getelementptr inbounds %struct.mpv_global, %struct.mpv_global* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.mp_log* @mp_log_new(i32* null, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.mp_log* %24, %struct.mp_log** %11, align 8
  store %struct.demuxer* null, %struct.demuxer** %12, align 8
  %25 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %26 = icmp ne %struct.demuxer_params* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %29 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ null, %31 ]
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.stream*, %struct.stream** %5, align 8
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %13, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %102

43:                                               ; preds = %40
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %43
  %50 = load %struct.stream*, %struct.stream** %5, align 8
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %102, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** @d_request, align 8
  store i32* %55, i32** %9, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 43
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %13, align 8
  %64 = load i32*, i32** @d_force, align 8
  store i32* %64, i32** %9, align 8
  br label %65

65:                                               ; preds = %61, %54
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %91, %65
  %67 = load %struct.demuxer_desc**, %struct.demuxer_desc*** @demuxer_list, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.demuxer_desc*, %struct.demuxer_desc** %67, i64 %69
  %71 = load %struct.demuxer_desc*, %struct.demuxer_desc** %70, align 8
  %72 = icmp ne %struct.demuxer_desc* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.demuxer_desc**, %struct.demuxer_desc*** @demuxer_list, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.demuxer_desc*, %struct.demuxer_desc** %74, i64 %76
  %78 = load %struct.demuxer_desc*, %struct.demuxer_desc** %77, align 8
  %79 = getelementptr inbounds %struct.demuxer_desc, %struct.demuxer_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = call i64 @strcmp(i32 %80, i8* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.demuxer_desc**, %struct.demuxer_desc*** @demuxer_list, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.demuxer_desc*, %struct.demuxer_desc** %85, i64 %87
  %89 = load %struct.demuxer_desc*, %struct.demuxer_desc** %88, align 8
  store %struct.demuxer_desc* %89, %struct.demuxer_desc** %10, align 8
  br label %90

90:                                               ; preds = %84, %73
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %66

94:                                               ; preds = %66
  %95 = load %struct.demuxer_desc*, %struct.demuxer_desc** %10, align 8
  %96 = icmp ne %struct.demuxer_desc* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @mp_err(%struct.mp_log* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  br label %182

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %49, %43, %40
  %103 = getelementptr inbounds %struct.parent_stream_info, %struct.parent_stream_info* %15, i32 0, i32 0
  %104 = load %struct.stream*, %struct.stream** %5, align 8
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.mp_log* @talloc_strdup(i32* null, i32 %106)
  store %struct.mp_log* %107, %struct.mp_log** %103, align 8
  %108 = getelementptr inbounds %struct.parent_stream_info, %struct.parent_stream_info* %15, i32 0, i32 1
  %109 = load %struct.mp_cancel*, %struct.mp_cancel** %6, align 8
  store %struct.mp_cancel* %109, %struct.mp_cancel** %108, align 8
  %110 = getelementptr inbounds %struct.parent_stream_info, %struct.parent_stream_info* %15, i32 0, i32 2
  %111 = load %struct.stream*, %struct.stream** %5, align 8
  %112 = getelementptr inbounds %struct.stream, %struct.stream* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %110, align 8
  %114 = getelementptr inbounds %struct.parent_stream_info, %struct.parent_stream_info* %15, i32 0, i32 3
  %115 = load %struct.stream*, %struct.stream** %5, align 8
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %114, align 4
  %118 = getelementptr inbounds %struct.parent_stream_info, %struct.parent_stream_info* %15, i32 0, i32 4
  %119 = load %struct.stream*, %struct.stream** %5, align 8
  %120 = getelementptr inbounds %struct.stream, %struct.stream* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %118, align 8
  store i32 0, i32* %16, align 4
  br label %122

122:                                              ; preds = %178, %102
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %181

129:                                              ; preds = %122
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %17, align 4
  %135 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @d_level(i32 %136)
  %138 = call i32 @mp_verbose(%struct.mp_log* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  store i32 0, i32* %18, align 4
  br label %139

139:                                              ; preds = %174, %129
  %140 = load %struct.demuxer_desc**, %struct.demuxer_desc*** @demuxer_list, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.demuxer_desc*, %struct.demuxer_desc** %140, i64 %142
  %144 = load %struct.demuxer_desc*, %struct.demuxer_desc** %143, align 8
  %145 = icmp ne %struct.demuxer_desc* %144, null
  br i1 %145, label %146, label %177

146:                                              ; preds = %139
  %147 = load %struct.demuxer_desc**, %struct.demuxer_desc*** @demuxer_list, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.demuxer_desc*, %struct.demuxer_desc** %147, i64 %149
  %151 = load %struct.demuxer_desc*, %struct.demuxer_desc** %150, align 8
  store %struct.demuxer_desc* %151, %struct.demuxer_desc** %19, align 8
  %152 = load %struct.demuxer_desc*, %struct.demuxer_desc** %10, align 8
  %153 = icmp ne %struct.demuxer_desc* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load %struct.demuxer_desc*, %struct.demuxer_desc** %19, align 8
  %156 = load %struct.demuxer_desc*, %struct.demuxer_desc** %10, align 8
  %157 = icmp eq %struct.demuxer_desc* %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %154, %146
  %159 = load %struct.mpv_global*, %struct.mpv_global** %8, align 8
  %160 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %161 = load %struct.demuxer_desc*, %struct.demuxer_desc** %19, align 8
  %162 = load %struct.stream*, %struct.stream** %5, align 8
  %163 = load %struct.demuxer_params*, %struct.demuxer_params** %7, align 8
  %164 = load i32, i32* %17, align 4
  %165 = call %struct.demuxer* @open_given_type(%struct.mpv_global* %159, %struct.mp_log* %160, %struct.demuxer_desc* %161, %struct.stream* %162, %struct.parent_stream_info* %15, %struct.demuxer_params* %163, i32 %164)
  store %struct.demuxer* %165, %struct.demuxer** %12, align 8
  %166 = load %struct.demuxer*, %struct.demuxer** %12, align 8
  %167 = icmp ne %struct.demuxer* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %158
  %169 = load %struct.demuxer*, %struct.demuxer** %12, align 8
  %170 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %171 = call i32 @talloc_steal(%struct.demuxer* %169, %struct.mp_log* %170)
  store %struct.mp_log* null, %struct.mp_log** %11, align 8
  br label %182

172:                                              ; preds = %158
  br label %173

173:                                              ; preds = %172, %154
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %18, align 4
  br label %139

177:                                              ; preds = %139
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %122

181:                                              ; preds = %122
  br label %182

182:                                              ; preds = %181, %168, %97
  %183 = getelementptr inbounds %struct.parent_stream_info, %struct.parent_stream_info* %15, i32 0, i32 0
  %184 = load %struct.mp_log*, %struct.mp_log** %183, align 8
  %185 = call i32 @talloc_free(%struct.mp_log* %184)
  %186 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %187 = call i32 @talloc_free(%struct.mp_log* %186)
  %188 = load %struct.demuxer*, %struct.demuxer** %12, align 8
  ret %struct.demuxer* %188
}

declare dso_local %struct.mp_log* @mp_log_new(i32*, i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i8*) #1

declare dso_local %struct.mp_log* @talloc_strdup(i32*, i32) #1

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*, i32) #1

declare dso_local i32 @d_level(i32) #1

declare dso_local %struct.demuxer* @open_given_type(%struct.mpv_global*, %struct.mp_log*, %struct.demuxer_desc*, %struct.stream*, %struct.parent_stream_info*, %struct.demuxer_params*, i32) #1

declare dso_local i32 @talloc_steal(%struct.demuxer*, %struct.mp_log*) #1

declare dso_local i32 @talloc_free(%struct.mp_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
