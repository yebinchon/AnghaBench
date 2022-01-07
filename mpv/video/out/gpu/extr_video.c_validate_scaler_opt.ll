; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_validate_scaler_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_validate_scaler_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.mp_log = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tscale\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Available scalers:\0A\00", align 1
@fixed_tscale_filters = common dso_local global i8** null, align 8
@fixed_scale_filters = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@mp_filter_kernels = common dso_local global %struct.TYPE_4__* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"No scaler named '%s' found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32, i32)* @validate_scaler_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_scaler_opt(%struct.mp_log* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bstr, align 4
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.mp_log*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.mp_log* %0, %struct.mp_log** %7, align 8
  store i32* %1, i32** %8, align 8
  %16 = bitcast [20 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 20, i1 false)
  store i32 1, i32* %10, align 4
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bstr_equals0(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %11, align 4
  %20 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bstr_equals0(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %25, i32* %10, align 4
  br label %39

26:                                               ; preds = %4
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %28 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @BSTR_P(i32 %29)
  %31 = call i32 @snprintf(i8* %27, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @handle_scaler_opt(i8* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %26
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %109

42:                                               ; preds = %39
  %43 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %44 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i8**, i8*** @fixed_tscale_filters, align 8
  br label %51

49:                                               ; preds = %42
  %50 = load i8**, i8*** @fixed_scale_filters, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i8** [ %48, %47 ], [ %50, %49 ]
  store i8** %52, i8*** %12, align 8
  br label %53

53:                                               ; preds = %62, %51
  %54 = load i8**, i8*** %12, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %59 = load i8**, i8*** %12, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i8**, i8*** %12, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %12, align 8
  br label %53

65:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %97, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mp_filter_kernels, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mp_filter_kernels, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %78, %75
  %87 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mp_filter_kernels, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %86, %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %66

100:                                              ; preds = %66
  %101 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %102 = load i8, i8* %101, align 16
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %106 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %107 = call i32 @mp_fatal(%struct.mp_log* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %39
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bstr_equals0(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @BSTR_P(i32) #2

declare dso_local i32 @handle_scaler_opt(i8*, i32) #2

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #2

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
