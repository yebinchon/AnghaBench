; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_find_codec.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_find_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@codecs = common dso_local global i64* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @find_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_codec(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i64*, i64** @codecs, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %6
  %15 = load i64*, i64** @codecs, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @mp_codec_from_av_codec_id(i64 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %26, %23, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %6

36:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i8* @mp_codec_from_av_codec_id(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
