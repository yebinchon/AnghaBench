; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_vbuf_upload.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_vbuf_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i64, i64, i32*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Vertex buffer is too large\0A\00", align 1
@D3D11_CPU_ACCESS_WRITE = common dso_local global i32 0, align 4
@D3D11_BIND_VERTEX_BUFFER = common dso_local global i32 0, align 4
@D3D11_USAGE_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create vertex buffer: %s\0A\00", align 1
@D3D11_MAP_WRITE_DISCARD = common dso_local global i32 0, align 4
@D3D11_MAP_WRITE_NO_OVERWRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to map vertex buffer: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ra*, i8*, i64)* @vbuf_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vbuf_upload(%struct.ra* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ra*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ra_d3d11*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i8*, align 8
  store %struct.ra* %0, %struct.ra** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.ra*, %struct.ra** %5, align 8
  %18 = getelementptr inbounds %struct.ra, %struct.ra* %17, i32 0, i32 0
  %19 = load %struct.ra_d3d11*, %struct.ra_d3d11** %18, align 8
  store %struct.ra_d3d11* %19, %struct.ra_d3d11** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = uitofp i64 %20 to double
  %22 = fcmp ogt double %21, 1.000000e+09
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.ra*, %struct.ra** %5, align 8
  %25 = call i32 (%struct.ra*, i8*, ...) @MP_ERR(%struct.ra* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %4, align 8
  br label %140

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %29 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %26
  %33 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %34 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i64 65536, i64* %10, align 8
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = mul i64 %45, 2
  store i64 %46, i64* %10, align 8
  br label %40

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %51 = load i32, i32* @D3D11_CPU_ACCESS_WRITE, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %53 = load i32, i32* @D3D11_BIND_VERTEX_BUFFER, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %55 = load i32, i32* @D3D11_USAGE_DYNAMIC, align 4
  store i32 %55, i32* %54, align 8
  %56 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %57 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ID3D11Device_CreateBuffer(i32 %58, %struct.TYPE_6__* %12, i32* null, i32** %11)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %47
  %64 = load %struct.ra*, %struct.ra** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @mp_HRESULT_to_str(i32 %65)
  %67 = call i32 (%struct.ra*, i8*, ...) @MP_ERR(%struct.ra* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store i64 -1, i64* %4, align 8
  br label %140

68:                                               ; preds = %47
  %69 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %70 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @SAFE_RELEASE(i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %75 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %78 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %80 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %68, %26
  store i32 0, i32* %13, align 4
  %82 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %83 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %85, %86
  %88 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %89 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 1, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %93

93:                                               ; preds = %92, %81
  %94 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %94, i8 0, i64 16, i1 false)
  %95 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %96 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %99 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @D3D11_MAP_WRITE_DISCARD, align 4
  br label %107

105:                                              ; preds = %93
  %106 = load i32, i32* @D3D11_MAP_WRITE_NO_OVERWRITE, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @ID3D11DeviceContext_Map(i32 %97, i32* %100, i32 0, i32 %108, i32 0, %struct.TYPE_5__* %15)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.ra*, %struct.ra** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @mp_HRESULT_to_str(i32 %115)
  %117 = call i32 (%struct.ra*, i8*, ...) @MP_ERR(%struct.ra* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  store i64 -1, i64* %4, align 8
  br label %140

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %16, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8*, i8** %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @memcpy(i8* %123, i8* %124, i64 %125)
  %127 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %128 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %131 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @ID3D11DeviceContext_Unmap(i32 %129, i32* %132, i32 0)
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %7, align 8
  %136 = add i64 %134, %135
  %137 = load %struct.ra_d3d11*, %struct.ra_d3d11** %8, align 8
  %138 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %14, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %118, %113, %63, %23
  %141 = load i64, i64* %4, align 8
  ret i64 %141
}

declare dso_local i32 @MP_ERR(%struct.ra*, i8*, ...) #1

declare dso_local i32 @ID3D11Device_CreateBuffer(i32, %struct.TYPE_6__*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @SAFE_RELEASE(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ID3D11DeviceContext_Map(i32, i32*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
