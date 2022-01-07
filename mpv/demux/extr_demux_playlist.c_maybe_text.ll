; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_maybe_text.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_maybe_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @maybe_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_text(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = bitcast %struct.TYPE_3__* %4 to { i32, i8* }*
  %8 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %7, i32 0, i32 0
  store i32 %0, i32* %8, align 8
  %9 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %7, i32 0, i32 1
  store i8* %1, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %39, %2
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %6, align 1
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 13
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 9
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %43

38:                                               ; preds = %33, %29, %25, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %10

42:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
