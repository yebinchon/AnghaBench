; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_packet_bitrate.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_packet_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i64 }
%struct.TYPE_4__ = type { %struct.demuxer*, %struct.TYPE_3__*** }
%struct.demuxer = type { i32 }
%struct.TYPE_3__ = type { %struct.demuxer* }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@STREAM_TYPE_COUNT = common dso_local global i32 0, align 4
@M_PROPERTY_PRINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%d kbps\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%.3f mbps\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_packet_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_packet_bitrate(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.demuxer*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load %struct.m_property*, %struct.m_property** %7, align 8
  %21 = getelementptr inbounds %struct.m_property, %struct.m_property* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, -257
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load %struct.m_property*, %struct.m_property** %7, align 8
  %26 = getelementptr inbounds %struct.m_property, %struct.m_property* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, 256
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  store %struct.demuxer* null, %struct.demuxer** %13, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %32, i64 0
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__**, %struct.TYPE_3__*** %43, i64 0
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.demuxer*, %struct.demuxer** %50, align 8
  store %struct.demuxer* %51, %struct.demuxer** %13, align 8
  br label %52

52:                                               ; preds = %40, %4
  %53 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %54 = icmp ne %struct.demuxer* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.demuxer*, %struct.demuxer** %57, align 8
  store %struct.demuxer* %58, %struct.demuxer** %13, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %61 = icmp ne %struct.demuxer* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %63, i32* %5, align 4
  br label %125

64:                                               ; preds = %59
  %65 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %14, align 8
  %68 = alloca double, i64 %66, align 16
  store i64 %66, i64* %15, align 8
  %69 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %70 = call i32 @demux_get_bitrate_stats(%struct.demuxer* %69, double* %68)
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %68, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fcmp olt double %74, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %77, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %123

78:                                               ; preds = %64
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %68, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fmul double %82, 8.000000e+00
  store double %83, double* %17, align 8
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load double, double* %17, align 8
  %90 = fdiv double %89, 1.000000e+03
  %91 = call i32 @llrint(double %90)
  %92 = call i32 @m_property_int64_ro(i32 %87, i8* %88, i32 %91)
  store i32 %92, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %123

93:                                               ; preds = %78
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @M_PROPERTY_PRINT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load double, double* %17, align 8
  %99 = fdiv double %98, 1.000000e+03
  store double %99, double* %17, align 8
  %100 = load double, double* %17, align 8
  %101 = fcmp olt double %100, 1.000000e+03
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load double, double* %17, align 8
  %104 = fptosi double %103 to i32
  %105 = sitofp i32 %104 to double
  %106 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %105)
  %107 = load i8*, i8** %9, align 8
  %108 = bitcast i8* %107 to i8**
  store i8* %106, i8** %108, align 8
  br label %115

109:                                              ; preds = %97
  %110 = load double, double* %17, align 8
  %111 = fdiv double %110, 1.000000e+03
  %112 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %111)
  %113 = load i8*, i8** %9, align 8
  %114 = bitcast i8* %113 to i8**
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %109, %102
  %116 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %116, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %123

117:                                              ; preds = %93
  %118 = load i32, i32* %8, align 4
  %119 = load i8*, i8** %9, align 8
  %120 = load double, double* %17, align 8
  %121 = call i32 @llrint(double %120)
  %122 = call i32 @m_property_int64_ro(i32 %118, i8* %119, i32 %121)
  store i32 %122, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %123

123:                                              ; preds = %117, %115, %86, %76
  %124 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %124)
  br label %125

125:                                              ; preds = %123, %62
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @demux_get_bitrate_stats(%struct.demuxer*, double*) #2

declare dso_local i32 @m_property_int64_ro(i32, i8*, i32) #2

declare dso_local i32 @llrint(double) #2

declare dso_local i8* @talloc_asprintf(i32*, i8*, double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
