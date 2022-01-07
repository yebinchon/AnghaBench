; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"after destroy\00", align 1
@D3D11_RLDO_DETAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"after leak check\00", align 1
@D3D11_RLDO_SUMMARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"after leak summary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*)* @destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy(%struct.ra* %0) #0 {
  %2 = alloca %struct.ra*, align 8
  %3 = alloca %struct.ra_d3d11*, align 8
  store %struct.ra* %0, %struct.ra** %2, align 8
  %4 = load %struct.ra*, %struct.ra** %2, align 8
  %5 = getelementptr inbounds %struct.ra, %struct.ra* %4, i32 0, i32 0
  %6 = load %struct.ra_d3d11*, %struct.ra_d3d11** %5, align 8
  store %struct.ra_d3d11* %6, %struct.ra_d3d11** %3, align 8
  %7 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %8 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %7, i32 0, i32 16
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @SAFE_RELEASE(i64 %9)
  %11 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %12 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %11, i32 0, i32 15
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @SAFE_RELEASE(i64 %13)
  %15 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %16 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %15, i32 0, i32 14
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @SAFE_RELEASE(i64 %17)
  %19 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %20 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @SAFE_RELEASE(i64 %21)
  %23 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %24 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @SAFE_RELEASE(i64 %25)
  %27 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %28 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %27, i32 0, i32 11
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @SAFE_RELEASE(i64 %29)
  %31 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %32 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @SAFE_RELEASE(i64 %33)
  %35 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %36 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @SAFE_RELEASE(i64 %37)
  %39 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %40 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @SAFE_RELEASE(i64 %41)
  %43 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %44 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @SAFE_RELEASE(i64 %45)
  %47 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %48 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @SAFE_RELEASE(i64 %49)
  %51 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %52 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @SAFE_RELEASE(i64 %53)
  %55 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %56 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @SAFE_RELEASE(i64 %57)
  %59 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %60 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @SAFE_RELEASE(i64 %61)
  %63 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %64 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %1
  %68 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %69 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %74 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ID3D11DeviceContext_ClearState(i64 %75)
  %77 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %78 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ID3D11DeviceContext_Flush(i64 %79)
  br label %81

81:                                               ; preds = %72, %67, %1
  %82 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %83 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @SAFE_RELEASE(i64 %84)
  %86 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %87 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %81
  %91 = load %struct.ra*, %struct.ra** %2, align 8
  %92 = call i32 @debug_marker(%struct.ra* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %94 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @D3D11_RLDO_DETAIL, align 4
  %97 = call i32 @ID3D11Debug_ReportLiveDeviceObjects(i64 %95, i32 %96)
  %98 = load %struct.ra*, %struct.ra** %2, align 8
  %99 = call i32 @debug_marker(%struct.ra* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %101 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @D3D11_RLDO_SUMMARY, align 4
  %104 = call i32 @ID3D11Debug_ReportLiveDeviceObjects(i64 %102, i32 %103)
  %105 = load %struct.ra*, %struct.ra** %2, align 8
  %106 = call i32 @debug_marker(%struct.ra* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %90, %81
  %108 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %109 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @SAFE_RELEASE(i64 %110)
  %112 = load %struct.ra_d3d11*, %struct.ra_d3d11** %3, align 8
  %113 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @SAFE_RELEASE(i64 %114)
  %116 = load %struct.ra*, %struct.ra** %2, align 8
  %117 = call i32 @talloc_free(%struct.ra* %116)
  ret void
}

declare dso_local i32 @SAFE_RELEASE(i64) #1

declare dso_local i32 @ID3D11DeviceContext_ClearState(i64) #1

declare dso_local i32 @ID3D11DeviceContext_Flush(i64) #1

declare dso_local i32 @debug_marker(%struct.ra*, i8*) #1

declare dso_local i32 @ID3D11Debug_ReportLiveDeviceObjects(i64, i32) #1

declare dso_local i32 @talloc_free(%struct.ra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
