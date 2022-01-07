; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_hwdec.c_ra_hwdec_validate_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_hwdec.c_ra_hwdec_validate_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_driver = type { i8* }
%struct.mp_log = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Available hwdecs:\0A\00", align 1
@ra_hwdec_drivers = common dso_local global %struct.ra_hwdec_driver** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [119 x i8] c"    auto (behavior depends on context)\0A    all (load all hwdecs)\0A    no (do not load any and block loading on demand)\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"No hwdec backend named '%.*s' found!\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ra_hwdec_validate_opt(%struct.mp_log* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ra_hwdec_driver*, align 8
  %13 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store i32* %1, i32** %9, align 8
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bstr_equals0(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %22 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load %struct.ra_hwdec_driver**, %struct.ra_hwdec_driver*** @ra_hwdec_drivers, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %25, i64 %27
  %29 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %28, align 8
  %30 = icmp ne %struct.ra_hwdec_driver* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  %32 = load %struct.ra_hwdec_driver**, %struct.ra_hwdec_driver*** @ra_hwdec_drivers, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %32, i64 %34
  %36 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %35, align 8
  store %struct.ra_hwdec_driver* %36, %struct.ra_hwdec_driver** %12, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %41 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %12, align 8
  %42 = getelementptr inbounds %struct.ra_hwdec_driver, %struct.ra_hwdec_driver* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %55

45:                                               ; preds = %31
  %46 = load %struct.ra_hwdec_driver*, %struct.ra_hwdec_driver** %12, align 8
  %47 = getelementptr inbounds %struct.ra_hwdec_driver, %struct.ra_hwdec_driver* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bstr_equals0(i32 %50, i8* %48)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %94

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %24

59:                                               ; preds = %24
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %64 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %63, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %65, i32* %5, align 4
  br label %94

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %94

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bstr_equals0(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bstr_equals0(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bstr_equals0(i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %76, %71
  store i32 1, i32* %5, align 4
  br label %94

87:                                               ; preds = %81
  %88 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %89 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BSTR_P(i32 %90)
  %92 = call i32 @mp_fatal(%struct.mp_log* %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %87, %86, %70, %62, %53
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*, i32) #1

declare dso_local i32 @BSTR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
