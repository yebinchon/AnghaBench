; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_base64Encode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_base64Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes64 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @base64Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base64Encode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, 2
  %14 = udiv i32 %13, 3
  %15 = mul i32 %14, 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i64 @calloc(i32 1, i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8 0, i8* %23, align 1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %137, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %140

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %4, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  br label %48

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %39
  %49 = phi i32 [ %46, %39 ], [ 0, %47 ]
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* %4, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  br label %63

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %54
  %64 = phi i32 [ %61, %54 ], [ 0, %62 ]
  store i32 %64, i32* %11, align 4
  %65 = load i32*, i32** @bytes64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  %77 = load i32*, i32** @bytes64, align 8
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 3
  %80 = shl i32 %79, 4
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 4
  %83 = or i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 %87, i8* %92, align 1
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* %4, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %63
  %98 = load i32*, i32** @bytes64, align 8
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, 15
  %101 = shl i32 %100, 2
  %102 = load i32, i32* %11, align 4
  %103 = ashr i32 %102, 6
  %104 = or i32 %101, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %98, i64 %105
  %107 = load i32, i32* %106, align 4
  br label %109

108:                                              ; preds = %63
  br label %109

109:                                              ; preds = %108, %97
  %110 = phi i32 [ %107, %97 ], [ 61, %108 ]
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 %111, i8* %116, align 1
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 2
  %119 = load i32, i32* %4, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %109
  %122 = load i32*, i32** @bytes64, align 8
  %123 = load i32, i32* %11, align 4
  %124 = and i32 %123, 63
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  br label %129

128:                                              ; preds = %109
  br label %129

129:                                              ; preds = %128, %121
  %130 = phi i32 [ %127, %121 ], [ 61, %128 ]
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 %131, i8* %136, align 1
  br label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 3
  store i32 %139, i32* %8, align 4
  br label %24

140:                                              ; preds = %24
  %141 = load i8*, i8** %6, align 8
  ret i8* %141
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
