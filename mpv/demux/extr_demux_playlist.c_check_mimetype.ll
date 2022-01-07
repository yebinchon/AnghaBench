; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_check_mimetype.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_check_mimetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, i8**)* @check_mimetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mimetype(%struct.stream* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.stream*, %struct.stream** %4, align 8
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i8**, i8*** %5, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %15, %12
  %23 = phi i1 [ false, %12 ], [ %21, %15 ]
  br i1 %23, label %24, label %40

24:                                               ; preds = %22
  %25 = load %struct.stream*, %struct.stream** %4, align 8
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcasecmp(i64 %27, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %42

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %12

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @strcasecmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
