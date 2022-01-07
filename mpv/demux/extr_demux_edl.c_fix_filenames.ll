; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_fix_filenames.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_fix_filenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_parts = type { i32, %struct.tl_part* }
%struct.tl_part = type { i32 }
%struct.bstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_parts*, i8*)* @fix_filenames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_filenames(%struct.tl_parts* %0, i8* %1) #0 {
  %3 = alloca %struct.tl_parts*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bstr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tl_part*, align 8
  %8 = alloca i8*, align 8
  store %struct.tl_parts* %0, %struct.tl_parts** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @mp_dirname(i8* %9)
  %11 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.tl_parts*, %struct.tl_parts** %3, align 8
  %15 = getelementptr inbounds %struct.tl_parts, %struct.tl_parts* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.tl_parts*, %struct.tl_parts** %3, align 8
  %20 = getelementptr inbounds %struct.tl_parts, %struct.tl_parts* %19, i32 0, i32 1
  %21 = load %struct.tl_part*, %struct.tl_part** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %21, i64 %23
  store %struct.tl_part* %24, %struct.tl_part** %7, align 8
  %25 = load %struct.tl_part*, %struct.tl_part** %7, align 8
  %26 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @mp_basename(i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.tl_parts*, %struct.tl_parts** %3, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @bstr0(i8* %30)
  %32 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mp_path_join_bstr(%struct.tl_parts* %29, i32 %33, i32 %31)
  %35 = load %struct.tl_part*, %struct.tl_part** %7, align 8
  %36 = getelementptr inbounds %struct.tl_part, %struct.tl_part* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %18
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %12

40:                                               ; preds = %12
  ret void
}

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i8* @mp_basename(i32) #1

declare dso_local i32 @mp_path_join_bstr(%struct.tl_parts*, i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
