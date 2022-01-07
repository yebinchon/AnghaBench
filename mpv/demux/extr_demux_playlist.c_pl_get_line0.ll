; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_pl_get_line0.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_pl_get_line0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_parser = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pl_parser*)* @pl_get_line0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pl_get_line0(%struct.pl_parser* %0) #0 {
  %2 = alloca %struct.pl_parser*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.pl_parser* %0, %struct.pl_parser** %2, align 8
  %5 = load %struct.pl_parser*, %struct.pl_parser** %2, align 8
  %6 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.pl_parser*, %struct.pl_parser** %2, align 8
  %9 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pl_parser*, %struct.pl_parser** %2, align 8
  %12 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @read_line(%struct.TYPE_2__* %7, i32 %10, i32 4, i32 %13)
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %31, %22, %17
  br label %51

38:                                               ; preds = %1
  %39 = load %struct.pl_parser*, %struct.pl_parser** %2, align 8
  %40 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.pl_parser*, %struct.pl_parser** %2, align 8
  %48 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %38, %37
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i8* @read_line(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
