; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_msg.c_write_log_file.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_msg.c_write_log_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i8*, i32, %struct.mp_log_root* }
%struct.mp_log_root = type { i32 }

@MSGL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[%8.3f][%c][%s] %s\00", align 1
@MP_START_TIME = common dso_local global i32 0, align 4
@mp_log_levels = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log*, i32, i8*)* @write_log_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_log_file(%struct.mp_log* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mp_log_root*, align 8
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %9 = getelementptr inbounds %struct.mp_log, %struct.mp_log* %8, i32 0, i32 2
  %10 = load %struct.mp_log_root*, %struct.mp_log_root** %9, align 8
  store %struct.mp_log_root* %10, %struct.mp_log_root** %7, align 8
  %11 = load %struct.mp_log_root*, %struct.mp_log_root** %7, align 8
  %12 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MSGL_DEBUG, align 4
  %18 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %19 = getelementptr inbounds %struct.mp_log, %struct.mp_log* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MPMAX(i32 %17, i32 %20)
  %22 = icmp sgt i32 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %3
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.mp_log_root*, %struct.mp_log_root** %7, align 8
  %26 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (...) @mp_time_us()
  %29 = load i32, i32* @MP_START_TIME, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  %33 = fptosi double %32 to i32
  %34 = load i32**, i32*** @mp_log_levels, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %42 = getelementptr inbounds %struct.mp_log, %struct.mp_log* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %40, i8* %43, i8* %44)
  %46 = load %struct.mp_log_root*, %struct.mp_log_root** %7, align 8
  %47 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fflush(i32 %48)
  br label %50

50:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
