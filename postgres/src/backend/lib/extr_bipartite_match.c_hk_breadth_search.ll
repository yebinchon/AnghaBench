; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_bipartite_match.c_hk_breadth_search.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_bipartite_match.c_hk_breadth_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i16*, i16*, i64*, i16**, i32* }

@HK_INFINITY = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @hk_breadth_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hk_breadth_search(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i16*, i16** %16, align 8
  store i16* %17, i16** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i16*, i16** %19, align 8
  store i16* %20, i16** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load i16, i16* @HK_INFINITY, align 2
  %22 = load i16*, i16** %5, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 0
  store i16 %21, i16* %23, align 2
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %56, %1
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = load i16*, i16** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  store i16 0, i16* %41, align 2
  %42 = load i32, i32* %8, align 4
  %43 = trunc i32 %42 to i16
  %44 = load i16*, i16** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i16, i16* %44, i64 %47
  store i16 %43, i16* %48, align 2
  br label %55

49:                                               ; preds = %28
  %50 = load i16, i16* @HK_INFINITY, align 2
  %51 = load i16*, i16** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  store i16 %50, i16* %54, align 2
  br label %55

55:                                               ; preds = %49, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %24

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %156, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %157

64:                                               ; preds = %60
  %65 = load i16*, i16** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i16, i16* %65, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = sext i16 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load i16*, i16** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %72, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  %78 = load i16*, i16** %5, align 8
  %79 = getelementptr inbounds i16, i16* %78, i64 0
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i32
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %156

83:                                               ; preds = %64
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i16**, i16*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16*, i16** %86, i64 %88
  %90 = load i16*, i16** %89, align 8
  store i16* %90, i16** %9, align 8
  %91 = load i16*, i16** %9, align 8
  %92 = icmp ne i16* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load i16*, i16** %9, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 0
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  br label %99

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi i32 [ %97, %93 ], [ 0, %98 ]
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %152, %99
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i16*, i16** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %108, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %11, align 4
  %116 = load i16*, i16** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %116, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  %122 = load i16, i16* @HK_INFINITY, align 2
  %123 = sext i16 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %104
  %126 = load i16*, i16** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i16, i16* %126, i64 %128
  %130 = load i16, i16* %129, align 2
  %131 = sext i16 %130 to i32
  %132 = add nsw i32 1, %131
  %133 = trunc i32 %132 to i16
  %134 = load i16*, i16** %5, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16, i16* %134, i64 %136
  store i16 %133, i16* %137, align 2
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 2
  %141 = icmp slt i32 %138, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @Assert(i32 %142)
  %144 = load i32, i32* %11, align 4
  %145 = trunc i32 %144 to i16
  %146 = load i16*, i16** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i16, i16* %146, i64 %149
  store i16 %145, i16* %150, align 2
  br label %151

151:                                              ; preds = %125, %104
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %10, align 4
  br label %101

155:                                              ; preds = %101
  br label %156

156:                                              ; preds = %155, %64
  br label %60

157:                                              ; preds = %60
  %158 = load i16*, i16** %5, align 8
  %159 = getelementptr inbounds i16, i16* %158, i64 0
  %160 = load i16, i16* %159, align 2
  %161 = sext i16 %160 to i32
  %162 = load i16, i16* @HK_INFINITY, align 2
  %163 = sext i16 %162 to i32
  %164 = icmp ne i32 %161, %163
  %165 = zext i1 %164 to i32
  ret i32 %165
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
