; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_set_sub.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_set_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32, %struct.osd_object** }
%struct.osd_object = type { i32, %struct.dec_sub* }
%struct.dec_sub = type { i32 }

@OSDTYPE_SUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_set_sub(%struct.osd_state* %0, i32 %1, %struct.dec_sub* %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dec_sub*, align 8
  %7 = alloca %struct.osd_object*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dec_sub* %2, %struct.dec_sub** %6, align 8
  %8 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %9 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %8, i32 0, i32 1
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %18 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %17, i32 0, i32 2
  %19 = load %struct.osd_object**, %struct.osd_object*** %18, align 8
  %20 = load i32, i32* @OSDTYPE_SUB, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.osd_object*, %struct.osd_object** %19, i64 %23
  %25 = load %struct.osd_object*, %struct.osd_object** %24, align 8
  store %struct.osd_object* %25, %struct.osd_object** %7, align 8
  %26 = load %struct.dec_sub*, %struct.dec_sub** %6, align 8
  %27 = load %struct.osd_object*, %struct.osd_object** %7, align 8
  %28 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %27, i32 0, i32 1
  store %struct.dec_sub* %26, %struct.dec_sub** %28, align 8
  %29 = load %struct.osd_object*, %struct.osd_object** %7, align 8
  %30 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %16, %13, %3
  %34 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %35 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %37 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %36, i32 0, i32 1
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
