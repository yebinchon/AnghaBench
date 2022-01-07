; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_finalize_base64.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_finalize_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }
%struct.BannerBase64 = type { i32, i32 }

@b64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @banout_finalize_base64(%struct.BannerOutput* %0, i32 %1, %struct.BannerBase64* %2) #0 {
  %4 = alloca %struct.BannerOutput*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.BannerBase64*, align 8
  %7 = alloca i32, align 4
  store %struct.BannerOutput* %0, %struct.BannerOutput** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.BannerBase64* %2, %struct.BannerBase64** %6, align 8
  %8 = load %struct.BannerBase64*, %struct.BannerBase64** %6, align 8
  %9 = getelementptr inbounds %struct.BannerBase64, %struct.BannerBase64* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.BannerBase64*, %struct.BannerBase64** %6, align 8
  %12 = getelementptr inbounds %struct.BannerBase64, %struct.BannerBase64* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %76 [
    i32 0, label %14
    i32 1, label %15
    i32 2, label %42
  ]

14:                                               ; preds = %3
  br label %76

15:                                               ; preds = %3
  %16 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** @b64, align 8
  %19 = load i32, i32* %7, align 4
  %20 = lshr i32 %19, 18
  %21 = and i32 %20, 63
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @banout_append_char(%struct.BannerOutput* %16, i32 %17, i8 signext %24)
  %26 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** @b64, align 8
  %29 = load i32, i32* %7, align 4
  %30 = lshr i32 %29, 12
  %31 = and i32 %30, 63
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @banout_append_char(%struct.BannerOutput* %26, i32 %27, i8 signext %34)
  %36 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @banout_append_char(%struct.BannerOutput* %36, i32 %37, i8 signext 61)
  %39 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @banout_append_char(%struct.BannerOutput* %39, i32 %40, i8 signext 61)
  br label %76

42:                                               ; preds = %3
  %43 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** @b64, align 8
  %46 = load i32, i32* %7, align 4
  %47 = lshr i32 %46, 18
  %48 = and i32 %47, 63
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @banout_append_char(%struct.BannerOutput* %43, i32 %44, i8 signext %51)
  %53 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** @b64, align 8
  %56 = load i32, i32* %7, align 4
  %57 = lshr i32 %56, 12
  %58 = and i32 %57, 63
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @banout_append_char(%struct.BannerOutput* %53, i32 %54, i8 signext %61)
  %63 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i8*, i8** @b64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = lshr i32 %66, 6
  %68 = and i32 %67, 63
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @banout_append_char(%struct.BannerOutput* %63, i32 %64, i8 signext %71)
  %73 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @banout_append_char(%struct.BannerOutput* %73, i32 %74, i8 signext 61)
  br label %76

76:                                               ; preds = %3, %42, %15, %14
  ret void
}

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
