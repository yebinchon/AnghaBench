; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_file_read.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i32, i32, i32 }

@LFS1_O_WRONLY = common dso_local global i32 0, align 4
@LFS1_ERR_BADF = common dso_local global i32 0, align 4
@LFS1_F_WRITING = common dso_local global i32 0, align 4
@LFS1_F_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs1_file_read(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 3
  %23 = load i32, i32* @LFS1_O_WRONLY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @LFS1_ERR_BADF, align 4
  store i32 %26, i32* %5, align 4
  br label %159

27:                                               ; preds = %4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LFS1_F_WRITING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = call i32 @lfs1_file_flush(%struct.TYPE_11__* %35, %struct.TYPE_12__* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %159

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %159

52:                                               ; preds = %43
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = call i64 @lfs1_min(i64 %53, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %139, %52
  %64 = load i64, i64* %11, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %156

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @LFS1_F_READING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %76, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %73, %66
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = call i32 @lfs1_ctz_find(%struct.TYPE_11__* %84, i32* %86, i32* null, i32 %89, i64 %92, i64 %95, i32* %97, i64* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %83
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %5, align 4
  br label %159

105:                                              ; preds = %83
  %106 = load i32, i32* @LFS1_F_READING, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %73
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  %122 = call i64 @lfs1_min(i64 %112, i64 %121)
  store i64 %122, i64* %14, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @lfs1_cache_read(%struct.TYPE_11__* %123, i32* %125, i32* null, i32 %128, i64 %131, i32* %132, i64 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %111
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %5, align 4
  br label %159

139:                                              ; preds = %111
  %140 = load i64, i64* %14, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, %145
  store i64 %149, i64* %147, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 %150
  store i32* %152, i32** %10, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %11, align 8
  %155 = sub nsw i64 %154, %153
  store i64 %155, i64* %11, align 8
  br label %63

156:                                              ; preds = %63
  %157 = load i64, i64* %9, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %156, %137, %103, %51, %40, %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @lfs1_file_flush(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i64 @lfs1_min(i64, i64) #1

declare dso_local i32 @lfs1_ctz_find(%struct.TYPE_11__*, i32*, i32*, i32, i64, i64, i32*, i64*) #1

declare dso_local i32 @lfs1_cache_read(%struct.TYPE_11__*, i32*, i32*, i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
