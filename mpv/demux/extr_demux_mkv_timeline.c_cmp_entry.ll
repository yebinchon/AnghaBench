; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_cmp_entry.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_cmp_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.find_entry*, align 8
  %7 = alloca %struct.find_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.find_entry*
  store %struct.find_entry* %11, %struct.find_entry** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.find_entry*
  store %struct.find_entry* %13, %struct.find_entry** %7, align 8
  %14 = load %struct.find_entry*, %struct.find_entry** %7, align 8
  %15 = getelementptr inbounds %struct.find_entry, %struct.find_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.find_entry*, %struct.find_entry** %6, align 8
  %18 = getelementptr inbounds %struct.find_entry, %struct.find_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @FFSIGN(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.find_entry*, %struct.find_entry** %6, align 8
  %28 = getelementptr inbounds %struct.find_entry, %struct.find_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.find_entry*, %struct.find_entry** %7, align 8
  %31 = getelementptr inbounds %struct.find_entry, %struct.find_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @FFSIGN(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @FFSIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
