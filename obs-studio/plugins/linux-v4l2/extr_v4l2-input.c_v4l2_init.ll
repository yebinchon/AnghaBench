; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Start capture from %s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unable to open device\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unable to set input %d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Input: %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unable to get input capabilities\00", align 1
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to set video standard\00", align 1
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Unable to set dv timing\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Unable to set format\00", align 1
@VIDEO_FORMAT_NONE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Selected video format not supported\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Resolution: %dx%d\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Pixelformat: %s\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Linesize: %d Bytes\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Unable to set framerate\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Framerate: %.2f fps\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Failed to map buffers\00", align 1
@OS_EVENT_TYPE_MANUAL = common dso_local global i32 0, align 4
@v4l2_thread = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"Initialization failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_data*)* @v4l2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_init(%struct.v4l2_data* %0) #0 {
  %2 = alloca %struct.v4l2_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_data* %0, %struct.v4l2_data** %2, align 8
  %6 = load i32, i32* @LOG_INFO, align 4
  %7 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i8*, ...) @blog(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %12 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @v4l2_open(i32 %13, i32 %16)
  %18 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %19 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %21 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @blog(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %199

27:                                               ; preds = %1
  %28 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %29 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %32 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %31, i32 0, i32 12
  %33 = call i64 @v4l2_set_input(i32 %30, i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* @LOG_ERROR, align 4
  %37 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %38 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @blog(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %199

41:                                               ; preds = %27
  %42 = load i32, i32* @LOG_INFO, align 4
  %43 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %44 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @blog(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %48 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @v4l2_get_input_caps(i32 %49, i32 -1, i32* %3)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @LOG_ERROR, align 4
  %54 = call i32 (i32, i8*, ...) @blog(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %199

55:                                               ; preds = %41
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %62 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %65 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %64, i32 0, i32 11
  %66 = call i64 @v4l2_set_standard(i32 %63, i32* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @LOG_ERROR, align 4
  %70 = call i32 (i32, i8*, ...) @blog(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %199

71:                                               ; preds = %60
  %72 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %73 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %72, i32 0, i32 1
  store i32 -1, i32* %73, align 4
  %74 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %75 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %74, i32 0, i32 2
  store i32 -1, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %55
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %83 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %86 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %85, i32 0, i32 10
  %87 = call i64 @v4l2_set_dv_timing(i32 %84, i32* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @LOG_ERROR, align 4
  %91 = call i32 (i32, i8*, ...) @blog(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %199

92:                                               ; preds = %81
  %93 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %94 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 4
  %95 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %96 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %95, i32 0, i32 2
  store i32 -1, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %76
  %98 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %99 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %102 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %101, i32 0, i32 1
  %103 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %104 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %103, i32 0, i32 9
  %105 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %106 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %105, i32 0, i32 8
  %107 = call i64 @v4l2_set_format(i32 %100, i32* %102, i32* %104, i32* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* @LOG_ERROR, align 4
  %111 = call i32 (i32, i8*, ...) @blog(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %199

112:                                              ; preds = %97
  %113 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %114 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @v4l2_to_obs_video_format(i32 %115)
  %117 = load i64, i64* @VIDEO_FORMAT_NONE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* @LOG_ERROR, align 4
  %121 = call i32 (i32, i8*, ...) @blog(i32 %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %199

122:                                              ; preds = %112
  %123 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %124 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %123, i32 0, i32 3
  %125 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %126 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %125, i32 0, i32 4
  %127 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %128 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @v4l2_unpack_tuple(i32* %124, i32* %126, i32 %129)
  %131 = load i32, i32* @LOG_INFO, align 4
  %132 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %133 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %136 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @blog(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load i32, i32* @LOG_INFO, align 4
  %140 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %141 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @V4L2_FOURCC_STR(i32 %142)
  %144 = call i32 (i32, i8*, ...) @blog(i32 %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @LOG_INFO, align 4
  %146 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %147 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @blog(i32 %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %148)
  %150 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %151 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %154 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %153, i32 0, i32 2
  %155 = call i64 @v4l2_set_framerate(i32 %152, i32* %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %122
  %158 = load i32, i32* @LOG_ERROR, align 4
  %159 = call i32 (i32, i8*, ...) @blog(i32 %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %199

160:                                              ; preds = %122
  %161 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %162 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @v4l2_unpack_tuple(i32* %4, i32* %5, i32 %163)
  %165 = load i32, i32* @LOG_INFO, align 4
  %166 = load i32, i32* %5, align 4
  %167 = sitofp i32 %166 to float
  %168 = load i32, i32* %4, align 4
  %169 = sitofp i32 %168 to float
  %170 = fdiv float %167, %169
  %171 = fpext float %170 to double
  %172 = call i32 (i32, i8*, ...) @blog(i32 %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), double %171)
  %173 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %174 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %177 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %176, i32 0, i32 7
  %178 = call i64 @v4l2_create_mmap(i32 %175, i32* %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %160
  %181 = load i32, i32* @LOG_ERROR, align 4
  %182 = call i32 (i32, i8*, ...) @blog(i32 %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %199

183:                                              ; preds = %160
  %184 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %185 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %184, i32 0, i32 6
  %186 = load i32, i32* @OS_EVENT_TYPE_MANUAL, align 4
  %187 = call i64 @os_event_init(i32* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %199

190:                                              ; preds = %183
  %191 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %192 = getelementptr inbounds %struct.v4l2_data, %struct.v4l2_data* %191, i32 0, i32 5
  %193 = load i32, i32* @v4l2_thread, align 4
  %194 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %195 = call i64 @pthread_create(i32* %192, i32* null, i32 %193, %struct.v4l2_data* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %199

198:                                              ; preds = %190
  br label %204

199:                                              ; preds = %197, %189, %180, %157, %119, %109, %89, %68, %52, %35, %24
  %200 = load i32, i32* @LOG_ERROR, align 4
  %201 = call i32 (i32, i8*, ...) @blog(i32 %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %202 = load %struct.v4l2_data*, %struct.v4l2_data** %2, align 8
  %203 = call i32 @v4l2_terminate(%struct.v4l2_data* %202)
  br label %204

204:                                              ; preds = %199, %198
  ret void
}

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @v4l2_open(i32, i32) #1

declare dso_local i64 @v4l2_set_input(i32, i32*) #1

declare dso_local i64 @v4l2_get_input_caps(i32, i32, i32*) #1

declare dso_local i64 @v4l2_set_standard(i32, i32*) #1

declare dso_local i64 @v4l2_set_dv_timing(i32, i32*) #1

declare dso_local i64 @v4l2_set_format(i32, i32*, i32*, i32*) #1

declare dso_local i64 @v4l2_to_obs_video_format(i32) #1

declare dso_local i32 @v4l2_unpack_tuple(i32*, i32*, i32) #1

declare dso_local i32 @V4L2_FOURCC_STR(i32) #1

declare dso_local i64 @v4l2_set_framerate(i32, i32*) #1

declare dso_local i64 @v4l2_create_mmap(i32, i32*) #1

declare dso_local i64 @os_event_init(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.v4l2_data*) #1

declare dso_local i32 @v4l2_terminate(%struct.v4l2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
