; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/wlanconf/extr_wlanconf.c_OpenAdapterHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/wlanconf/extr_wlanconf.c_OpenAdapterHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_10__*, i64 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@IOCTL_NDISUIO_QUERY_BINDING = common dso_local global i32 0, align 4
@IOCTL_NDISUIO_OPEN_DEVICE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OpenAdapterHandle(i64 %0, i64* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i64 4100, i64* %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  %17 = call i64 (...) @OpenDriverHandle()
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %4, align 8
  br label %175

23:                                               ; preds = %3
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load i64, i64* %11, align 8
  %26 = call %struct.TYPE_10__* @HeapAlloc(i32 %24, i32 0, i64 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %12, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @CloseHandle(i64 %30)
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %4, align 8
  br label %175

33:                                               ; preds = %23
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @IOCTL_NDISUIO_QUERY_BINDING, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @DeviceIoControl(i64 %37, i32 %38, %struct.TYPE_10__* %39, i64 %40, %struct.TYPE_10__* %41, i64 %42, i64* %10, i32* null)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %33
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.TYPE_10__* %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @CloseHandle(i64 %50)
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %4, align 8
  br label %175

53:                                               ; preds = %33
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @IOCTL_NDISUIO_OPEN_DEVICE, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = ptrtoint %struct.TYPE_10__* %56 to i32
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @DeviceIoControl(i64 %54, i32 %55, %struct.TYPE_10__* %62, i64 %65, %struct.TYPE_10__* null, i64 0, i64* %10, i32* null)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %53
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, %struct.TYPE_10__* %71)
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @CloseHandle(i64 %73)
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %4, align 8
  br label %175

76:                                               ; preds = %53
  store i64 4, i64* %14, align 8
  br label %77

77:                                               ; preds = %100, %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, %struct.TYPE_10__* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = call i32 (...) @GetProcessHeap()
  %86 = load i64, i64* %14, align 8
  %87 = call %struct.TYPE_10__* @HeapAlloc(i32 %85, i32 0, i64 %86)
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %16, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, %struct.TYPE_10__* %92)
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @CloseHandle(i64 %94)
  %96 = load i64, i64* @FALSE, align 8
  store i64 %96, i64* %4, align 8
  br label %175

97:                                               ; preds = %84
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %99 = call i64 @GetInterfaceInfo(%struct.TYPE_10__* %98, i64* %14)
  store i64 %99, i64* %13, align 8
  br label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %77, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* @NO_ERROR, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = call i32 (...) @GetProcessHeap()
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %111 = call i32 @HeapFree(i32 %109, i32 0, %struct.TYPE_10__* %110)
  %112 = call i32 (...) @GetProcessHeap()
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %114 = call i32 @HeapFree(i32 %112, i32 0, %struct.TYPE_10__* %113)
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @CloseHandle(i64 %115)
  %117 = load i64, i64* @FALSE, align 8
  store i64 %117, i64* %4, align 8
  br label %175

118:                                              ; preds = %104
  store i64 0, i64* %15, align 8
  br label %119

119:                                              ; preds = %162, %118
  %120 = load i64, i64* %15, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %165

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %127 = ptrtoint %struct.TYPE_10__* %126 to i32
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = sext i32 %127 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %131
  %133 = ptrtoint %struct.TYPE_10__* %132 to i32
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = load i64, i64* %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @wcsstr(i32 %133, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %125
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load i64, i64* %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %148
  %150 = bitcast %struct.TYPE_11__* %144 to i8*
  %151 = bitcast %struct.TYPE_11__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %150, i8* align 4 %151, i64 4, i1 false)
  %152 = load i64, i64* %8, align 8
  %153 = load i64*, i64** %6, align 8
  store i64 %152, i64* %153, align 8
  %154 = call i32 (...) @GetProcessHeap()
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %156 = call i32 @HeapFree(i32 %154, i32 0, %struct.TYPE_10__* %155)
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %159 = call i32 @HeapFree(i32 %157, i32 0, %struct.TYPE_10__* %158)
  %160 = load i64, i64* @TRUE, align 8
  store i64 %160, i64* %4, align 8
  br label %175

161:                                              ; preds = %125
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %15, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %15, align 8
  br label %119

165:                                              ; preds = %119
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %168 = call i32 @HeapFree(i32 %166, i32 0, %struct.TYPE_10__* %167)
  %169 = call i32 (...) @GetProcessHeap()
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %171 = call i32 @HeapFree(i32 %169, i32 0, %struct.TYPE_10__* %170)
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @CloseHandle(i64 %172)
  %174 = load i64, i64* @FALSE, align 8
  store i64 %174, i64* %4, align 8
  br label %175

175:                                              ; preds = %165, %143, %108, %90, %69, %46, %29, %21
  %176 = load i64, i64* %4, align 8
  ret i64 %176
}

declare dso_local i64 @OpenDriverHandle(...) #1

declare dso_local %struct.TYPE_10__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @DeviceIoControl(i64, i32, %struct.TYPE_10__*, i64, %struct.TYPE_10__*, i64, i64*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @GetInterfaceInfo(%struct.TYPE_10__*, i64*) #1

declare dso_local i64 @wcsstr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
