; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_append_base64.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_append_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }
%struct.BannerBase64 = type { i32, i32 }

@b64 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @banout_append_base64(%struct.BannerOutput* %0, i32 %1, i8* %2, i64 %3, %struct.BannerBase64* %4) #0 {
  %6 = alloca %struct.BannerOutput*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.BannerBase64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.BannerOutput* %0, %struct.BannerOutput** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.BannerBase64* %4, %struct.BannerBase64** %10, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %11, align 8
  %16 = load %struct.BannerBase64*, %struct.BannerBase64** %10, align 8
  %17 = getelementptr inbounds %struct.BannerBase64, %struct.BannerBase64* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.BannerBase64*, %struct.BannerBase64** %10, align 8
  %20 = getelementptr inbounds %struct.BannerBase64, %struct.BannerBase64* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %97, %5
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %100

26:                                               ; preds = %22
  %27 = load i32, i32* %14, align 4
  switch i32 %27, label %96 [
    i32 0, label %28
    i32 1, label %37
    i32 2, label %48
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 16
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %14, align 4
  br label %96

37:                                               ; preds = %26
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %96

48:                                               ; preds = %26
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %56 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** @b64, align 8
  %59 = load i32, i32* %13, align 4
  %60 = lshr i32 %59, 18
  %61 = and i32 %60, 63
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @banout_append_char(%struct.BannerOutput* %56, i32 %57, i32 %64)
  %66 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** @b64, align 8
  %69 = load i32, i32* %13, align 4
  %70 = lshr i32 %69, 12
  %71 = and i32 %70, 63
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @banout_append_char(%struct.BannerOutput* %66, i32 %67, i32 %74)
  %76 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** @b64, align 8
  %79 = load i32, i32* %13, align 4
  %80 = lshr i32 %79, 6
  %81 = and i32 %80, 63
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @banout_append_char(%struct.BannerOutput* %76, i32 %77, i32 %84)
  %86 = load %struct.BannerOutput*, %struct.BannerOutput** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** @b64, align 8
  %89 = load i32, i32* %13, align 4
  %90 = lshr i32 %89, 0
  %91 = and i32 %90, 63
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @banout_append_char(%struct.BannerOutput* %86, i32 %87, i32 %94)
  br label %96

96:                                               ; preds = %48, %26, %37, %28
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %22

100:                                              ; preds = %22
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.BannerBase64*, %struct.BannerBase64** %10, align 8
  %103 = getelementptr inbounds %struct.BannerBase64, %struct.BannerBase64* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.BannerBase64*, %struct.BannerBase64** %10, align 8
  %106 = getelementptr inbounds %struct.BannerBase64, %struct.BannerBase64* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
