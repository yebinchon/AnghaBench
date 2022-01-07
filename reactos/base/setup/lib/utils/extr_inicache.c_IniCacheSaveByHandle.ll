; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheSaveByHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheSaveByHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"BufferSize: %lu\0A\00", align 1
@ProcessHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RtlAllocateHeap() failed\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[%S]\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%S=%S\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"NtWriteFile() failed (Status %lx)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniCacheSaveByHandle(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  br label %18

18:                                               ; preds = %76, %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %77

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @wcslen(i64 %29)
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ %30, %26 ], [ 0, %31 ]
  %34 = add nsw i32 %33, 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %8, align 8
  br label %40

40:                                               ; preds = %58, %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @wcslen(i64 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @wcslen(i64 %55)
  br label %58

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %52
  %59 = phi i32 [ %56, %52 ], [ 0, %57 ]
  %60 = add nsw i32 %47, %59
  %61 = add nsw i32 %60, 3
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %8, align 8
  br label %40

67:                                               ; preds = %40
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %67
  br label %18

77:                                               ; preds = %18
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ProcessHeap, align 4
  %81 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i64 @RtlAllocateHeap(i32 %80, i32 %81, i32 %83)
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = call i32 @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %90, i32* %3, align 4
  br label %166

91:                                               ; preds = %77
  %92 = load i32*, i32** %10, align 8
  store i32* %92, i32** %11, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %7, align 8
  br label %96

96:                                               ; preds = %144, %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = icmp ne %struct.TYPE_7__* %97, null
  br i1 %98, label %99, label %145

99:                                               ; preds = %96
  %100 = load i32*, i32** %11, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32*, i8*, ...) @sprintf(i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %11, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %8, align 8
  br label %112

112:                                              ; preds = %115, %99
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %112
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @sprintf(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %119, i64 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %11, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %8, align 8
  br label %112

131:                                              ; preds = %112
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %7, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = icmp ne %struct.TYPE_7__* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 (i32*, i8*, ...) @sprintf(i32* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %11, align 8
  br label %144

144:                                              ; preds = %137, %131
  br label %96

145:                                              ; preds = %96
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @NtWriteFile(i32 %147, i32* null, i32* null, i32* null, i32* %13, i32* %148, i32 %149, %struct.TYPE_10__* %14, i32* null)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @NT_SUCCESS(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @ProcessHeap, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @RtlFreeHeap(i32 %157, i32 0, i32* %158)
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %166

161:                                              ; preds = %145
  %162 = load i32, i32* @ProcessHeap, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @RtlFreeHeap(i32 %162, i32 0, i32* %163)
  %165 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %161, %154, %88
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @wcslen(i64) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i64 @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @sprintf(i32*, i8*, ...) #1

declare dso_local i32 @NtWriteFile(i32, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
