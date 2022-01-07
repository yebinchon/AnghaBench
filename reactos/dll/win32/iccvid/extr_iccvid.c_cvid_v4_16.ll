; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_cvid_v4_16.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_cvid_v4_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @cvid_v4_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvid_v4_16(i8* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_6__* %4, %struct.TYPE_6__* %5, %struct.TYPE_6__* %6, %struct.TYPE_6__* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i16*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [4 x %struct.TYPE_6__*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %16, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i16*
  store i16* %23, i16** %17, align 8
  %24 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %19, i64 0, i64 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 0, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %18, align 4
  br label %41

38:                                               ; preds = %8
  %39 = load i32, i32* %11, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %18, align 4
  br label %41

41:                                               ; preds = %38, %34
  store i32 0, i32* %21, align 4
  br label %42

42:                                               ; preds = %135, %41
  %43 = load i32, i32* %21, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %138

45:                                               ; preds = %42
  %46 = load i16*, i16** %17, align 8
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %18, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %46, i64 %50
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i16*
  %54 = icmp ult i16* %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %138

56:                                               ; preds = %45
  store i32 0, i32* %20, align 4
  br label %57

57:                                               ; preds = %131, %56
  %58 = load i32, i32* %20, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %134

60:                                               ; preds = %57
  %61 = load i32, i32* %20, align 4
  %62 = sdiv i32 %61, 2
  %63 = load i32, i32* %21, align 4
  %64 = sdiv i32 %63, 2
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %19, i64 0, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %20, align 4
  %73 = srem i32 %72, 2
  %74 = load i32, i32* %21, align 4
  %75 = srem i32 %74, 2
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %71, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %20, align 4
  %82 = sdiv i32 %81, 2
  %83 = load i32, i32* %21, align 4
  %84 = sdiv i32 %83, 2
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %19, i64 0, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %20, align 4
  %93 = srem i32 %92, 2
  %94 = load i32, i32* %21, align 4
  %95 = srem i32 %94, 2
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %91, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %20, align 4
  %102 = sdiv i32 %101, 2
  %103 = load i32, i32* %21, align 4
  %104 = sdiv i32 %103, 2
  %105 = mul nsw i32 %104, 2
  %106 = add nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %19, i64 0, i64 %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %20, align 4
  %113 = srem i32 %112, 2
  %114 = load i32, i32* %21, align 4
  %115 = srem i32 %114, 2
  %116 = mul nsw i32 %115, 2
  %117 = add nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %111, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @MAKECOLOUR16(i32 %80, i32 %100, i32 %120)
  %122 = trunc i32 %121 to i16
  %123 = load i16*, i16** %17, align 8
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %18, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, i16* %123, i64 %129
  store i16 %122, i16* %130, align 2
  br label %131

131:                                              ; preds = %60
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %20, align 4
  br label %57

134:                                              ; preds = %57
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %21, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %21, align 4
  br label %42

138:                                              ; preds = %55, %42
  ret void
}

declare dso_local i32 @MAKECOLOUR16(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
