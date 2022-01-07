; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_vtt.c_vtt_block_new.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_vtt.c_vtt_block_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, double, double, i64, %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @vtt_block_new(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = add i64 56, %11
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_8__* @malloc(i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store double 0.000000e+00, double* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store double 0.000000e+00, double* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 6
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %91 [
    i32 129, label %33
    i32 128, label %52
    i32 131, label %71
    i32 130, label %90
  ]

33:                                               ; preds = %4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %47, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  br label %91

52:                                               ; preds = %4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = icmp eq %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %60, align 8
  br label %67

61:                                               ; preds = %52
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %66, align 8
  br label %67

67:                                               ; preds = %61, %57
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %70, align 8
  br label %91

71:                                               ; preds = %4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = icmp eq %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %79, align 8
  br label %86

80:                                               ; preds = %71
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %85, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %89, align 8
  br label %91

90:                                               ; preds = %4
  br label %91

91:                                               ; preds = %4, %90, %86, %67, %48
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = call i64 @vtt_block_data(%struct.TYPE_8__* %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @memcpy(i8* %98, i8* %99, i64 %100)
  br label %106

102:                                              ; preds = %91
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @memset(i8* %103, i32 0, i64 %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %110
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i64 @vtt_block_data(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
