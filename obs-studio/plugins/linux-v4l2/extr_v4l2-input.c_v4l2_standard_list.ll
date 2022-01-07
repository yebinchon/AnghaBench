; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_standard_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_standard_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_standard = type { i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"LeaveUnchanged\00", align 1
@VIDIOC_ENUMSTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @v4l2_standard_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_standard_list(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_standard, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @obs_property_list_clear(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @obs_module_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @obs_property_list_add_int(i32* %9, i8* %10, i32 -1)
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @VIDIOC_ENUMSTD, align 4
  %15 = call i64 @v4l2_ioctl(i32 %13, i32 %14, %struct.v4l2_standard* %5)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %5, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @obs_property_list_add_int(i32* %18, i8* %21, i32 %23)
  %25 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %5, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  br label %12

28:                                               ; preds = %12
  ret void
}

declare dso_local i32 @obs_property_list_clear(i32*) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i8*, i32) #1

declare dso_local i8* @obs_module_text(i8*) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_standard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
