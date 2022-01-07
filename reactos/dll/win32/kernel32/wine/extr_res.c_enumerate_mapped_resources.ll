; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_enumerate_mapped_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_enumerate_mapped_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.resource_data = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"version (%d.%d) %d named %d id entries\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, %struct.TYPE_8__*)* @enumerate_mapped_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enumerate_mapped_resources(i32* %0, i8* %1, i64 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.resource_data*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i64 %31, i64 %34)
  store i64 0, i64* %15, align 8
  br label %36

36:                                               ; preds = %165, %4
  %37 = load i64, i64* %15, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = icmp slt i64 %37, %44
  br i1 %45, label %46, label %168

46:                                               ; preds = %36
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 1
  %49 = bitcast %struct.TYPE_8__* %48 to %struct.TYPE_7__*
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %11, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = call i32 @resource_dup_string(%struct.TYPE_8__* %52, %struct.TYPE_7__* %53)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = bitcast %struct.TYPE_8__* %55 to i8*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = bitcast i8* %61 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %9, align 8
  store i64 0, i64* %16, align 8
  br label %63

63:                                               ; preds = %159, %46
  %64 = load i64, i64* %16, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = icmp slt i64 %64, %71
  br i1 %72, label %73, label %162

73:                                               ; preds = %63
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 1
  %76 = bitcast %struct.TYPE_8__* %75 to %struct.TYPE_7__*
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %12, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = call i32 @resource_dup_string(%struct.TYPE_8__* %79, %struct.TYPE_7__* %80)
  store i32 %81, i32* %19, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = bitcast %struct.TYPE_8__* %82 to i8*
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = bitcast i8* %88 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %10, align 8
  store i64 0, i64* %17, align 8
  br label %90

90:                                               ; preds = %153, %73
  %91 = load i64, i64* %17, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = icmp slt i64 %91, %98
  br i1 %99, label %100, label %156

100:                                              ; preds = %90
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 1
  %103 = bitcast %struct.TYPE_8__* %102 to %struct.TYPE_7__*
  %104 = load i64, i64* %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %104
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %13, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %20, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = bitcast %struct.TYPE_8__* %109 to i8*
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = bitcast i8* %115 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %14, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @address_from_rva(i8* %117, i64 %118, i32 %121, i32 %124)
  store i8* %125, i8** %21, align 8
  %126 = load i32, i32* %20, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %21, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @FALSE, align 4
  %135 = call %struct.resource_data* @allocate_resource_data(i32 %126, i32 %129, i8* %130, i32 %133, i32 %134)
  store %struct.resource_data* %135, %struct.resource_data** %22, align 8
  %136 = load %struct.resource_data*, %struct.resource_data** %22, align 8
  %137 = icmp ne %struct.resource_data* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %100
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %20, align 4
  %143 = load %struct.resource_data*, %struct.resource_data** %22, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = call i32 @update_add_resource(i32* %139, i32 %140, i32 %141, i32 %142, %struct.resource_data* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %138
  %148 = call i32 (...) @GetProcessHeap()
  %149 = load %struct.resource_data*, %struct.resource_data** %22, align 8
  %150 = call i32 @HeapFree(i32 %148, i32 0, %struct.resource_data* %149)
  br label %151

151:                                              ; preds = %147, %138
  br label %152

152:                                              ; preds = %151, %100
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %17, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %17, align 8
  br label %90

156:                                              ; preds = %90
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @res_free_str(i32 %157)
  br label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %16, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %16, align 8
  br label %63

162:                                              ; preds = %63
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @res_free_str(i32 %163)
  br label %165

165:                                              ; preds = %162
  %166 = load i64, i64* %15, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %15, align 8
  br label %36

168:                                              ; preds = %36
  %169 = load i32, i32* @TRUE, align 4
  ret i32 %169
}

declare dso_local i32 @TRACE(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @resource_dup_string(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i8* @address_from_rva(i8*, i64, i32, i32) #1

declare dso_local %struct.resource_data* @allocate_resource_data(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @update_add_resource(i32*, i32, i32, i32, %struct.resource_data*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.resource_data*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @res_free_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
