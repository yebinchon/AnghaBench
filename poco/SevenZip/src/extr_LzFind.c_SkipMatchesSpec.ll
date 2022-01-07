; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFind.c_SkipMatchesSpec.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFind.c_SkipMatchesSpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kEmptyHashValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64*, i32*, i32, i32, i32)* @SkipMatchesSpec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SkipMatchesSpec(i32 %0, i32 %1, i32 %2, i64* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = shl i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32* %30, i32** %17, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = shl i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %154, %8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %16, align 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %36
  %48 = load i32, i32* @kEmptyHashValue, align 4
  %49 = load i32*, i32** %18, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %17, align 8
  store i32 %48, i32* %50, align 4
  br label %155

51:                                               ; preds = %43
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %21, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = add nsw i32 %55, %63
  %65 = shl i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %52, i64 %66
  store i32* %67, i32** %22, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64* %72, i64** %23, align 8
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %19, align 4
  br label %80

78:                                               ; preds = %62
  %79 = load i32, i32* %20, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %24, align 4
  %82 = load i64*, i64** %23, align 8
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %12, align 8
  %88 = load i32, i32* %24, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %86, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %112, %93
  %95 = load i32, i32* %24, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %24, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load i64*, i64** %23, align 8
  %101 = load i32, i32* %24, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %12, align 8
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %104, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %113

112:                                              ; preds = %99
  br label %94

113:                                              ; preds = %111, %94
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32*, i32** %22, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %18, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %22, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %17, align 8
  store i32 %124, i32* %125, align 4
  br label %155

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %80
  %128 = load i64*, i64** %23, align 8
  %129 = load i32, i32* %24, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %12, align 8
  %134 = load i32, i32* %24, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %132, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %127
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** %18, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %22, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32* %143, i32** %18, align 8
  %144 = load i32*, i32** %18, align 8
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %24, align 4
  store i32 %146, i32* %20, align 4
  br label %154

147:                                              ; preds = %127
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %17, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %22, align 8
  store i32* %150, i32** %17, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %24, align 4
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %147, %139
  br label %36

155:                                              ; preds = %117, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
