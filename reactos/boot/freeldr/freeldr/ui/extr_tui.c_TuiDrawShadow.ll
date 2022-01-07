; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawShadow.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiDrawShadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TextVideoBuffer = common dso_local global i32 0, align 4
@UiScreenHeight = common dso_local global i32 0, align 4
@COLOR_GRAY = common dso_local global i32 0, align 4
@COLOR_BLACK = common dso_local global i32 0, align 4
@UiScreenWidth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TuiDrawShadow(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @TextVideoBuffer, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @UiScreenHeight, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %4
  %20 = load i32, i32* @UiScreenHeight, align 4
  %21 = icmp slt i32 %20, 34
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %11, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32, i32* @COLOR_GRAY, align 4
  %35 = load i32, i32* @COLOR_BLACK, align 4
  %36 = call i32 @ATTR(i32 %34, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %39, 2
  %41 = load i32, i32* @UiScreenWidth, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %42, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %37, i64 %47
  store i32 %36, i32* %48, align 4
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %29

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @UiScreenWidth, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %81, %58
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load i32, i32* @COLOR_GRAY, align 4
  %67 = load i32, i32* @COLOR_BLACK, align 4
  %68 = call i32 @ATTR(i32 %66, i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 2
  %72 = load i32, i32* @UiScreenWidth, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %73, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %69, i64 %79
  store i32 %68, i32* %80, align 4
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %61

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i32, i32* @UiScreenHeight, align 4
  %87 = icmp slt i32 %86, 34
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* @UiScreenWidth, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %117, %94
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load i32, i32* @COLOR_GRAY, align 4
  %103 = load i32, i32* @COLOR_BLACK, align 4
  %104 = call i32 @ATTR(i32 %102, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = mul nsw i32 %106, 2
  %108 = load i32, i32* @UiScreenWidth, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 2
  %112 = mul nsw i32 %111, 2
  %113 = add nsw i32 %109, %112
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %105, i64 %115
  store i32 %104, i32* %116, align 4
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %97

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %88
  br label %122

122:                                              ; preds = %121, %85
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @UiScreenWidth, align 4
  %125 = sub nsw i32 %124, 1
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @UiScreenHeight, align 4
  %130 = sub nsw i32 %129, 1
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %127
  %133 = load i32, i32* @COLOR_GRAY, align 4
  %134 = load i32, i32* @COLOR_BLACK, align 4
  %135 = call i32 @ATTR(i32 %133, i32 %134)
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = mul nsw i32 %138, 2
  %140 = load i32, i32* @UiScreenWidth, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  %144 = mul nsw i32 %143, 2
  %145 = add nsw i32 %141, %144
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %136, i64 %147
  store i32 %135, i32* %148, align 4
  br label %149

149:                                              ; preds = %132, %127, %122
  %150 = load i32, i32* @UiScreenHeight, align 4
  %151 = icmp slt i32 %150, 34
  br i1 %151, label %152, label %181

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* @UiScreenWidth, align 4
  %156 = sub nsw i32 %155, 1
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %152
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @UiScreenHeight, align 4
  %161 = sub nsw i32 %160, 1
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %158
  %164 = load i32, i32* @COLOR_GRAY, align 4
  %165 = load i32, i32* @COLOR_BLACK, align 4
  %166 = call i32 @ATTR(i32 %164, i32 %165)
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  %170 = mul nsw i32 %169, 2
  %171 = load i32, i32* @UiScreenWidth, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 2
  %175 = mul nsw i32 %174, 2
  %176 = add nsw i32 %172, %175
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %167, i64 %178
  store i32 %166, i32* %179, align 4
  br label %180

180:                                              ; preds = %163, %158, %152
  br label %181

181:                                              ; preds = %180, %149
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @ATTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
