; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/qedit/extr_samplegrabber.c_SampleGrabber_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/qedit/extr_samplegrabber.c_SampleGrabber_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"(%p) Callback referenced sample %p by %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported method %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @SampleGrabber_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SampleGrabber_callback(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %2
  store i32* null, i32** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @IMediaSample_GetActualDataLength(i32* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @IMediaSample_GetPointer(i32* %23, i32** %8)
  %25 = call i64 @SUCCEEDED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @EnterCriticalSection(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @CoTaskMemFree(i32* %44)
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  %50 = call i32* @CoTaskMemAlloc(i64 %49)
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32* [ %50, %48 ], [ null, %51 ]
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %31
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @CopyMemory(i32* %65, i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %62, %59
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @LeaveCriticalSection(i32* %72)
  br label %74

74:                                               ; preds = %69, %22, %17
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %155

81:                                               ; preds = %75
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @IMediaSample_GetTime(i32* %82, i32* %6, i32* %7)
  %84 = call i64 @SUCCEEDED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = sitofp i32 %87 to double
  %89 = fmul double 0x3E7AD7F29ABCAF48, %88
  store double %89, double* %5, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %148 [
    i32 0, label %94
    i32 1, label %125
    i32 -1, label %147
  ]

94:                                               ; preds = %90
  %95 = load i32*, i32** %4, align 8
  %96 = call i64 @IMediaSample_AddRef(i32* %95)
  store i64 %96, i64* %10, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load double, double* %5, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @ISampleGrabberCB_SampleCB(i32 %99, double %100, i32* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @IMediaSample_Release(i32* %103)
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %10, align 8
  %108 = sub nsw i64 %106, %107
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %94
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %112, i32* %113, i64 %114)
  br label %116

116:                                              ; preds = %120, %111
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %10, align 8
  %119 = icmp ne i64 %117, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @IMediaSample_Release(i32* %121)
  br label %116

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %94
  br label %155

125:                                              ; preds = %90
  store i32* null, i32** %11, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i64 @IMediaSample_GetActualDataLength(i32* %126)
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* %12, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @IMediaSample_GetPointer(i32* %131, i32** %11)
  %133 = call i64 @SUCCEEDED(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load i32*, i32** %11, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load double, double* %5, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @ISampleGrabberCB_BufferCB(i32 %141, double %142, i32* %143, i64 %144)
  br label %146

146:                                              ; preds = %138, %135, %130, %125
  br label %155

147:                                              ; preds = %90
  br label %155

148:                                              ; preds = %90
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 -1, i32* %154, align 8
  br label %155

155:                                              ; preds = %80, %148, %147, %146, %124
  ret void
}

declare dso_local i64 @IMediaSample_GetActualDataLength(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IMediaSample_GetPointer(i32*, i32**) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32* @CoTaskMemAlloc(i64) #1

declare dso_local i32 @CopyMemory(i32*, i32*, i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @IMediaSample_GetTime(i32*, i32*, i32*) #1

declare dso_local i64 @IMediaSample_AddRef(i32*) #1

declare dso_local i32 @ISampleGrabberCB_SampleCB(i32, double, i32*) #1

declare dso_local i32 @IMediaSample_Release(i32*) #1

declare dso_local i32 @ERR(i8*, %struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @ISampleGrabberCB_BufferCB(i32, double, i32*, i64) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
