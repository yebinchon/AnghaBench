; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_remove.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@LFS1_TYPE_DIR = common dso_local global i64 0, align 8
@LFS1_ERR_NOTEMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs1_remove(%struct.TYPE_24__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = call i32 @lfs1_deorphan(%struct.TYPE_24__* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %109

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = call i32 @lfs1_dir_find(%struct.TYPE_24__* %25, %struct.TYPE_26__* %7, %struct.TYPE_25__* %8, i8** %5)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %109

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LFS1_TYPE_DIR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @lfs1_dir_fetch(%struct.TYPE_24__* %38, %struct.TYPE_26__* %10, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %109

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 20
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @LFS1_ERR_NOTEMPTY, align 4
  store i32 %55, i32* %3, align 4
  br label %109

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57, %31
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = call i32 @lfs1_dir_remove(%struct.TYPE_24__* %59, %struct.TYPE_26__* %7, %struct.TYPE_25__* %8)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %109

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LFS1_TYPE_DIR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %65
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @lfs1_pred(%struct.TYPE_24__* %72, i32 %74, %struct.TYPE_26__* %7)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %109

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @LFS1_ASSERT(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = call i32 @lfs1_dir_commit(%struct.TYPE_24__* %101, %struct.TYPE_26__* %7, i32* null, i32 0)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %80
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %109

107:                                              ; preds = %80
  br label %108

108:                                              ; preds = %107, %65
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %105, %78, %63, %54, %46, %29, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @lfs1_deorphan(%struct.TYPE_24__*) #1

declare dso_local i32 @lfs1_dir_find(%struct.TYPE_24__*, %struct.TYPE_26__*, %struct.TYPE_25__*, i8**) #1

declare dso_local i32 @lfs1_dir_fetch(%struct.TYPE_24__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @lfs1_dir_remove(%struct.TYPE_24__*, %struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @lfs1_pred(%struct.TYPE_24__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @LFS1_ASSERT(i32) #1

declare dso_local i32 @lfs1_dir_commit(%struct.TYPE_24__*, %struct.TYPE_26__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
