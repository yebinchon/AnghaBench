; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginpostinglist.c_ginMergeItemPointers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginpostinglist.c_ginMergeItemPointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ginMergeItemPointers(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @palloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i64 @ginCompareItemPointers(i32* %34, i32* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %29, %26, %5
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i32* %40, i32* %41, i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i32* %50, i32* %51, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %195

61:                                               ; preds = %29
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i64 @ginCompareItemPointers(i32* %66, i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %61
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i32* %72, i32* %73, i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32* %82, i32* %83, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %194

93:                                               ; preds = %61
  %94 = load i32*, i32** %11, align 8
  store i32* %94, i32** %12, align 8
  %95 = load i32*, i32** %6, align 8
  store i32* %95, i32** %13, align 8
  %96 = load i32*, i32** %8, align 8
  store i32* %96, i32** %14, align 8
  br label %97

97:                                               ; preds = %150, %93
  %98 = load i32*, i32** %13, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %97
  %108 = load i32*, i32** %14, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br label %117

117:                                              ; preds = %107, %97
  %118 = phi i1 [ false, %97 ], [ %116, %107 ]
  br i1 %118, label %119, label %151

119:                                              ; preds = %117
  %120 = load i32*, i32** %13, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = call i64 @ginCompareItemPointers(i32* %120, i32* %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32*, i32** %14, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %14, align 8
  %129 = load i32, i32* %127, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  br label %150

132:                                              ; preds = %119
  %133 = load i32, i32* %15, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %14, align 8
  %138 = load i32, i32* %136, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %12, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %13, align 8
  br label %149

143:                                              ; preds = %132
  %144 = load i32*, i32** %13, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %13, align 8
  %146 = load i32, i32* %144, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %12, align 8
  store i32 %146, i32* %147, align 4
  br label %149

149:                                              ; preds = %143, %135
  br label %150

150:                                              ; preds = %149, %126
  br label %97

151:                                              ; preds = %117
  br label %152

152:                                              ; preds = %162, %151
  %153 = load i32*, i32** %13, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = ptrtoint i32* %153 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %158, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %152
  %163 = load i32*, i32** %13, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %13, align 8
  %165 = load i32, i32* %163, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %12, align 8
  store i32 %165, i32* %166, align 4
  br label %152

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %179, %168
  %170 = load i32*, i32** %14, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = ptrtoint i32* %170 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %169
  %180 = load i32*, i32** %14, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %14, align 8
  %182 = load i32, i32* %180, align 4
  %183 = load i32*, i32** %12, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %12, align 8
  store i32 %182, i32* %183, align 4
  br label %169

185:                                              ; preds = %169
  %186 = load i32*, i32** %12, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = ptrtoint i32* %186 to i64
  %189 = ptrtoint i32* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = load i32*, i32** %10, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %185, %71
  br label %195

195:                                              ; preds = %194, %39
  %196 = load i32*, i32** %11, align 8
  ret i32* %196
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @ginCompareItemPointers(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
