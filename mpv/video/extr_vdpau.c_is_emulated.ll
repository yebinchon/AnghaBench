; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau.c_is_emulated.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau.c_is_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVBufferRef = type { i32 }
%struct.mp_vdpau_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVBufferRef*)* @is_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_emulated(%struct.AVBufferRef* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AVBufferRef*, align 8
  %4 = alloca %struct.mp_vdpau_ctx*, align 8
  store %struct.AVBufferRef* %0, %struct.AVBufferRef** %3, align 8
  %5 = load %struct.AVBufferRef*, %struct.AVBufferRef** %3, align 8
  %6 = call %struct.mp_vdpau_ctx* @mp_vdpau_get_ctx_from_av(%struct.AVBufferRef* %5)
  store %struct.mp_vdpau_ctx* %6, %struct.mp_vdpau_ctx** %4, align 8
  %7 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %4, align 8
  %8 = icmp ne %struct.mp_vdpau_ctx* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %4, align 8
  %12 = call i32 @mp_vdpau_guess_if_emulated(%struct.mp_vdpau_ctx* %11)
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %9
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local %struct.mp_vdpau_ctx* @mp_vdpau_get_ctx_from_av(%struct.AVBufferRef*) #1

declare dso_local i32 @mp_vdpau_guess_if_emulated(%struct.mp_vdpau_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
