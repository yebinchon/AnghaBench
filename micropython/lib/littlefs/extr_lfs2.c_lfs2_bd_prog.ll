; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_prog.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32* }

@LFS2_BLOCK_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i64, i64, i8*, i64)* @lfs2_bd_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_bd_prog(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32 %3, i64 %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %18, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @LFS2_BLOCK_NULL, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @LFS2_ASSERT(i32 %26)
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %17, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %30, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @LFS2_ASSERT(i32 %37)
  br label %39

39:                                               ; preds = %133, %132, %8
  %40 = load i64, i64* %17, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %155

42:                                               ; preds = %39
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %133

48:                                               ; preds = %42
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %133

54:                                               ; preds = %48
  %55 = load i64, i64* %15, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = icmp slt i64 %55, %64
  br i1 %65, label %66, label %133

66:                                               ; preds = %54
  %67 = load i64, i64* %17, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = sub nsw i64 %72, %77
  %79 = call i64 @lfs2_min(i64 %67, i64 %78)
  store i64 %79, i64* %19, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32*, i32** %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = call i32 @memcpy(i32* %88, i32* %89, i64 %90)
  %92 = load i64, i64* %19, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %92
  store i32* %94, i32** %18, align 8
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %15, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %17, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %17, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = call i64 @lfs2_max(i64 %103, i64 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %114, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %66
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @lfs2_bd_flush(%struct.TYPE_11__* %122, %struct.TYPE_12__* %123, %struct.TYPE_12__* %124, i32 %125)
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %20, align 4
  store i32 %130, i32* %9, align 4
  br label %156

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %66
  br label %39

133:                                              ; preds = %54, %48, %42
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LFS2_BLOCK_NULL, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @LFS2_ASSERT(i32 %139)
  %141 = load i64, i64* %14, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @lfs2_aligndown(i64 %144, i32 %149)
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  br label %39

155:                                              ; preds = %39
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %129
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local i32 @LFS2_ASSERT(i32) #1

declare dso_local i64 @lfs2_min(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @lfs2_max(i64, i64) #1

declare dso_local i32 @lfs2_bd_flush(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @lfs2_aligndown(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
