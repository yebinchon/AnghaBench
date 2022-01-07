; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_open.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.lfs2_mlist*, i32* }
%struct.lfs2_mlist = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i64, i64, i64, %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"lfs2_dir_open(%p, %p, \22%s\22)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"lfs2_dir_open -> %d\00", align 1
@LFS2_TYPE_DIR = common dso_local global i64 0, align 8
@LFS2_ERR_NOTDIR = common dso_local global i32 0, align 4
@LFS2_TYPE_STRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs2_dir_open(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = bitcast %struct.TYPE_11__* %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = bitcast %struct.TYPE_12__* %15 to i8*
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %16, i8* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  %22 = call i32 @lfs2_dir_find(%struct.TYPE_11__* %19, %struct.TYPE_13__* %21, i8** %7, i32* null)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %126

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @lfs2_tag_type3(i32 %30)
  %32 = load i64, i64* @LFS2_TYPE_DIR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @LFS2_ERR_NOTDIR, align 4
  %36 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @LFS2_ERR_NOTDIR, align 4
  store i32 %37, i32* %4, align 4
  br label %126

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @lfs2_tag_id(i32 %39)
  %41 = icmp eq i32 %40, 1023
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  br label %75

55:                                               ; preds = %38
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = call i32 @LFS2_MKTAG(i32 1792, i32 1023, i32 0)
  %60 = load i32, i32* @LFS2_TYPE_STRUCT, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @lfs2_tag_id(i32 %61)
  %63 = call i32 @LFS2_MKTAG(i32 %60, i32 %62, i32 8)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %65 = call i32 @lfs2_dir_get(%struct.TYPE_11__* %56, %struct.TYPE_13__* %58, i32 %59, i32 %63, i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %126

72:                                               ; preds = %55
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %74 = call i32 @lfs2_pair_fromle32(i32* %73)
  br label %75

75:                                               ; preds = %72, %42
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %80 = call i32 @lfs2_dir_fetch(%struct.TYPE_11__* %76, %struct.TYPE_13__* %78, i32* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %126

87:                                               ; preds = %75
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load i64, i64* @LFS2_TYPE_DIR, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.lfs2_mlist*, %struct.lfs2_mlist** %116, align 8
  %118 = bitcast %struct.lfs2_mlist* %117 to %struct.TYPE_12__*
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = bitcast %struct.TYPE_12__* %121 to %struct.lfs2_mlist*
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store %struct.lfs2_mlist* %122, %struct.lfs2_mlist** %124, align 8
  %125 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %87, %83, %68, %34, %25
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @LFS2_TRACE(i8*, i32, ...) #1

declare dso_local i32 @lfs2_dir_find(%struct.TYPE_11__*, %struct.TYPE_13__*, i8**, i32*) #1

declare dso_local i64 @lfs2_tag_type3(i32) #1

declare dso_local i32 @lfs2_tag_id(i32) #1

declare dso_local i32 @lfs2_dir_get(%struct.TYPE_11__*, %struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @LFS2_MKTAG(i32, i32, i32) #1

declare dso_local i32 @lfs2_pair_fromle32(i32*) #1

declare dso_local i32 @lfs2_dir_fetch(%struct.TYPE_11__*, %struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
