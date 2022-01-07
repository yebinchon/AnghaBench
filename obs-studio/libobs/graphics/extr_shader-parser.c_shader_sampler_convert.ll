; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_shader_sampler_convert.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_shader_sampler_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_sampler = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8** }
%struct.TYPE_3__ = type { i64, i8** }
%struct.gs_sampler_info = type { i32, i64, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"AddressU\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"AddressV\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"AddressW\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"MaxAnisotropy\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"BorderColor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shader_sampler_convert(%struct.shader_sampler* %0, %struct.gs_sampler_info* %1) #0 {
  %3 = alloca %struct.shader_sampler*, align 8
  %4 = alloca %struct.gs_sampler_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.shader_sampler* %0, %struct.shader_sampler** %3, align 8
  store %struct.gs_sampler_info* %1, %struct.gs_sampler_info** %4, align 8
  %8 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %9 = call i32 @memset(%struct.gs_sampler_info* %8, i32 0, i32 48)
  %10 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %11 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %95, %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.shader_sampler*, %struct.shader_sampler** %3, align 8
  %15 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %98

19:                                               ; preds = %12
  %20 = load %struct.shader_sampler*, %struct.shader_sampler** %3, align 8
  %21 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load %struct.shader_sampler*, %struct.shader_sampler** %3, align 8
  %28 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @astrcmpi(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @get_sample_filter(i8* %38)
  %40 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %41 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  br label %94

42:                                               ; preds = %19
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @astrcmpi(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i8* @get_address_mode(i8* %47)
  %49 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %50 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  br label %93

51:                                               ; preds = %42
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @astrcmpi(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = call i8* @get_address_mode(i8* %56)
  %58 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %59 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %92

60:                                               ; preds = %51
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @astrcmpi(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @get_address_mode(i8* %65)
  %67 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %68 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %91

69:                                               ; preds = %60
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @astrcmpi(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @strtol(i8* %74, i32* null, i32 10)
  %76 = trunc i64 %75 to i32
  %77 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %78 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %90

79:                                               ; preds = %69
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @astrcmpi(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = call i64 @strtol(i8* %85, i32* null, i32 16)
  %87 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %88 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %79
  br label %90

90:                                               ; preds = %89, %73
  br label %91

91:                                               ; preds = %90, %64
  br label %92

92:                                               ; preds = %91, %55
  br label %93

93:                                               ; preds = %92, %46
  br label %94

94:                                               ; preds = %93, %37
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %5, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %5, align 8
  br label %12

98:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memset(%struct.gs_sampler_info*, i32, i32) #1

declare dso_local i64 @astrcmpi(i8*, i8*) #1

declare dso_local i32 @get_sample_filter(i8*) #1

declare dso_local i8* @get_address_mode(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
