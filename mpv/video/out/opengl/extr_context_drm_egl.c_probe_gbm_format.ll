; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_probe_gbm_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_probe_gbm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64* }

@.str = private unnamed_addr constant [46 x i8] c"Not using DRM Atomic: Use %s for draw plane.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s supported by draw plane.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%s not supported by draw plane: Falling back to %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*, i64, i64)* @probe_gbm_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_gbm_format(%struct.ra_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ra_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ra_ctx*, %struct.ra_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %14, i32 0, i32 1
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %8, align 8
  %17 = load %struct.priv*, %struct.priv** %8, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.priv*, %struct.priv** %8, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ra_ctx*, %struct.ra_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @gbm_format_to_string(i64 %30)
  %32 = call i32 (i32, i8*, i32, ...) @MP_VERBOSE(i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 1, i32* %4, align 4
  br label %115

33:                                               ; preds = %3
  %34 = load %struct.priv*, %struct.priv** %8, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.priv*, %struct.priv** %8, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_10__* @drmModeGetPlane(i32 %38, i32 %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %79, %33
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %78

66:                                               ; preds = %55
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %66
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %49

82:                                               ; preds = %49
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.priv*, %struct.priv** %8, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.ra_ctx*, %struct.ra_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @gbm_format_to_string(i64 %92)
  %94 = call i32 (i32, i8*, i32, ...) @MP_VERBOSE(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  store i32 1, i32* %12, align 4
  br label %111

95:                                               ; preds = %82
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.priv*, %struct.priv** %8, align 8
  %101 = getelementptr inbounds %struct.priv, %struct.priv* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ra_ctx*, %struct.ra_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @gbm_format_to_string(i64 %105)
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @gbm_format_to_string(i64 %107)
  %109 = call i32 (i32, i8*, i32, ...) @MP_VERBOSE(i32 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %108)
  store i32 1, i32* %12, align 4
  br label %110

110:                                              ; preds = %98, %95
  br label %111

111:                                              ; preds = %110, %85
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %113 = call i32 @drmModeFreePlane(%struct.TYPE_10__* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %23
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @MP_VERBOSE(i32, i8*, i32, ...) #1

declare dso_local i32 @gbm_format_to_string(i64) #1

declare dso_local %struct.TYPE_10__* @drmModeGetPlane(i32, i32) #1

declare dso_local i32 @drmModeFreePlane(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
