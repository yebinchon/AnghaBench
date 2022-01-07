; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_device_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32 }
%struct.dstr = type { i8* }
%struct.v4l2_capability = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"/sys/class/video4linux\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@VIDIOC_QUERYCAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to query capabilities for %s\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%s seems to not support video capture\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Found device '%s' at %s\00", align 1
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @v4l2_device_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_device_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.dstr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_capability, align 8
  %14 = alloca [68 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = call i32* @opendir(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %132

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @obs_data_get_string(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %10, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @obs_property_list_clear(i32* %22)
  %24 = call i32 @dstr_init_copy(%struct.dstr* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %107, %73, %59, %49, %35, %19
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.dirent* @readdir(i32* %26)
  store %struct.dirent* %27, %struct.dirent** %6, align 8
  %28 = icmp ne %struct.dirent* %27, null
  br i1 %28, label %29, label %110

29:                                               ; preds = %25
  %30 = load %struct.dirent*, %struct.dirent** %6, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DT_DIR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %25

36:                                               ; preds = %29
  %37 = call i32 @dstr_resize(%struct.dstr* %7, i32 5)
  %38 = load %struct.dirent*, %struct.dirent** %6, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dstr_cat(%struct.dstr* %7, i32 %40)
  %42 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @O_RDWR, align 4
  %45 = load i32, i32* @O_NONBLOCK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @v4l2_open(i8* %43, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load i32, i32* @LOG_INFO, align 4
  %51 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, i8*, ...) @blog(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %25

54:                                               ; preds = %36
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @VIDIOC_QUERYCAP, align 4
  %57 = call i32 @v4l2_ioctl(i32 %55, i32 %56, %struct.v4l2_capability* %13)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @LOG_INFO, align 4
  %61 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @blog(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @v4l2_close(i32 %64)
  br label %25

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @LOG_INFO, align 4
  %75 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, i8*, ...) @blog(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @v4l2_close(i32 %78)
  br label %25

80:                                               ; preds = %66
  %81 = getelementptr inbounds [68 x i8], [68 x i8]* %14, i64 0, i64 0
  %82 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %13, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %13, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @sprintf(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %83, i8* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds [68 x i8], [68 x i8]* %14, i64 0, i64 0
  %89 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @obs_property_list_add_string(i32* %87, i8* %88, i8* %90)
  %92 = load i32, i32* @LOG_INFO, align 4
  %93 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %13, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @blog(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %94, i8* %96)
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %80
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %101, i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %100, %80
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @v4l2_close(i32 %108)
  br label %25

110:                                              ; preds = %25
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** %10, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load i8*, i8** %10, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i32*, i32** %3, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = call i64 @obs_property_list_add_string(i32* %121, i8* %122, i8* %123)
  store i64 %124, i64* %9, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @obs_property_list_item_disable(i32* %125, i64 %126, i32 1)
  br label %128

128:                                              ; preds = %120, %116, %113, %110
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @closedir(i32* %129)
  %131 = call i32 @dstr_free(%struct.dstr* %7)
  br label %132

132:                                              ; preds = %128, %18
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @obs_property_list_clear(i32*) #1

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @dstr_resize(%struct.dstr*, i32) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i32) #1

declare dso_local i32 @v4l2_open(i8*, i32) #1

declare dso_local i32 @blog(i32, i8*, i8*, ...) #1

declare dso_local i32 @v4l2_ioctl(i32, i32, %struct.v4l2_capability*) #1

declare dso_local i32 @v4l2_close(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @obs_property_list_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @obs_property_list_item_disable(i32*, i64, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
