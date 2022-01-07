; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_getsignal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_getsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_info = type { %struct.signal_info*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.signal_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.signal_info* (%struct.TYPE_5__*, i8*, %struct.signal_info**)* @getsignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.signal_info* @getsignal(%struct.TYPE_5__* %0, i8* %1, %struct.signal_info** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.signal_info**, align 8
  %7 = alloca %struct.signal_info*, align 8
  %8 = alloca %struct.signal_info*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.signal_info** %2, %struct.signal_info*** %6, align 8
  store %struct.signal_info* null, %struct.signal_info** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.signal_info*, %struct.signal_info** %10, align 8
  store %struct.signal_info* %11, %struct.signal_info** %7, align 8
  br label %12

12:                                               ; preds = %24, %3
  %13 = load %struct.signal_info*, %struct.signal_info** %7, align 8
  %14 = icmp ne %struct.signal_info* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.signal_info*, %struct.signal_info** %7, align 8
  %17 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.signal_info*, %struct.signal_info** %7, align 8
  store %struct.signal_info* %25, %struct.signal_info** %8, align 8
  %26 = load %struct.signal_info*, %struct.signal_info** %7, align 8
  %27 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %26, i32 0, i32 0
  %28 = load %struct.signal_info*, %struct.signal_info** %27, align 8
  store %struct.signal_info* %28, %struct.signal_info** %7, align 8
  br label %12

29:                                               ; preds = %23, %12
  %30 = load %struct.signal_info**, %struct.signal_info*** %6, align 8
  %31 = icmp ne %struct.signal_info** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.signal_info*, %struct.signal_info** %8, align 8
  %34 = load %struct.signal_info**, %struct.signal_info*** %6, align 8
  store %struct.signal_info* %33, %struct.signal_info** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.signal_info*, %struct.signal_info** %7, align 8
  ret %struct.signal_info* %36
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
