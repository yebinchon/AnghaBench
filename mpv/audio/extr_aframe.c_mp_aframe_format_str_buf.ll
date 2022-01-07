; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_format_str_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_format_str_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%dHz %s %dch %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_aframe_format_str_buf(i8* %0, i64 %1, %struct.mp_aframe* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mp_aframe*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mp_aframe* %2, %struct.mp_aframe** %6, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %10 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %11 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %10, i32 0, i32 1
  %12 = call i32 @mp_chmap_to_str_buf(i8* %9, i32 128, %struct.TYPE_5__* %11)
  %13 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %14 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %13, i32 0, i32 1
  %15 = call i8* @mp_chmap_to_str_hr(%struct.TYPE_5__* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %18 = call i64 @strcmp(i8* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @mp_snprintf_cat(i8* %21, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %28 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %33 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %34 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %38 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @af_fmt_to_str(i32 %39)
  %41 = call i32 @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32, i32 %36, i8* %40)
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i32 @mp_chmap_to_str_buf(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i8* @mp_chmap_to_str_hr(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mp_snprintf_cat(i8*, i32, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @af_fmt_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
