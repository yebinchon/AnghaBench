; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_probe_pl.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_probe_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_format = type { i64 (%struct.pl_parser*)*, i32 }
%struct.pl_parser = type { i32, i32 }

@formats = common dso_local global %struct.pl_format* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"forcing format by mime-type.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pl_format* (%struct.pl_parser*)* @probe_pl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pl_format* @probe_pl(%struct.pl_parser* %0) #0 {
  %2 = alloca %struct.pl_format*, align 8
  %3 = alloca %struct.pl_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pl_format*, align 8
  store %struct.pl_parser* %0, %struct.pl_parser** %3, align 8
  %7 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %8 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @stream_tell(i32 %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %50, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.pl_format*, %struct.pl_format** @formats, align 8
  %14 = call i32 @MP_ARRAY_SIZE(%struct.pl_format* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = load %struct.pl_format*, %struct.pl_format** @formats, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pl_format, %struct.pl_format* %17, i64 %19
  store %struct.pl_format* %20, %struct.pl_format** %6, align 8
  %21 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %22 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @stream_seek(i32 %23, i32 %24)
  %26 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %27 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pl_format*, %struct.pl_format** %6, align 8
  %30 = getelementptr inbounds %struct.pl_format, %struct.pl_format* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @check_mimetype(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %16
  %35 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %36 = call i32 @MP_VERBOSE(%struct.pl_parser* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %38 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.pl_format*, %struct.pl_format** %6, align 8
  store %struct.pl_format* %39, %struct.pl_format** %2, align 8
  br label %54

40:                                               ; preds = %16
  %41 = load %struct.pl_format*, %struct.pl_format** %6, align 8
  %42 = getelementptr inbounds %struct.pl_format, %struct.pl_format* %41, i32 0, i32 0
  %43 = load i64 (%struct.pl_parser*)*, i64 (%struct.pl_parser*)** %42, align 8
  %44 = load %struct.pl_parser*, %struct.pl_parser** %3, align 8
  %45 = call i64 %43(%struct.pl_parser* %44)
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load %struct.pl_format*, %struct.pl_format** %6, align 8
  store %struct.pl_format* %48, %struct.pl_format** %2, align 8
  br label %54

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %11

53:                                               ; preds = %11
  store %struct.pl_format* null, %struct.pl_format** %2, align 8
  br label %54

54:                                               ; preds = %53, %47, %34
  %55 = load %struct.pl_format*, %struct.pl_format** %2, align 8
  ret %struct.pl_format* %55
}

declare dso_local i32 @stream_tell(i32) #1

declare dso_local i32 @MP_ARRAY_SIZE(%struct.pl_format*) #1

declare dso_local i32 @stream_seek(i32, i32) #1

declare dso_local i64 @check_mimetype(i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.pl_parser*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
