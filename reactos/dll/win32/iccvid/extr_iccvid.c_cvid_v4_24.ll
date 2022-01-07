; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_cvid_v4_24.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_cvid_v4_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @cvid_v4_24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvid_v4_24(i8* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_6__* %4, %struct.TYPE_6__* %5, %struct.TYPE_6__* %6, %struct.TYPE_6__* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x %struct.TYPE_6__*], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %16, align 8
  %21 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %18, i64 0, i64 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %17, align 4
  br label %36

34:                                               ; preds = %8
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %34, %31
  store i32 0, i32* %20, align 4
  br label %37

37:                                               ; preds = %152, %36
  %38 = load i32, i32* %20, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %155

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %17, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %155

50:                                               ; preds = %40
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %148, %50
  %52 = load i32, i32* %19, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %151

54:                                               ; preds = %51
  %55 = load i32, i32* %19, align 4
  %56 = sdiv i32 %55, 2
  %57 = load i32, i32* %20, align 4
  %58 = sdiv i32 %57, 2
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %18, i64 0, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = srem i32 %66, 2
  %68 = load i32, i32* %20, align 4
  %69 = srem i32 %68, 2
  %70 = mul nsw i32 %69, 2
  %71 = add nsw i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %17, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %19, align 4
  %81 = mul nsw i32 %80, 3
  %82 = add nsw i32 %79, %81
  %83 = add nsw i32 %82, 0
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %76, i64 %84
  store i8 %75, i8* %85, align 1
  %86 = load i32, i32* %19, align 4
  %87 = sdiv i32 %86, 2
  %88 = load i32, i32* %20, align 4
  %89 = sdiv i32 %88, 2
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %18, i64 0, i64 %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %19, align 4
  %98 = srem i32 %97, 2
  %99 = load i32, i32* %20, align 4
  %100 = srem i32 %99, 2
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %96, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %17, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* %19, align 4
  %112 = mul nsw i32 %111, 3
  %113 = add nsw i32 %110, %112
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %107, i64 %115
  store i8 %106, i8* %116, align 1
  %117 = load i32, i32* %19, align 4
  %118 = sdiv i32 %117, 2
  %119 = load i32, i32* %20, align 4
  %120 = sdiv i32 %119, 2
  %121 = mul nsw i32 %120, 2
  %122 = add nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x %struct.TYPE_6__*], [4 x %struct.TYPE_6__*]* %18, i64 0, i64 %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = srem i32 %128, 2
  %130 = load i32, i32* %20, align 4
  %131 = srem i32 %130, 2
  %132 = mul nsw i32 %131, 2
  %133 = add nsw i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %127, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %9, align 8
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %17, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %19, align 4
  %143 = mul nsw i32 %142, 3
  %144 = add nsw i32 %141, %143
  %145 = add nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %138, i64 %146
  store i8 %137, i8* %147, align 1
  br label %148

148:                                              ; preds = %54
  %149 = load i32, i32* %19, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %19, align 4
  br label %51

151:                                              ; preds = %51
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  br label %37

155:                                              ; preds = %49, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
