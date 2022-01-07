; ModuleID = '/home/carl/AnghaBench/reactos/base/services/eventlog/extr_eventsource.c_LoadEventSources.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/eventlog/extr_eventsource.c_LoadEventSources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"LoadEventSources\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"RegQueryInfoKeyW failed: %lu\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Error: cannot allocate heap!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Event Source: %S\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i32] [i32 83, i32 111, i32 117, i32 114, i32 99, i32 101, i32 115, i32 0], align 4
@REG_MULTI_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"RegSetValueExW failed: %lu\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LoadEventSources(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %17 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @RegQueryInfoKeyW(i32 %18, i32* null, i32* null, i32* null, i32* %7, i32* %8, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %16, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* %16, align 8
  %25 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %3, align 8
  br label %172

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32* @HeapAlloc(i32 %30, i32 0, i32 %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %3, align 8
  br label %172

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @wcslen(i32* %47)
  %49 = add nsw i32 %44, %48
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %10, align 4
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32* @HeapAlloc(i32 %51, i32 0, i32 %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %41
  %60 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %65

61:                                               ; preds = %41
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %15, align 8
  %64 = load i32*, i32** %13, align 8
  store i32* %64, i32** %14, align 8
  br label %65

65:                                               ; preds = %61, %59
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %106, %65
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = call i64 @RegEnumKeyExW(i32 %68, i32 %69, i32* %70, i32* %9, i32* null, i32* null, i32* null, i32* null)
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i64 @_wcsicmp(i32* %77, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %74
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i64 @AddNewEventSource(%struct.TYPE_4__* %84, i32* %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = load i32*, i32** %14, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32*, i32** %14, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @StringCchCopyExW(i32* %93, i64 %94, i32* %95, i32** %14, i64* %15, i32 0)
  %97 = load i64, i64* %15, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %14, align 8
  store i32 0, i32* %101, align 4
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %15, align 8
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %89, %81
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %67

110:                                              ; preds = %67
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @AddNewEventSource(%struct.TYPE_4__* %115, i32* %118)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %110
  %123 = load i32*, i32** %14, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  %126 = load i32*, i32** %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @StringCchCopyExW(i32* %126, i64 %127, i32* %130, i32** %14, i64* %15, i32 0)
  %132 = load i64, i64* %15, align 8
  %133 = icmp ugt i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load i32*, i32** %14, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %14, align 8
  store i32 0, i32* %136, align 4
  %137 = load i64, i64* %15, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %15, align 8
  br label %139

139:                                              ; preds = %134, %125
  br label %140

140:                                              ; preds = %139, %122, %110
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @REG_MULTI_SZ, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = ptrtoint i32* %143 to i32
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %15, align 8
  %148 = sub i64 %146, %147
  %149 = add i64 %148, 1
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i64 @RegSetValueExW(i32 %141, i8* bitcast ([8 x i32]* @.str.4 to i8*), i32 0, i32 %142, i32 %144, i32 %151)
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %16, align 8
  %154 = load i64, i64* @ERROR_SUCCESS, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %140
  %157 = load i64, i64* %16, align 8
  %158 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %157)
  br label %159

159:                                              ; preds = %156, %140
  %160 = load i32*, i32** %13, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = call i32 (...) @GetProcessHeap()
  %164 = load i32*, i32** %13, align 8
  %165 = call i32 @HeapFree(i32 %163, i32 0, i32* %164)
  br label %166

166:                                              ; preds = %162, %159
  %167 = call i32 (...) @GetProcessHeap()
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @HeapFree(i32 %167, i32 0, i32* %168)
  %170 = call i32 (...) @DumpEventSourceList()
  %171 = load i64, i64* @TRUE, align 8
  store i64 %171, i64* %3, align 8
  br label %172

172:                                              ; preds = %166, %38, %23
  %173 = load i64, i64* %3, align 8
  ret i64 %173
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i64 @RegEnumKeyExW(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @_wcsicmp(i32*, i32*) #1

declare dso_local i64 @AddNewEventSource(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @StringCchCopyExW(i32*, i64, i32*, i32**, i64*, i32) #1

declare dso_local i64 @RegSetValueExW(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @DumpEventSourceList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
