; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_rate_control_modified.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_rate_control_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"VCM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VBR\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CQP\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LA_ICQ\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ICQ\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"AVBR\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"convergence\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"qpi\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"qpb\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"qpp\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"icq_quality\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"LA_CBR\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"LA_VBR\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"la_depth\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"mbbrc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @rate_control_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_control_modified(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i8* @obs_data_get_string(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @astrcmpi(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @astrcmpi(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @obs_properties_get(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @obs_property_set_visible(i32* %23, i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @astrcmpi(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %18
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @astrcmpi(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @astrcmpi(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %33, %29, %18
  %38 = phi i1 [ true, %29 ], [ true, %18 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @obs_properties_get(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @obs_property_set_visible(i32* %42, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @astrcmpi(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32* @obs_properties_get(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @obs_property_set_visible(i32* %54, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32* @obs_properties_get(i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @obs_property_set_visible(i32* %59, i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @astrcmpi(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32* @obs_properties_get(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @obs_property_set_visible(i32* %68, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @obs_properties_get(i32* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @obs_property_set_visible(i32* %73, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32* @obs_properties_get(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  store i32* %77, i32** %5, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @obs_property_set_visible(i32* %78, i32 %79)
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @astrcmpi(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %37
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @astrcmpi(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br label %88

88:                                               ; preds = %84, %37
  %89 = phi i1 [ true, %37 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = call i32* @obs_properties_get(i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32* %92, i32** %5, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @obs_property_set_visible(i32* %93, i32 %94)
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @astrcmpi(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %88
  %100 = load i8*, i8** %7, align 8
  %101 = call i64 @astrcmpi(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @astrcmpi(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br label %107

107:                                              ; preds = %103, %99, %88
  %108 = phi i1 [ true, %99 ], [ true, %88 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %8, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32* @obs_properties_get(i32* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  store i32* %111, i32** %5, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @obs_property_set_visible(i32* %112, i32 %113)
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @astrcmpi(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %107
  %119 = load i8*, i8** %7, align 8
  %120 = call i64 @astrcmpi(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @astrcmpi(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br label %126

126:                                              ; preds = %122, %118, %107
  %127 = phi i1 [ true, %118 ], [ true, %107 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %8, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = call i32* @obs_properties_get(i32* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  store i32* %130, i32** %5, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @obs_property_set_visible(i32* %131, i32 %132)
  ret i32 1
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i32* @obs_properties_get(i32*, i8*) #1

declare dso_local i32 @obs_property_set_visible(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
