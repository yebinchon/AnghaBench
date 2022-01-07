; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-audio-decoder.c_handle_reset_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-audio-decoder.c_handle_reset_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { i32* }
%struct.ff_packet = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_decoder*, %struct.ff_packet*)* @handle_reset_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_reset_packet(%struct.ff_decoder* %0, %struct.ff_packet* %1) #0 {
  %3 = alloca %struct.ff_decoder*, align 8
  %4 = alloca %struct.ff_packet*, align 8
  store %struct.ff_decoder* %0, %struct.ff_decoder** %3, align 8
  store %struct.ff_packet* %1, %struct.ff_packet** %4, align 8
  %5 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %6 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %11 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %10, i32 0, i32 0
  %12 = call i32 @ff_clock_release(i32** %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.ff_packet*, %struct.ff_packet** %4, align 8
  %15 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.ff_packet*, %struct.ff_packet** %4, align 8
  %20 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %19, i32 0, i32 0
  %21 = call i32 @av_free_packet(i32* %20)
  ret i32 1
}

declare dso_local i32 @ff_clock_release(i32**) #1

declare dso_local i32 @av_free_packet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
