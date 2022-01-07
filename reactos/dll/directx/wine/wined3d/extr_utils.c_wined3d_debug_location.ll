; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_debug_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_debug_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"~(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@WINED3D_LOCATION_DISCARDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"WINED3D_LOCATION_DISCARDED\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@WINED3D_LOCATION_SYSMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"WINED3D_LOCATION_SYSMEM\00", align 1
@WINED3D_LOCATION_USER_MEMORY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"WINED3D_LOCATION_USER_MEMORY\00", align 1
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"WINED3D_LOCATION_BUFFER\00", align 1
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"WINED3D_LOCATION_TEXTURE_RGB\00", align 1
@WINED3D_LOCATION_TEXTURE_SRGB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"WINED3D_LOCATION_TEXTURE_SRGB\00", align 1
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"WINED3D_LOCATION_DRAWABLE\00", align 1
@WINED3D_LOCATION_RB_MULTISAMPLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"WINED3D_LOCATION_RB_MULTISAMPLE\00", align 1
@WINED3D_LOCATION_RB_RESOLVED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"WINED3D_LOCATION_RB_RESOLVED\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Unrecognized location flag(s) %#x.\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wined3d_debug_location(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.debug_buffer, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @wined3d_popcount(i32 %6)
  %8 = icmp sgt i32 %7, 16
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = xor i32 %10, -1
  store i32 %11, i32* %2, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 @init_debug_buffer(%struct.debug_buffer* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @WINED3D_LOCATION_DISCARDED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32, i32* @WINED3D_LOCATION_DISCARDED, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32, i32* @WINED3D_LOCATION_SYSMEM, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @WINED3D_LOCATION_USER_MEMORY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32, i32* @WINED3D_LOCATION_USER_MEMORY, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %2, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %2, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @WINED3D_LOCATION_RB_MULTISAMPLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @WINED3D_LOCATION_RB_MULTISAMPLE, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %2, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @WINED3D_LOCATION_RB_RESOLVED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @WINED3D_LOCATION_RB_RESOLVED, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %2, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %101
  %113 = load i32, i32* %2, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %3, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %5, align 8
  %123 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %119, i32 %121, i8* %122)
  ret i8* %123
}

declare dso_local i32 @wined3d_popcount(i32) #1

declare dso_local i32 @init_debug_buffer(%struct.debug_buffer*, i8*) #1

declare dso_local i32 @debug_append(...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
