; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistsplit.c_placeOne.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistsplit.c_placeOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32, i8**, i32, i8** }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i8*, i32)* @placeOne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @placeOne(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  store i32 1, i32* %16, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @gistDeCompressAtt(%struct.TYPE_12__* %27, i32 %28, i32 %29, i32* null, i8* null, i32* %23, i32* %26)
  br label %31

31:                                               ; preds = %104, %6
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %107

39:                                               ; preds = %31
  %40 = load i32, i32* %19, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @gistentryinit(i32 %40, i32 %47, i32 %48, i32* null, i32 0, i32 0)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %23, i64 %60
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %26, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call float @gistpenalty(%struct.TYPE_12__* %50, i32 %51, i32* %19, i32 %58, i32* %61, i32 %65)
  store float %66, float* %17, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @gistentryinit(i32 %67, i32 %74, i32 %75, i32* null, i32 0, i32 0)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %23, i64 %87
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %26, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call float @gistpenalty(%struct.TYPE_12__* %77, i32 %78, i32* %19, i32 %85, i32* %88, i32 %92)
  store float %93, float* %18, align 4
  %94 = load float, float* %17, align 4
  %95 = load float, float* %18, align 4
  %96 = fcmp une float %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %39
  %98 = load float, float* %17, align 4
  %99 = load float, float* %18, align 4
  %100 = fcmp ogt float %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %101, %97
  br label %107

103:                                              ; preds = %39
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %31

107:                                              ; preds = %102, %31
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i8*, i8** %11, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i8**, i8*** %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8*, i8** %115, i64 %121
  store i8* %111, i8** %122, align 8
  br label %136

123:                                              ; preds = %107
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i8**, i8*** %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8*, i8** %128, i64 %134
  store i8* %124, i8** %135, align 8
  br label %136

136:                                              ; preds = %123, %110
  %137 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %137)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gistDeCompressAtt(%struct.TYPE_12__*, i32, i32, i32*, i8*, i32*, i32*) #2

declare dso_local i32 @gistentryinit(i32, i32, i32, i32*, i32, i32) #2

declare dso_local float @gistpenalty(%struct.TYPE_12__*, i32, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
