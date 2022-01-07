; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_get_pmt_pid.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_get_pmt_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_sct_filter_params = type { i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"/dev/dvb/adapter%d/demux0\00", align 1
@DMX_IMMEDIATE_START = common dso_local global i32 0, align 4
@DMX_CHECK_CRC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Opening PAT DEMUX failed, error: %d\00", align 1
@errno = common dso_local global i64 0, align 8
@DMX_SET_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ioctl DMX_SET_FILTER failed, error: %d\00", align 1
@EOVERFLOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"PAT: read_sections: read error: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_get_pmt_pid(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dmx_sct_filter_params, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4096 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = trunc i64 %21 to i32
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @memset(%struct.dmx_sct_filter_params* %10, i32 0, i32 40)
  %28 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %10, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %10, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %10, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 255, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %10, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @DMX_IMMEDIATE_START, align 4
  %39 = load i32, i32* @DMX_CHECK_CRC, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @O_RDWR, align 4
  %43 = call i32 @open(i8* %23, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @MP_ERR(i32* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %149

49:                                               ; preds = %3
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @DMX_SET_FILTER, align 4
  %52 = call i64 @ioctl(i32 %50, i32 %51, %struct.dmx_sct_filter_params* %10)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* @errno, align 8
  %57 = call i32 @MP_ERR(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @close(i32 %58)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %149

60:                                               ; preds = %49
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i64 0, i64 0
  store i8* %61, i8** %16, align 8
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %144, %104, %60
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %145

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @read(i32 %67, i8* %68, i32 4096)
  store i32 %69, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EOVERFLOW, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @read(i32 %76, i8* %77, i32 4096)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %75, %71, %66
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* @errno, align 8
  %85 = call i32 @MP_ERR(i32* %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @close(i32 %86)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %149

88:                                               ; preds = %79
  %89 = load i8*, i8** %16, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 15
  %94 = shl i32 %93, 8
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %94, %98
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 3
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %88
  br label %62

105:                                              ; preds = %88
  %106 = load i8*, i8** %16, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  store i8* %107, i8** %16, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %108, 8
  store i32 %109, i32* %14, align 4
  store i32 1, i32* %18, align 4
  br label %110

110:                                              ; preds = %139, %105
  %111 = load i32, i32* %14, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = load i8*, i8** %16, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl i32 %117, 8
  %119 = load i8*, i8** %16, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %118, %122
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %113
  %128 = load i8*, i8** %16, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 31
  %133 = shl i32 %132, 8
  %134 = load i8*, i8** %16, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %133, %137
  store i32 %138, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %127, %113
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  store i8* %141, i8** %16, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %142, 4
  store i32 %143, i32* %14, align 4
  br label %110

144:                                              ; preds = %110
  br label %62

145:                                              ; preds = %62
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @close(i32 %146)
  %148 = load i32, i32* %17, align 4
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %149

149:                                              ; preds = %145, %82, %54, %45
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.dmx_sct_filter_params*, i32, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @MP_ERR(i32*, i8*, i64) #2

declare dso_local i64 @ioctl(i32, i32, %struct.dmx_sct_filter_params*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
