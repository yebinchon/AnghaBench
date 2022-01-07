; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_install_signal.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_install_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { void (i32)*, i32, i32, i32 }

@SA_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, void (i32)*)* @install_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_signal(i32 %0, void (i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (i32)*, align 8
  %5 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %3, align 4
  store void (i32)* %1, void (i32)** %4, align 8
  %6 = bitcast %struct.sigaction* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load void (i32)*, void (i32)** %4, align 8
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store void (i32)* %7, void (i32)** %8, align 8
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %10 = call i32 @sigemptyset(i32* %9)
  %11 = load i32, i32* @SA_RESTART, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @sigaction(i32 %13, %struct.sigaction* %5, i32* null)
  ret i32 %14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
