; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistgetadjusted.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistgetadjusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @gistgetadjusted(i32 %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca %struct.TYPE_12__, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca %struct.TYPE_12__, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %29 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %32 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %17, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = call i32 @gistDeCompressAtt(i32* %38, i32 %39, %struct.TYPE_11__* %40, i32* null, i32 0, %struct.TYPE_12__* %22, i32* %28)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = call i32 @gistDeCompressAtt(i32* %42, i32 %43, %struct.TYPE_11__* %44, i32* null, i32 0, %struct.TYPE_12__* %25, i32* %31)
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %114, %4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %55
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %28, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i64 %62
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %31, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %34, i64 %69
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %37, i64 %72
  %74 = call i32 @gistMakeUnionKey(i32* %52, i32 %53, %struct.TYPE_12__* %56, i32 %60, %struct.TYPE_12__* %63, i32 %67, i32* %70, i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %51
  br label %114

78:                                               ; preds = %51
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %37, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %114

85:                                               ; preds = %78
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %31, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %28, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %91
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %34, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @gistKeyIsEQ(i32* %98, i32 %99, i32 %104, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %97, %91
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %97
  br label %113

113:                                              ; preds = %112, %85
  br label %114

114:                                              ; preds = %113, %84, %77
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %46

117:                                              ; preds = %46
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call %struct.TYPE_11__* @gistFormTuple(i32* %121, i32 %122, i32* %34, i32* %37, i32 0)
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %17, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %117
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %131 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %131)
  ret %struct.TYPE_11__* %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gistDeCompressAtt(i32*, i32, %struct.TYPE_11__*, i32*, i32, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #2

declare dso_local i32 @gistMakeUnionKey(i32*, i32, %struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32, i32*, i32*) #2

declare dso_local i32 @gistKeyIsEQ(i32*, i32, i32, i32) #2

declare dso_local %struct.TYPE_11__* @gistFormTuple(i32*, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
