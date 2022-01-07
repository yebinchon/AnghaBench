; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_input_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_input_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_input = type { i32, i64 }

@VIDIOC_ENUMINPUT = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Found input '%s' (Index %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @v4l2_input_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_input_list(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_input, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = call i32 @memset(%struct.v4l2_input* %5, i32 0, i32 16)
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @obs_property_list_clear(i32* %7)
  br label %9

9:                                                ; preds = %14, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VIDIOC_ENUMINPUT, align 4
  %12 = call i64 @v4l2_ioctl(i32 %10, i32 %11, %struct.v4l2_input* %5)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %5, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @obs_property_list_add_int(i32* %15, i8* %18, i32 %20)
  %22 = load i32, i32* @LOG_INFO, align 4
  %23 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %5, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @blog(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %26)
  %28 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %9

31:                                               ; preds = %9
  ret void
}

declare dso_local i32 @memset(%struct.v4l2_input*, i32, i32) #1

declare dso_local i32 @obs_property_list_clear(i32*) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_input*) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i8*, i32) #1

declare dso_local i32 @blog(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
