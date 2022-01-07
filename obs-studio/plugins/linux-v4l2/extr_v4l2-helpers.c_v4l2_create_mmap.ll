; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-helpers.c_v4l2_create_mmap.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-helpers.c_v4l2_create_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_buffer_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.v4l2_requestbuffers = type { i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_buffer = type { i32, i32, %struct.TYPE_3__, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@VIDIOC_REQBUFS = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Request for buffers failed !\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Device returned less than 2 buffers\00", align 1
@VIDIOC_QUERYBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to query buffer details\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"mmap for buffer failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_create_mmap(i32 %0, %struct.v4l2_buffer_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_buffer_data*, align 8
  %6 = alloca %struct.v4l2_requestbuffers, align 4
  %7 = alloca %struct.v4l2_buffer, align 4
  store i32 %0, i32* %4, align 4
  store %struct.v4l2_buffer_data* %1, %struct.v4l2_buffer_data** %5, align 8
  %8 = call i32 @memset(%struct.v4l2_requestbuffers* %6, i32 0, i32 24)
  %9 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 0
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %11 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 5
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %13 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @VIDIOC_REQBUFS, align 4
  %16 = call i64 @v4l2_ioctl(i32 %14, i32 %15, %struct.v4l2_requestbuffers* %6)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @LOG_ERROR, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @LOG_ERROR, align 4
  %27 = call i32 @blog(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %115

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_4__* @bzalloc(i32 %37)
  %39 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %39, i32 0, i32 1
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = bitcast %struct.v4l2_buffer* %7 to %struct.v4l2_requestbuffers*
  %42 = call i32 @memset(%struct.v4l2_requestbuffers* %41, i32 0, i32 24)
  %43 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %110, %28
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @VIDIOC_QUERYBUF, align 4
  %59 = bitcast %struct.v4l2_buffer* %7 to %struct.v4l2_requestbuffers*
  %60 = call i64 @v4l2_ioctl(i32 %57, i32 %58, %struct.v4l2_requestbuffers* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @LOG_ERROR, align 4
  %64 = call i32 @blog(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %115

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %67, i32* %75, align 8
  %76 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PROT_READ, align 4
  %79 = load i32, i32* @PROT_WRITE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MAP_SHARED, align 4
  %82 = load i32, i32* %4, align 4
  %83 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @v4l2_mmap(i32* null, i32 %77, i32 %80, i32 %81, i32 %82, i32 %85)
  %87 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 %86, i64* %94, align 8
  %95 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MAP_FAILED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %65
  %107 = load i32, i32* @LOG_ERROR, align 4
  %108 = call i32 @blog(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %115

109:                                              ; preds = %65
  br label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %7, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %50

114:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %106, %62, %25, %18
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @memset(%struct.v4l2_requestbuffers*, i32, i32) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @bzalloc(i32) #1

declare dso_local i64 @v4l2_mmap(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
