; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_recorder_create.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_recorder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder = type { i32 }
%struct.demux_internal = type { i32, %struct.TYPE_3__*, %struct.sh_stream** }
%struct.TYPE_3__ = type { i32 }
%struct.sh_stream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_recorder* (%struct.demux_internal*, i8*)* @recorder_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_recorder* @recorder_create(%struct.demux_internal* %0, i8* %1) #0 {
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_stream**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_stream*, align 8
  %9 = alloca %struct.mp_recorder*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.sh_stream** null, %struct.sh_stream*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 2
  %19 = load %struct.sh_stream**, %struct.sh_stream*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %19, i64 %21
  %23 = load %struct.sh_stream*, %struct.sh_stream** %22, align 8
  store %struct.sh_stream* %23, %struct.sh_stream** %8, align 8
  %24 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %25 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.sh_stream**, %struct.sh_stream*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %34 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.sh_stream** %31, i32 %32, %struct.sh_stream* %33)
  br label %35

35:                                               ; preds = %30, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %41 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.sh_stream**, %struct.sh_stream*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.mp_recorder* @mp_recorder_create(i32 %44, i8* %45, %struct.sh_stream** %46, i32 %47)
  store %struct.mp_recorder* %48, %struct.mp_recorder** %9, align 8
  %49 = load %struct.sh_stream**, %struct.sh_stream*** %5, align 8
  %50 = call i32 @talloc_free(%struct.sh_stream** %49)
  %51 = load %struct.mp_recorder*, %struct.mp_recorder** %9, align 8
  ret %struct.mp_recorder* %51
}

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.sh_stream**, i32, %struct.sh_stream*) #1

declare dso_local %struct.mp_recorder* @mp_recorder_create(i32, i8*, %struct.sh_stream**, i32) #1

declare dso_local i32 @talloc_free(%struct.sh_stream**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
