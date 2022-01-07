; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_ntfs.c_NtfsFindAttributeHelper.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_ntfs.c_NtfsFindAttributeHelper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@NTFS_ATTR_TYPE_END = common dso_local global i64 0, align 8
@NTFS_ATTR_TYPE_ATTRIBUTE_LIST = common dso_local global i64 0, align 8
@TAG_NTFS_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate memory: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i64, i32*, i64)* @NtfsFindAttributeHelper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @NtfsFindAttributeHelper(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  br label %21

21:                                               ; preds = %131, %55, %6
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = icmp ult %struct.TYPE_10__* %22, %23
  br i1 %24, label %25, label %139

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NTFS_ATTR_TYPE_END, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %139

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NTFS_ATTR_TYPE_ATTRIBUTE_LIST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = call %struct.TYPE_11__* @NtfsPrepareAttributeContext(%struct.TYPE_10__* %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %15, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = call i32 @NtfsGetAttributeSize(i32* %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ule i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* @TAG_NTFS_LIST, align 4
  %50 = call i32* @FrLdrTempAlloc(i64 %48, i32 %49)
  store i32* %50, i32** %16, align 8
  br label %52

51:                                               ; preds = %38
  store i32* null, i32** %16, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32*, i32** %16, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %21

59:                                               ; preds = %52
  %60 = load i32*, i32** %16, align 8
  %61 = bitcast i32* %60 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %18, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = inttoptr i64 %66 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %19, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 @NtfsReadAttribute(i32 %68, %struct.TYPE_11__* %69, i32 0, i32* %70, i64 %72)
  %74 = load i32, i32* %17, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %59
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call %struct.TYPE_11__* @NtfsFindAttributeHelper(i32 %77, %struct.TYPE_10__* %78, %struct.TYPE_10__* %79, i64 %80, i32* %81, i64 %82)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %14, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %85 = call i32 @NtfsReleaseAttributeContext(%struct.TYPE_11__* %84)
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* @TAG_NTFS_LIST, align 4
  %88 = call i32 @FrLdrTempFree(i32* %86, i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %7, align 8
  br label %140

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %59
  br label %95

95:                                               ; preds = %94, %32
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = ptrtoint %struct.TYPE_10__* %108 to i64
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  store i64 %113, i64* %20, align 8
  %114 = load i64, i64* %20, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = load i64, i64* %13, align 8
  %117 = shl i64 %116, 1
  %118 = call i64 @RtlEqualMemory(i64 %114, i32* %115, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %107
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = call %struct.TYPE_11__* @NtfsPrepareAttributeContext(%struct.TYPE_10__* %121)
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %7, align 8
  br label %140

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %101
  br label %125

125:                                              ; preds = %124, %95
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  br label %140

131:                                              ; preds = %125
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %133 = ptrtoint %struct.TYPE_10__* %132 to i64
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = inttoptr i64 %137 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %9, align 8
  br label %21

139:                                              ; preds = %31, %21
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  br label %140

140:                                              ; preds = %139, %130, %120, %91
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %141
}

declare dso_local %struct.TYPE_11__* @NtfsPrepareAttributeContext(%struct.TYPE_10__*) #1

declare dso_local i32 @NtfsGetAttributeSize(i32*) #1

declare dso_local i32* @FrLdrTempAlloc(i64, i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @NtfsReadAttribute(i32, %struct.TYPE_11__*, i32, i32*, i64) #1

declare dso_local i32 @NtfsReleaseAttributeContext(%struct.TYPE_11__*) #1

declare dso_local i32 @FrLdrTempFree(i32*, i32) #1

declare dso_local i64 @RtlEqualMemory(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
