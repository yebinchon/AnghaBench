; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_encode_base_64.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_core.c_encode_base_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encode_base_64.base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @encode_base_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_base_64(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sdiv i32 %13, 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %139, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %146

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %86 [
    i32 0, label %21
    i32 1, label %22
    i32 2, label %48
  ]

21:                                               ; preds = %19
  br label %134

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = shl i32 %26, 16
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 18
  %30 = and i32 %29, 63
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 12
  %38 = and i32 %37, 63
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  store i8 61, i8* %44, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 61, i8* %46, align 1
  br label %134

48:                                               ; preds = %19
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = shl i32 %52, 16
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = or i32 %53, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 18
  %62 = and i32 %61, 63
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 12
  %70 = and i32 %69, 63
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 6
  %78 = and i32 %77, 63
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  store i8 %81, i8* %82, align 1
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  store i8 61, i8* %84, align 1
  br label %134

86:                                               ; preds = %19
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = shl i32 %90, 16
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = shl i32 %95, 8
  %97 = or i32 %91, %96
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = or i32 %97, %101
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = ashr i32 %103, 18
  %105 = and i32 %104, 63
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %5, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 12
  %113 = and i32 %112, 63
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %5, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 6
  %121 = and i32 %120, 63
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  store i8 %124, i8* %125, align 1
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, 63
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [65 x i8], [65 x i8]* @encode_base_64.base64, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  store i8 %131, i8* %132, align 1
  br label %134

134:                                              ; preds = %86, %48, %22, %21
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 3
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %146

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 3
  store i8* %143, i8** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %144, 3
  store i32 %145, i32* %8, align 4
  br label %15

146:                                              ; preds = %137, %15
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %5, align 8
  store i8 0, i8* %147, align 1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
