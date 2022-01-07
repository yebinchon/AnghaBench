; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_validate_window_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_validate_window_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mp_log = type { i32 }
%struct.bstr = type { i32 }
%struct.filter_window = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Available windows:\0A\00", align 1
@mp_filter_windows = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"No window named '%s' found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32, i32)* @validate_window_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_window_opt(%struct.mp_log* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bstr, align 4
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.mp_log*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.filter_window*, align 8
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.mp_log* %0, %struct.mp_log** %7, align 8
  store i32* %1, i32** %8, align 8
  %15 = bitcast [20 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 20, i1 false)
  store i32 1, i32* %10, align 4
  %16 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @bstr_equals0(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %21, i32* %10, align 4
  br label %35

22:                                               ; preds = %4
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %24 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @BSTR_P(i32 %25)
  %27 = call i32 @snprintf(i8* %23, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %29 = call %struct.filter_window* @mp_find_filter_window(i8* %28)
  store %struct.filter_window* %29, %struct.filter_window** %11, align 8
  %30 = load %struct.filter_window*, %struct.filter_window** %11, align 8
  %31 = icmp ne %struct.filter_window* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %22
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %40 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %58, %38
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mp_filter_windows, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mp_filter_windows, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %41

61:                                               ; preds = %41
  %62 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %63 = load i8, i8* %62, align 16
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %68 = call i32 @mp_fatal(%struct.mp_log* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @bstr_equals0(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @BSTR_P(i32) #2

declare dso_local %struct.filter_window* @mp_find_filter_window(i8*) #2

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #2

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
