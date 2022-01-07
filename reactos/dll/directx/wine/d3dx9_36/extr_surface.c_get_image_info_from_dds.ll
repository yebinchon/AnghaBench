; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_image_info_from_dds.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_image_info_from_dds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dds_header = type { i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@D3DXERR_INVALIDDATA = common dso_local global i32 0, align 4
@D3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Pixel format is %#x\0A\00", align 1
@DDS_CAPS2_VOLUME = common dso_local global i32 0, align 4
@D3DRTYPE_VOLUMETEXTURE = common dso_local global i32 0, align 4
@DDS_CAPS2_CUBEMAP = common dso_local global i32 0, align 4
@DDS_CAPS2_CUBEMAP_POSITIVEX = common dso_local global i32 0, align 4
@DDS_CAPS2_CUBEMAP_NEGATIVEZ = common dso_local global i32 0, align 4
@D3DRTYPE_CUBETEXTURE = common dso_local global i32 0, align 4
@D3DRTYPE_TEXTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"File is too short %u, expected at least %u bytes\0A\00", align 1
@D3DXIFF_DDS = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_4__*)* @get_image_info_from_dds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_image_info_from_dds(i8* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dds_header*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.dds_header*
  store %struct.dds_header* %13, %struct.dds_header** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 24
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %21, i32* %4, align 4
  br label %156

22:                                               ; preds = %17
  %23 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %24 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %30, i32* %4, align 4
  br label %156

31:                                               ; preds = %22
  %32 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %33 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %38 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %45 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %50 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 1, %52 ]
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %58 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %57, i32 0, i32 3
  %59 = call i32 @dds_pixel_format_to_d3dformat(%struct.TYPE_5__* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @D3DFMT_UNKNOWN, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %68, i32* %4, align 4
  br label %156

69:                                               ; preds = %53
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %75 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DDS_CAPS2_VOLUME, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %82 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @D3DRTYPE_VOLUMETEXTURE, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  br label %125

89:                                               ; preds = %69
  %90 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %91 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DDS_CAPS2_CUBEMAP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  %97 = load i32, i32* @DDS_CAPS2_CUBEMAP_POSITIVEX, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %113, %96
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @DDS_CAPS2_CUBEMAP_NEGATIVEZ, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.dds_header*, %struct.dds_header** %10, align 8
  %104 = getelementptr inbounds %struct.dds_header, %struct.dds_header* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %98

116:                                              ; preds = %98
  %117 = load i32, i32* @D3DRTYPE_CUBETEXTURE, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %89
  %121 = load i32, i32* @D3DRTYPE_TEXTURE, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %80
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @calculate_dds_file_size(i32 %128, i32 %131, i32 %134, i32 %137, i32 %140, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %125
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i32, i32* @D3DXERR_INVALIDDATA, align 4
  store i32 %150, i32* %4, align 4
  br label %156

151:                                              ; preds = %125
  %152 = load i32, i32* @D3DXIFF_DDS, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @D3D_OK, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %151, %146, %67, %29, %20
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @dds_pixel_format_to_d3dformat(%struct.TYPE_5__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @calculate_dds_file_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
