; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/adaptive_resortable_list/extr_adaptive_resortable_list.c_arl_create.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/adaptive_resortable_list/extr_adaptive_resortable_list.c_arl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { void (i8*, i32, i8*, i8*)*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @arl_create(i8* %0, void (i8*, i32, i8*, i8*)* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*, i32, i8*, i8*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store void (i8*, i32, i8*, i8*)* %1, void (i8*, i32, i8*, i8*)** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call %struct.TYPE_4__* @callocz(i32 1, i32 24)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strdupz(i8* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load void (i8*, i32, i8*, i8*)*, void (i8*, i32, i8*, i8*)** %5, align 8
  %14 = icmp ne void (i8*, i32, i8*, i8*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store void (i8*, i32, i8*, i8*)* @arl_callback_str2ull, void (i8*, i32, i8*, i8*)** %17, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load void (i8*, i32, i8*, i8*)*, void (i8*, i32, i8*, i8*)** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store void (i8*, i32, i8*, i8*)* %19, void (i8*, i32, i8*, i8*)** %21, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %26
}

declare dso_local %struct.TYPE_4__* @callocz(i32, i32) #1

declare dso_local i32 @strdupz(i8*) #1

declare dso_local void @arl_callback_str2ull(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
