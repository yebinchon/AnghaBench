; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSeek.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"FatSeek() NewPosition = %u, OldPointer = %u, SeekMode = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"FatSeek() OldClusterIdx: %u, NewClusterIdx: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FatSeek(i32 %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_8__* @FsGetDeviceSpecific(i32 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = bitcast %struct.TYPE_9__* %10 to i8*
  %22 = bitcast %struct.TYPE_9__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %33 [
    i32 129, label %24
    i32 128, label %25
  ]

24:                                               ; preds = %3
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, %29
  store i32 %32, i32* %30, align 8
  br label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %126

37:                                               ; preds = %25, %24
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %126

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %126

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %57, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = mul nsw i64 %65, %68
  %70 = sdiv i64 %62, %69
  store i64 %70, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = mul nsw i64 %75, %78
  %80 = sdiv i64 %72, %79
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %52
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i64, i64* %11, align 8
  store i64 %92, i64* %13, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %14, align 8
  br label %100

96:                                               ; preds = %87
  store i64 0, i64* %13, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %14, align 8
  br label %100

100:                                              ; preds = %96, %91
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = load i64, i64* %14, align 8
  %108 = call i32 @FatGetFatEntry(%struct.TYPE_7__* %106, i64 %107, i64* %14)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @EIO, align 4
  store i32 %111, i32* %4, align 4
  br label %126

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %13, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %101

116:                                              ; preds = %101
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %52
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @ESUCCESS, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %120, %110, %50, %41, %33
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_8__* @FsGetDeviceSpecific(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i32 @FatGetFatEntry(%struct.TYPE_7__*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
