; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_GetServiceList.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_GetServiceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@SC_ENUM_PROCESS_INFO = common dso_local global i32 0, align 4
@SERVICE_WIN32 = common dso_local global i32 0, align 4
@SERVICE_STATE_ALL = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ProcessHeap = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetServiceList(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i32 @FreeServiceList(%struct.TYPE_6__* %11)
  %13 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %14 = call i32* @OpenSCManagerW(i32* null, i32* null, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @SC_ENUM_PROCESS_INFO, align 4
  %20 = load i32, i32* @SERVICE_WIN32, align 4
  %21 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %22 = call i64 @EnumServicesStatusEx(i32* %18, i32 %19, i32 %20, i32 %21, i32* null, i32 0, i32* %6, i32* %8, i32* %7, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %17
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* @ERROR_MORE_DATA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* @ProcessHeap, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @HeapAlloc(i32 %29, i32 0, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %3, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @SC_ENUM_PROCESS_INFO, align 4
  %38 = load i32, i32* @SERVICE_WIN32, align 4
  %39 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = bitcast %struct.TYPE_7__* %40 to i32*
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @EnumServicesStatusEx(i32* %36, i32 %37, i32 %38, i32 %39, i32* %41, i32 %42, i32* %6, i32* %8, i32* %7, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %35
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49, %17
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @CloseServiceHandle(i32* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @ProcessHeap, align 4
  %59 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 24
  %63 = trunc i64 %62 to i32
  %64 = call i8* @HeapAlloc(i32 %58, i32 %59, i32 %63)
  %65 = bitcast i8* %64 to %struct.TYPE_7__*
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %192

72:                                               ; preds = %57
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %188, %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %191

80:                                               ; preds = %76
  %81 = load i32, i32* @ProcessHeap, align 4
  %82 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @wcslen(i8* %88)
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i8* @HeapAlloc(i32 %81, i32 %82, i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i8* %94, i8** %101, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %80
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @wcscpy(i8* %119, i8* %125)
  br label %127

127:                                              ; preds = %111, %80
  %128 = load i32, i32* @ProcessHeap, align 4
  %129 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @wcslen(i8* %135)
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = call i8* @HeapAlloc(i32 %128, i32 %129, i32 %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i8* %141, i8** %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %127
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @wcscpy(i8* %166, i8* %172)
  br label %174

174:                                              ; preds = %158, %127
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = call i32 @CopyMemory(i32* %181, i32* %186, i32 4)
  br label %188

188:                                              ; preds = %174
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %76

191:                                              ; preds = %76
  br label %192

192:                                              ; preds = %191, %57
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = icmp ne %struct.TYPE_7__* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* @ProcessHeap, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = call i32 @HeapFree(i32 %196, i32 0, %struct.TYPE_7__* %197)
  br label %199

199:                                              ; preds = %195, %192
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @FreeServiceList(%struct.TYPE_6__*) #1

declare dso_local i32* @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i64 @EnumServicesStatusEx(i32*, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @wcscpy(i8*, i8*) #1

declare dso_local i32 @CopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
