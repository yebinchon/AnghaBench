; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_cvtMMimaK.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_cvtMMimaK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32*, i8*, i32*)* @cvtMMimaK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvtMMimaK(%struct.TYPE_8__* %0, i8* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = bitcast %struct.TYPE_7__* %20 to %struct.TYPE_9__*
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %31, %36
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %15, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %39, %42
  %44 = call i32 @min(i32 %37, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %45, %50
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %126, %5
  %62 = load i32, i32* %16, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %129

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %17, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @R16(i8* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = call i32 @clamp_step_index(i32* %12)
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @W8_16(i8* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %9, align 8
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %114, %64
  %85 = load i32, i32* %14, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @process_nibble(i8 zeroext %89, i32* %12, i32* %11)
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @W8_16(i8* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  %103 = ashr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = call i32 @process_nibble(i8 zeroext %104, i32* %12, i32* %11)
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @W8_16(i8* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %87
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 2
  store i32 %116, i32* %14, align 4
  br label %84

117:                                              ; preds = %84
  %118 = load i8*, i8** %17, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %118, i64 %124
  store i8* %125, i8** %7, align 8
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %16, align 4
  br label %61

129:                                              ; preds = %61
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @R16(i8*) #1

declare dso_local i32 @clamp_step_index(i32*) #1

declare dso_local i32 @W8_16(i8*, i32, i32) #1

declare dso_local i32 @process_nibble(i8 zeroext, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
