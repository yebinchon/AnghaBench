; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_init_track.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_init_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, %struct.sh_stream* }
%struct.sh_stream = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"und\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, %struct.sh_stream*)* @init_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_track(i32* %0, %struct.TYPE_3__* %1, %struct.sh_stream* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store %struct.sh_stream* %2, %struct.sh_stream** %6, align 8
  %7 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store %struct.sh_stream* %7, %struct.sh_stream** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @strcmp(i64 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %25 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %24, i32 0, i32 4
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %14, %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %31 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %36 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %41 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %46 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
