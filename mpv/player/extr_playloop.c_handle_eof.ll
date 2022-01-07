; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_eof.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i64, i64, i64, i64, i64 }

@STATUS_EOF = common dso_local global i64 0, align 8
@AT_END_OF_FILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_eof(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @vo_has_frame(i64 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %13, %8, %1
  %20 = phi i1 [ false, %8 ], [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26, %19
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %31
  %35 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STATUS_EOF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @STATUS_EOF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* @AT_END_OF_FILE, align 8
  %53 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %54 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %46, %40, %34, %31, %26
  ret void
}

declare dso_local i64 @vo_has_frame(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
