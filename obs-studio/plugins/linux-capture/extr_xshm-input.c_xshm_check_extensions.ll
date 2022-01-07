; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_check_extensions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_check_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@xcb_shm_id = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Missing SHM extension !\00", align 1
@xcb_xinerama_id = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Missing Xinerama extension !\00", align 1
@xcb_randr_id = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing Randr extension !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @xshm_check_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xshm_check_extensions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_2__* @xcb_get_extension_data(i32* %4, i32* @xcb_shm_id)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG_ERROR, align 4
  %11 = call i32 @blog(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_2__* @xcb_get_extension_data(i32* %13, i32* @xcb_xinerama_id)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @LOG_INFO, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.TYPE_2__* @xcb_get_extension_data(i32* %22, i32* @xcb_randr_id)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @LOG_INFO, align 4
  %29 = call i32 @blog(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_2__* @xcb_get_extension_data(i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
