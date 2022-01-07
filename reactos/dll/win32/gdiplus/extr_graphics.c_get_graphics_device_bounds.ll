; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_graphics_device_bounds.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_graphics_device_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@Ok = common dso_local global i64 0, align 8
@GenericError = common dso_local global i64 0, align 8
@UnitPixel = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"need to convert from unit %i\0A\00", align 1
@OBJ_MEMDC = common dso_local global i64 0, align 8
@OBJ_BITMAP = common dso_local global i32 0, align 4
@HORZRES = common dso_local global i32 0, align 4
@VERTRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @get_graphics_device_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_graphics_device_bounds(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load i64, i64* @Ok, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @GetClientRect(i64 %19, %struct.TYPE_10__* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @GenericError, align 8
  store i64 %23, i64* %3, align 8
  br label %132

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %34, %36
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %41, %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %130

47:                                               ; preds = %2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = call i64 @GdipGetImageBounds(i64 %55, %struct.TYPE_11__* %56, i64* %8)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @Ok, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @UnitPixel, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %65, %61, %52
  br label %129

69:                                               ; preds = %47
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @GetObjectType(i32 %72)
  %74 = load i64, i64* @OBJ_MEMDC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %69
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @OBJ_BITMAP, align 4
  %85 = call i64 @GetCurrentObject(i32 %83, i32 %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %76
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @GetObjectW(i64 %89, i32 8, %struct.TYPE_13__* %10)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %106

101:                                              ; preds = %88, %76
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i32 1, i32* %103, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %92
  br label %128

107:                                              ; preds = %69
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @HORZRES, align 4
  %116 = call i8* @GetDeviceCaps(i32 %114, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @VERTRES, align 4
  %124 = call i8* @GetDeviceCaps(i32 %122, i32 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %107, %106
  br label %129

129:                                              ; preds = %128, %68
  br label %130

130:                                              ; preds = %129, %24
  %131 = load i64, i64* %7, align 8
  store i64 %131, i64* %3, align 8
  br label %132

132:                                              ; preds = %130, %22
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_10__*) #1

declare dso_local i64 @GdipGetImageBounds(i64, %struct.TYPE_11__*, i64*) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i64 @GetObjectType(i32) #1

declare dso_local i64 @GetCurrentObject(i32, i32) #1

declare dso_local i64 @GetObjectW(i64, i32, %struct.TYPE_13__*) #1

declare dso_local i8* @GetDeviceCaps(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
