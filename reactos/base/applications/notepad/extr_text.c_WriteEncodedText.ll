; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_WriteEncodedText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_WriteEncodedText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32)* @WriteEncodedText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteEncodedText(i32 %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [1024 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %18, align 4
  br label %23

23:                                               ; preds = %159, %4
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %160

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %144 [
    i32 129, label %29
    i32 130, label %38
    i32 131, label %83
    i32 128, label %83
  ]

29:                                               ; preds = %27
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub nsw i64 %33, %34
  %36 = mul i64 %35, 4
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %12, align 8
  br label %145

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = sub nsw i64 %39, %40
  %42 = mul i64 %41, 4
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ugt i64 %43, 4096
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i64 4096, i64* %13, align 8
  br label %46

46:                                               ; preds = %45, %38
  %47 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @memcpy(i32* %47, i32* %50, i64 %51)
  store i64 0, i64* %17, align 8
  br label %53

53:                                               ; preds = %73, %46
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i64, i64* %17, align 8
  %59 = add nsw i64 %58, 0
  %60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %21, align 4
  %62 = load i64, i64* %17, align 8
  %63 = add nsw i64 %62, 1
  %64 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %17, align 8
  %67 = add nsw i64 %66, 0
  %68 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i64, i64* %17, align 8
  %71 = add nsw i64 %70, 1
  %72 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load i64, i64* %17, align 8
  %75 = add nsw i64 %74, 2
  store i64 %75, i64* %17, align 8
  br label %53

76:                                               ; preds = %53
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 %77
  store i32* %78, i32** %10, align 8
  %79 = load i64, i64* %13, align 8
  %80 = udiv i64 %79, 4
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %12, align 8
  br label %145

83:                                               ; preds = %27, %27
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 131
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @CP_ACP, align 4
  store i32 %87, i32* %15, align 4
  br label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @CP_UTF8, align 4
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %86
  %95 = load i32, i32* %15, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %12, align 8
  %101 = sub nsw i64 %99, %100
  %102 = call i8* @WideCharToMultiByte(i32 %95, i32 0, i32* %98, i64 %101, i32* null, i32 0, i32* null, i32* null)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %162

107:                                              ; preds = %94
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %109, 4096
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  store i32* %112, i32** %10, align 8
  store i32 4096, i32* %19, align 4
  br label %126

113:                                              ; preds = %107
  %114 = call i32 (...) @GetProcessHeap()
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @HeapAlloc(i32 %114, i32 0, i32 %115)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %11, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %5, align 4
  br label %171

123:                                              ; preds = %113
  %124 = load i32*, i32** %11, align 8
  store i32* %124, i32** %10, align 8
  %125 = load i32, i32* %20, align 4
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %123, %111
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %12, align 8
  %134 = sub nsw i64 %132, %133
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %19, align 4
  %137 = call i8* @WideCharToMultiByte(i32 %128, i32 0, i32* %131, i64 %134, i32* %135, i32 %136, i32* null, i32* null)
  %138 = ptrtoint i8* %137 to i64
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %127
  br label %162

142:                                              ; preds = %127
  %143 = load i64, i64* %8, align 8
  store i64 %143, i64* %12, align 8
  br label %145

144:                                              ; preds = %27
  br label %162

145:                                              ; preds = %142, %76, %29
  %146 = load i32, i32* %6, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @WriteFile(i32 %146, i32* %147, i64 %148, i64* %16, i32* null)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  br label %162

152:                                              ; preds = %145
  %153 = load i32*, i32** %11, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = call i32 (...) @GetProcessHeap()
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @HeapFree(i32 %156, i32 0, i32* %157)
  store i32* null, i32** %11, align 8
  br label %159

159:                                              ; preds = %155, %152
  br label %23

160:                                              ; preds = %23
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %18, align 4
  br label %162

162:                                              ; preds = %160, %151, %144, %141, %106
  %163 = load i32*, i32** %11, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @HeapFree(i32 %166, i32 0, i32* %167)
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i32, i32* %18, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %121
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i8* @WideCharToMultiByte(i32, i32, i32*, i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WriteFile(i32, i32*, i64, i64*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
