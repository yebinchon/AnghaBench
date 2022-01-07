; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_sstep.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_sstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i64, i32, i64, i32, %struct.MPOpts* }
%struct.MPOpts = type { i64 }

@OSD_FFW = common dso_local global i32 0, align 4
@MPSEEK_RELATIVE = common dso_local global i32 0, align 4
@MPSEEK_DEFAULT = common dso_local global i32 0, align 4
@STATUS_EOF = common dso_local global i64 0, align 8
@AT_END_OF_FILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_sstep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sstep(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %4, i32 0, i32 6
  %6 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  store %struct.MPOpts* %6, %struct.MPOpts** %3, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %72

17:                                               ; preds = %11
  %18 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %19 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %29 = load i32, i32* @OSD_FFW, align 4
  %30 = call i32 @set_osd_function(%struct.MPContext* %28, i32 %29)
  %31 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %32 = load i32, i32* @MPSEEK_RELATIVE, align 4
  %33 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %34 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @MPSEEK_DEFAULT, align 4
  %37 = call i32 @queue_seek(%struct.MPContext* %31, i32 %32, i64 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %27, %22, %17
  %39 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STATUS_EOF, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* @AT_END_OF_FILE, align 8
  %56 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %57 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %49, %44
  %59 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %60 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %70 = call i32 @set_pause_state(%struct.MPContext* %69, i32 1)
  br label %71

71:                                               ; preds = %68, %63, %58
  br label %72

72:                                               ; preds = %16, %71, %38
  ret void
}

declare dso_local i32 @set_osd_function(%struct.MPContext*, i32) #1

declare dso_local i32 @queue_seek(%struct.MPContext*, i32, i64, i32, i32) #1

declare dso_local i32 @set_pause_state(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
