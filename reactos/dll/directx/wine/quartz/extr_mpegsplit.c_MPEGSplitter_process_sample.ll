; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_process_sample.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_MPEGSplitter_process_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c".. Why do I need you?\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed with hres: %08x!\0A\00", align 1
@VFW_E_WRONG_STATE = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"End of file reached\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Error sending EndOfStream to pin %u (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32*, i32)* @MPEGSplitter_process_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MPEGSplitter_process_sample(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %13, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @IMediaSample_GetTime(i32* %22, i8** %11, i8** %12)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call i64 @SUCCEEDED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @IMediaSample_GetActualDataLength(i32* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @IMediaSample_GetPointer(i32* %30, i32** %9)
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %27, %3
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* @S_OK, align 8
  store i64 %37, i64* %4, align 8
  br label %134

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @FillBuffer(%struct.TYPE_11__* %39, i32* %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %38
  %46 = load i64, i64* %14, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @VFW_E_WRONG_STATE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @S_FALSE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52, %45
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @memcpy(i32 %59, i32* %60, i32 4)
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i8* %62, i8** %67, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %56, %52
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i8*, i8** %12, align 8
  %75 = call i64 @BYTES_FROM_MEDIATIME(i8* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %83, %88
  br i1 %89, label %90, label %132

90:                                               ; preds = %80, %73
  %91 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %127, %90
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %93, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %92
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @IPin_ConnectedTo(i32 %108, i32** %16)
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = call i64 @SUCCEEDED(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load i32*, i32** %16, align 8
  %115 = call i64 @IPin_EndOfStream(i32* %114)
  store i64 %115, i64* %14, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @IPin_Release(i32* %116)
  br label %118

118:                                              ; preds = %113, %99
  %119 = load i64, i64* %14, align 8
  %120 = call i64 @FAILED(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %15, align 4
  %124 = load i64, i64* %14, align 8
  %125 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %123, i64 %124)
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %92

130:                                              ; preds = %92
  %131 = load i64, i64* @S_FALSE, align 8
  store i64 %131, i64* %14, align 8
  br label %132

132:                                              ; preds = %130, %80
  %133 = load i64, i64* %14, align 8
  store i64 %133, i64* %4, align 8
  br label %134

134:                                              ; preds = %132, %35
  %135 = load i64, i64* %4, align 8
  ret i64 %135
}

declare dso_local i64 @IMediaSample_GetTime(i32*, i8**, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IMediaSample_GetActualDataLength(i32*) #1

declare dso_local i64 @IMediaSample_GetPointer(i32*, i32**) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @FillBuffer(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @WARN(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @BYTES_FROM_MEDIATIME(i8*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @IPin_ConnectedTo(i32, i32**) #1

declare dso_local i64 @IPin_EndOfStream(i32*) #1

declare dso_local i32 @IPin_Release(i32*) #1

declare dso_local i64 @FAILED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
