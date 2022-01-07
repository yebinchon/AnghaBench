; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_read.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.lfs2_info = type { i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"lfs2_dir_read(%p, %p, %p)\00", align 1
@LFS2_TYPE_DIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"lfs2_dir_read -> %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@LFS2_ERR_NOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs2_dir_read(i32* %0, %struct.TYPE_5__* %1, %struct.lfs2_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.lfs2_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.lfs2_info* %2, %struct.lfs2_info** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = bitcast %struct.TYPE_5__* %13 to i8*
  %15 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %16 = bitcast %struct.lfs2_info* %15 to i8*
  %17 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %14, i8* %16)
  %18 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %19 = call i32 @memset(%struct.lfs2_info* %18, i32 0, i32 16)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load i8*, i8** @LFS2_TYPE_DIR, align 8
  %26 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %27 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %29 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 1, i32* %4, align 4
  br label %127

37:                                               ; preds = %3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i8*, i8** @LFS2_TYPE_DIR, align 8
  %44 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %45 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %47 = getelementptr inbounds %struct.lfs2_info, %struct.lfs2_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strcpy(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 1, i32* %4, align 4
  br label %127

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %120
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %57
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 0, i32* %4, align 4
  br label %127

74:                                               ; preds = %66
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @lfs2_dir_fetch(i32* %75, %struct.TYPE_6__* %77, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %127

89:                                               ; preds = %74
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %57
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %100 = call i32 @lfs2_dir_getinfo(i32* %93, %struct.TYPE_6__* %95, i64 %98, %struct.lfs2_info* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @LFS2_ERR_NOENT, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %127

111:                                              ; preds = %103, %92
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @LFS2_ERR_NOENT, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %121

120:                                              ; preds = %111
  br label %57

121:                                              ; preds = %119
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %121, %107, %85, %72, %42, %24
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @LFS2_TRACE(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.lfs2_info*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @lfs2_dir_fetch(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @lfs2_dir_getinfo(i32*, %struct.TYPE_6__*, i64, %struct.lfs2_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
