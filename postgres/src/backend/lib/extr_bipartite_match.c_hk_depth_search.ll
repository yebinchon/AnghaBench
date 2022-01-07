; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_bipartite_match.c_hk_depth_search.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_bipartite_match.c_hk_depth_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16*, i16*, i16*, i16** }

@HK_INFINITY = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @hk_depth_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hk_depth_search(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i16*, i16** %14, align 8
  store i16* %15, i16** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i16*, i16** %17, align 8
  store i16* %18, i16** %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i16*, i16** %20, align 8
  store i16* %21, i16** %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i16**, i16*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16*, i16** %24, i64 %26
  %28 = load i16*, i16** %27, align 8
  store i16* %28, i16** %9, align 8
  %29 = load i16*, i16** %9, align 8
  %30 = icmp ne i16* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i16*, i16** %9, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 0
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ %35, %31 ], [ 0, %36 ]
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %120

42:                                               ; preds = %37
  %43 = load i16*, i16** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = load i16, i16* @HK_INFINITY, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %120

53:                                               ; preds = %42
  %54 = load i16*, i16** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %11, align 2
  %62 = call i32 (...) @check_stack_depth()
  br label %63

63:                                               ; preds = %111, %53
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %63
  %67 = load i16*, i16** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %67, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i16*, i16** %6, align 8
  %74 = load i16*, i16** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i16, i16* %73, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = load i16, i16* %11, align 2
  %84 = sext i16 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %66
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = load i16*, i16** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %88, i64 %90
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i32
  %94 = call i32 @hk_depth_search(%struct.TYPE_3__* %87, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %86
  %97 = load i32, i32* %5, align 4
  %98 = trunc i32 %97 to i16
  %99 = load i16*, i16** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %99, i64 %101
  store i16 %98, i16* %102, align 2
  %103 = load i32, i32* %12, align 4
  %104 = trunc i32 %103 to i16
  %105 = load i16*, i16** %7, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i16, i16* %105, i64 %107
  store i16 %104, i16* %108, align 2
  store i32 1, i32* %3, align 4
  br label %120

109:                                              ; preds = %86
  br label %110

110:                                              ; preds = %109, %66
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %10, align 4
  br label %63

114:                                              ; preds = %63
  %115 = load i16, i16* @HK_INFINITY, align 2
  %116 = load i16*, i16** %6, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %116, i64 %118
  store i16 %115, i16* %119, align 2
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %114, %96, %52, %41
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @check_stack_depth(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
