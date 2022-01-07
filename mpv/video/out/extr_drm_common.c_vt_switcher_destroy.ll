; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_vt_switcher_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_vt_switcher_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_switcher = type { i32 }
%struct.vt_mode = type { i32, i32 }

@VT_AUTO = common dso_local global i32 0, align 4
@VT_SETMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VT_SETMODE failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@RELEASE_SIGNAL = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@ACQUIRE_SIGNAL = common dso_local global i32 0, align 4
@vt_switcher_pipe = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_switcher_destroy(%struct.vt_switcher* %0) #0 {
  %2 = alloca %struct.vt_switcher*, align 8
  %3 = alloca %struct.vt_mode, align 4
  store %struct.vt_switcher* %0, %struct.vt_switcher** %2, align 8
  %4 = bitcast %struct.vt_mode* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = load i32, i32* @VT_AUTO, align 4
  %6 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load %struct.vt_switcher*, %struct.vt_switcher** %2, align 8
  %8 = getelementptr inbounds %struct.vt_switcher, %struct.vt_switcher* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VT_SETMODE, align 4
  %11 = call i64 @ioctl(i32 %9, i32 %10, %struct.vt_mode* %3)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.vt_switcher*, %struct.vt_switcher** %2, align 8
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @mp_strerror(i32 %15)
  %17 = call i32 @MP_ERR(%struct.vt_switcher* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %37

18:                                               ; preds = %1
  %19 = load i32, i32* @RELEASE_SIGNAL, align 4
  %20 = load i32, i32* @SIG_DFL, align 4
  %21 = call i32 @install_signal(i32 %19, i32 %20)
  %22 = load i32, i32* @ACQUIRE_SIGNAL, align 4
  %23 = load i32, i32* @SIG_DFL, align 4
  %24 = call i32 @install_signal(i32 %22, i32 %23)
  %25 = load %struct.vt_switcher*, %struct.vt_switcher** %2, align 8
  %26 = getelementptr inbounds %struct.vt_switcher, %struct.vt_switcher* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32*, i32** @vt_switcher_pipe, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32*, i32** @vt_switcher_pipe, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @close(i32 %35)
  br label %37

37:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ioctl(i32, i32, %struct.vt_mode*) #2

declare dso_local i32 @MP_ERR(%struct.vt_switcher*, i8*, i32) #2

declare dso_local i32 @mp_strerror(i32) #2

declare dso_local i32 @install_signal(i32, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
