; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_image_alloc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_image_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.va_surface = type { i64, i64, i32, %struct.TYPE_9__, i32, i32*, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@VA_INVALID_ID = common dso_local global i64 0, align 8
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Using vaDeriveImage()\0A\00", align 1
@VA_STATUS_ERROR_OPERATION_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"vaCreateImage()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.va_surface*, %struct.TYPE_8__*)* @va_surface_image_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va_surface_image_alloc(%struct.va_surface* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.va_surface*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.va_surface* %0, %struct.va_surface** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %10 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %13 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VA_INVALID_ID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %20 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %123

29:                                               ; preds = %18, %2
  store i32 0, i32* %7, align 4
  %30 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %31 = call i32 @va_surface_image_destroy(%struct.va_surface* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %34 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %37 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %36, i32 0, i32 3
  %38 = call i64 @vaDeriveImage(i32* %32, i32 %35, %struct.TYPE_9__* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %29
  %43 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %44 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %42
  %53 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %54 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %58 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %63 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %67 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %72 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %74 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @MP_TRACE(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %87

77:                                               ; preds = %61, %52, %42
  %78 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %79 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %82 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @vaDestroyImage(i32* %80, i64 %84)
  %86 = load i64, i64* @VA_STATUS_ERROR_OPERATION_FAILED, align 8
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %77, %70
  br label %88

88:                                               ; preds = %87, %29
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = load i64, i64* @VA_INVALID_ID, align 8
  %94 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %95 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %98 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %102 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %105 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %108 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %107, i32 0, i32 3
  %109 = call i64 @vaCreateImage(i32* %99, %struct.TYPE_8__* %100, i64 %103, i64 %106, %struct.TYPE_9__* %108)
  store i64 %109, i64* %8, align 8
  %110 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %111 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @CHECK_VA_STATUS(i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %92
  %116 = load i64, i64* @VA_INVALID_ID, align 8
  %117 = load %struct.va_surface*, %struct.va_surface** %4, align 8
  %118 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  store i32 -1, i32* %7, align 4
  br label %120

120:                                              ; preds = %115, %92
  br label %121

121:                                              ; preds = %120, %88
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @va_surface_image_destroy(%struct.va_surface*) #1

declare dso_local i64 @vaDeriveImage(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @MP_TRACE(i32, i8*) #1

declare dso_local i32 @vaDestroyImage(i32*, i64) #1

declare dso_local i64 @vaCreateImage(i32*, %struct.TYPE_8__*, i64, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @CHECK_VA_STATUS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
