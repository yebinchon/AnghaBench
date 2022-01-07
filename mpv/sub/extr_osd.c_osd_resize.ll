; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32* }
%struct.mp_osd_res = type { i32 }

@OSDTYPE_OSD = common dso_local global i32 0, align 4
@OSDTYPE_EXTERNAL = common dso_local global i32 0, align 4
@OSDTYPE_EXTERNAL2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_resize(%struct.osd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_osd_res, align 4
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  %8 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %9 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %8, i32 0, i32 0
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* @OSDTYPE_OSD, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @OSDTYPE_EXTERNAL, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @OSDTYPE_EXTERNAL2, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %39, %2
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %26 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %27 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @check_obj_resize(%struct.osd_state* %25, i32 %37, i32 %35)
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %44 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %43, i32 0, i32 0
  %45 = call i32 @pthread_mutex_unlock(i32* %44)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @check_obj_resize(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
