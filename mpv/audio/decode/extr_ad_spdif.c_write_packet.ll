; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdifContext = type { i64, i32* }

@OUTBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"spdif packet too large.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packet(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spdifContext*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.spdifContext*
  store %struct.spdifContext* %10, %struct.spdifContext** %7, align 8
  %11 = load i32, i32* @OUTBUF_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.spdifContext*, %struct.spdifContext** %7, align 8
  %14 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.spdifContext*, %struct.spdifContext** %7, align 8
  %23 = call i32 @MP_ERR(%struct.spdifContext* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.spdifContext*, %struct.spdifContext** %7, align 8
  %27 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.spdifContext*, %struct.spdifContext** %7, align 8
  %30 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.spdifContext*, %struct.spdifContext** %7, align 8
  %39 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @MP_ERR(%struct.spdifContext*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
