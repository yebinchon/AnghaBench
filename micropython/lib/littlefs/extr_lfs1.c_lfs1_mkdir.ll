; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_mkdir.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, i32, i64, i32 }
%struct.TYPE_20__ = type { i32* }

@LFS1_ERR_NOENT = common dso_local global i32 0, align 4
@LFS1_ERR_EXIST = common dso_local global i32 0, align 4
@LFS1_TYPE_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs1_mkdir(%struct.TYPE_23__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = call i32 @lfs1_deorphan(%struct.TYPE_23__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = call i32 @lfs1_dir_find(%struct.TYPE_23__* %24, %struct.TYPE_25__* %7, %struct.TYPE_24__* %8, i8** %5)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @LFS1_ERR_NOENT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i32* @strchr(i8* %30, i8 signext 47)
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @LFS1_ERR_EXIST, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %3, align 4
  br label %132

42:                                               ; preds = %29
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = call i32 @lfs1_alloc_ack(%struct.TYPE_23__* %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = call i32 @lfs1_dir_alloc(%struct.TYPE_23__* %45, %struct.TYPE_25__* %10)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %132

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = call i32 @lfs1_dir_commit(%struct.TYPE_23__* %70, %struct.TYPE_25__* %10, i32* null, i32 0)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %51
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %132

76:                                               ; preds = %51
  %77 = load i32, i32* @LFS1_TYPE_DIR, align 4
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i32 36, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %91, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %100, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @lfs1_dir_append(%struct.TYPE_23__* %122, %struct.TYPE_25__* %7, %struct.TYPE_24__* %8, i8* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %76
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %132

129:                                              ; preds = %76
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %131 = call i32 @lfs1_alloc_ack(%struct.TYPE_23__* %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %127, %74, %49, %40, %20
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @lfs1_deorphan(%struct.TYPE_23__*) #1

declare dso_local i32 @lfs1_dir_find(%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i8**) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lfs1_alloc_ack(%struct.TYPE_23__*) #1

declare dso_local i32 @lfs1_dir_alloc(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @lfs1_dir_commit(%struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lfs1_dir_append(%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
