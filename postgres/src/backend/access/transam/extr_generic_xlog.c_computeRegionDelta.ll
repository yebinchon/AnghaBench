; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_generic_xlog.c_computeRegionDelta.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_generic_xlog.c_computeRegionDelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i32, i32, i32)* @computeRegionDelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeRegionDelta(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @Min(i32 %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %132, %25
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %133

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %40, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %34
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %51, %48
  store i32 -1, i32* %18, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %76, %53
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %66, %72
  br label %74

74:                                               ; preds = %60, %56
  %75 = phi i1 [ false, %56 ], [ %73, %60 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %56

79:                                               ; preds = %74
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %133

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %34
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %109, %85
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %99, %105
  br label %107

107:                                              ; preds = %93, %89
  %108 = phi i1 [ false, %89 ], [ %106, %93 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %89

112:                                              ; preds = %107
  %113 = load i32, i32* %17, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %18, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* @MATCH_THRESHOLD, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %17, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = call i32 @writeFragment(i32* %122, i32 %123, i32 %126, i8* %130)
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %132

132:                                              ; preds = %121, %115, %112
  br label %30

133:                                              ; preds = %83, %30
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* %17, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %140, %137
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %142, %133
  %145 = load i32, i32* %17, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load i32, i32* %18, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %18, align 4
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %17, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = call i32 @writeFragment(i32* %153, i32 %154, i32 %157, i8* %161)
  br label %163

163:                                              ; preds = %152, %144
  ret void
}

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @writeFragment(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
