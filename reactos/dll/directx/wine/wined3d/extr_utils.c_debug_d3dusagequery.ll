; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_d3dusagequery.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_debug_d3dusagequery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@WINED3DUSAGE_QUERY_FILTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"WINED3DUSAGE_QUERY_FILTER\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@WINED3DUSAGE_QUERY_GENMIPMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"WINED3DUSAGE_QUERY_GENMIPMAP\00", align 1
@WINED3DUSAGE_QUERY_LEGACYBUMPMAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"WINED3DUSAGE_QUERY_LEGACYBUMPMAP\00", align 1
@WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING\00", align 1
@WINED3DUSAGE_QUERY_SRGBREAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"WINED3DUSAGE_QUERY_SRGBREAD\00", align 1
@WINED3DUSAGE_QUERY_SRGBWRITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"WINED3DUSAGE_QUERY_SRGBWRITE\00", align 1
@WINED3DUSAGE_QUERY_VERTEXTEXTURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"WINED3DUSAGE_QUERY_VERTEXTEXTURE\00", align 1
@WINED3DUSAGE_QUERY_WRAPANDMIP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"WINED3DUSAGE_QUERY_WRAPANDMIP\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Unrecognized usage query flag(s) %#x.\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_d3dusagequery(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.debug_buffer, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i32 @init_debug_buffer(%struct.debug_buffer* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @WINED3DUSAGE_QUERY_FILTER, align 4
  %7 = sext i32 %6 to i64
  %8 = and i64 %5, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @WINED3DUSAGE_QUERY_FILTER, align 4
  %13 = xor i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %2, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %2, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* @WINED3DUSAGE_QUERY_GENMIPMAP, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %18, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @WINED3DUSAGE_QUERY_GENMIPMAP, align 4
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %2, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i64, i64* %2, align 8
  %32 = load i32, i32* @WINED3DUSAGE_QUERY_LEGACYBUMPMAP, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @WINED3DUSAGE_QUERY_LEGACYBUMPMAP, align 4
  %39 = xor i32 %38, -1
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %2, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i64, i64* %2, align 8
  %45 = load i32, i32* @WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %44, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @WINED3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING, align 4
  %52 = xor i32 %51, -1
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %2, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i64, i64* %2, align 8
  %58 = load i32, i32* @WINED3DUSAGE_QUERY_SRGBREAD, align 4
  %59 = sext i32 %58 to i64
  %60 = and i64 %57, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @WINED3DUSAGE_QUERY_SRGBREAD, align 4
  %65 = xor i32 %64, -1
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %2, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i64, i64* %2, align 8
  %71 = load i32, i32* @WINED3DUSAGE_QUERY_SRGBWRITE, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %70, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @WINED3DUSAGE_QUERY_SRGBWRITE, align 4
  %78 = xor i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %2, align 8
  %81 = and i64 %80, %79
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %75, %69
  %83 = load i64, i64* %2, align 8
  %84 = load i32, i32* @WINED3DUSAGE_QUERY_VERTEXTEXTURE, align 4
  %85 = sext i32 %84 to i64
  %86 = and i64 %83, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @WINED3DUSAGE_QUERY_VERTEXTEXTURE, align 4
  %91 = xor i32 %90, -1
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %2, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %2, align 8
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i64, i64* %2, align 8
  %97 = load i32, i32* @WINED3DUSAGE_QUERY_WRAPANDMIP, align 4
  %98 = sext i32 %97 to i64
  %99 = and i64 %96, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @WINED3DUSAGE_QUERY_WRAPANDMIP, align 4
  %104 = xor i32 %103, -1
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %2, align 8
  %107 = and i64 %106, %105
  store i64 %107, i64* %2, align 8
  br label %108

108:                                              ; preds = %101, %95
  %109 = load i64, i64* %2, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i64, i64* %2, align 8
  %113 = call i32 @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i64 %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %3, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  ret i8* %117
}

declare dso_local i32 @init_debug_buffer(%struct.debug_buffer*, i8*) #1

declare dso_local i32 @debug_append(...) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
