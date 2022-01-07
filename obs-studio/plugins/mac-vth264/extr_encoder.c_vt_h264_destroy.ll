; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vt_h264_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_h264_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vt_h264_encoder*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vt_h264_encoder*
  store %struct.vt_h264_encoder* %5, %struct.vt_h264_encoder** %3, align 8
  %6 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %7 = icmp ne %struct.vt_h264_encoder* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @VTCompressionSessionInvalidate(i32* %16)
  %18 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @CFRelease(i32* %20)
  br label %22

22:                                               ; preds = %13, %8
  %23 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %24 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @da_free(i32 %25)
  %27 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %28 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @da_free(i32 %29)
  %31 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %32 = call i32 @bfree(%struct.vt_h264_encoder* %31)
  br label %33

33:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @VTCompressionSessionInvalidate(i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @bfree(%struct.vt_h264_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
