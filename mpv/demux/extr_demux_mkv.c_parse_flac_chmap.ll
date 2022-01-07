; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_parse_flac_chmap.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_parse_flac_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_chmap*, i8*, i32)* @parse_flac_chmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_flac_chmap(%struct.mp_chmap* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mp_chmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %53

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %14, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %45, %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 127
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @AV_RB24(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %30, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %53

37:                                               ; preds = %20
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @parse_vorbis_chmap(%struct.mp_chmap* %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %17

53:                                               ; preds = %11, %36, %17
  ret void
}

declare dso_local i32 @AV_RB24(i8*) #1

declare dso_local i32 @parse_vorbis_chmap(%struct.mp_chmap*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
