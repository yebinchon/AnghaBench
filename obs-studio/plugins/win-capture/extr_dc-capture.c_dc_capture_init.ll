; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_dc_capture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_capture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8* }

@DIB_RGB_COLORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_capture_init(%struct.dc_capture* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.dc_capture*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  store %struct.dc_capture* %0, %struct.dc_capture** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %18 = call i32 @memset(%struct.dc_capture* %17, i32 0, i32 56)
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %21 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %24 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %27 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %30 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %33 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = call i32 (...) @obs_enter_graphics()
  %35 = call i32 (...) @gs_gdi_texture_available()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %7
  store i32 1, i32* %14, align 4
  br label %38

38:                                               ; preds = %37, %7
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %41 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %43 = call i32 @init_textures(%struct.dc_capture* %42)
  %44 = call i32 (...) @obs_leave_graphics()
  %45 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %46 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %90

50:                                               ; preds = %38
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %50
  %54 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 40, i1 false)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %16, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 32, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 32, i32* %59, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = call i32 @CreateCompatibleDC(i32* null)
  %69 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %70 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %72 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DIB_RGB_COLORS, align 4
  %75 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %76 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %75, i32 0, i32 7
  %77 = bitcast i32* %76 to i8**
  %78 = call i32 @CreateDIBSection(i32 %73, %struct.TYPE_5__* %15, i32 %74, i8** %77, i32* null, i32 0)
  %79 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %80 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %82 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %85 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @SelectObject(i32 %83, i32 %86)
  %88 = load %struct.dc_capture*, %struct.dc_capture** %8, align 8
  %89 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %49, %53, %50
  ret void
}

declare dso_local i32 @memset(%struct.dc_capture*, i32, i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_gdi_texture_available(...) #1

declare dso_local i32 @init_textures(%struct.dc_capture*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i32 @CreateDIBSection(i32, %struct.TYPE_5__*, i32, i8**, i32*, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
