; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_set_decoder_start_time.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_set_decoder_start_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ff_decoder*, i32)* @set_decoder_start_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_decoder_start_time(%struct.ff_decoder* %0, i32 %1) #0 {
  %3 = alloca %struct.ff_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.ff_decoder* %0, %struct.ff_decoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %6 = icmp ne %struct.ff_decoder* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %10 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %11 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @av_rescale_q(i32 %8, i32 %9, i32 %14)
  %16 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
