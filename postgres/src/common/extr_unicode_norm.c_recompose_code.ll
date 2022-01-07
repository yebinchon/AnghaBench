; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_recompose_code.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_recompose_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@LBASE = common dso_local global i64 0, align 8
@LCOUNT = common dso_local global i64 0, align 8
@VBASE = common dso_local global i64 0, align 8
@VCOUNT = common dso_local global i64 0, align 8
@SBASE = common dso_local global i64 0, align 8
@TCOUNT = common dso_local global i64 0, align 8
@SCOUNT = common dso_local global i64 0, align 8
@TBASE = common dso_local global i64 0, align 8
@UnicodeDecompMain = common dso_local global %struct.TYPE_6__* null, align 8
@UnicodeDecomp_codepoints = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @recompose_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recompose_code(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @LBASE, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @LBASE, align 8
  %19 = load i64, i64* @LCOUNT, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @VBASE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @VBASE, align 8
  %29 = load i64, i64* @VCOUNT, align 8
  %30 = add nsw i64 %28, %29
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @LBASE, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @VBASE, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* @SBASE, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @VCOUNT, align 8
  %42 = mul nsw i64 %40, %41
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @TCOUNT, align 8
  %46 = mul nsw i64 %44, %45
  %47 = add nsw i64 %39, %46
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  store i32 1, i32* %4, align 4
  br label %135

49:                                               ; preds = %26, %22, %16, %3
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @SBASE, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @SBASE, align 8
  %56 = load i64, i64* @SCOUNT, align 8
  %57 = add nsw i64 %55, %56
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @SBASE, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load i64, i64* @TCOUNT, align 8
  %64 = srem i64 %62, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @TBASE, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @TBASE, align 8
  %73 = load i64, i64* @TCOUNT, align 8
  %74 = add nsw i64 %72, %73
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @TBASE, align 8
  %79 = sub nsw i64 %77, %78
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i64*, i64** %7, align 8
  store i64 %82, i64* %83, align 8
  store i32 1, i32* %4, align 4
  br label %135

84:                                               ; preds = %70, %66, %59, %53, %49
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %129, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UnicodeDecompMain, align 8
  %88 = call i32 @lengthof(%struct.TYPE_6__* %87)
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %132

90:                                               ; preds = %85
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @UnicodeDecompMain, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %12, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %96 = call i32 @DECOMPOSITION_SIZE(%struct.TYPE_6__* %95)
  %97 = icmp ne i32 %96, 2
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %129

99:                                               ; preds = %90
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = call i64 @DECOMPOSITION_NO_COMPOSE(%struct.TYPE_6__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %129

104:                                              ; preds = %99
  %105 = load i64, i64* %5, align 8
  %106 = load i64*, i64** @UnicodeDecomp_codepoints, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %105, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %104
  %114 = load i64, i64* %6, align 8
  %115 = load i64*, i64** @UnicodeDecomp_codepoints, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  %120 = getelementptr inbounds i64, i64* %115, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %114, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %7, align 8
  store i64 %126, i64* %127, align 8
  store i32 1, i32* %4, align 4
  br label %135

128:                                              ; preds = %113, %104
  br label %129

129:                                              ; preds = %128, %103, %98
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %85

132:                                              ; preds = %85
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %123, %76, %32
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @lengthof(%struct.TYPE_6__*) #1

declare dso_local i32 @DECOMPOSITION_SIZE(%struct.TYPE_6__*) #1

declare dso_local i64 @DECOMPOSITION_NO_COMPOSE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
