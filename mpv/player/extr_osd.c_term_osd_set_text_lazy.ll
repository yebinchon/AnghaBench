; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_set_text_lazy.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_term_osd_set_text_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i8*)* @term_osd_set_text_lazy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @term_osd_set_text_lazy(%struct.MPContext* %0, i8* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ false, %2 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %17
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %22
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @talloc_free(i32 %36)
  %38 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @talloc_strdup(%struct.MPContext* %38, i8* %39)
  %41 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  ret void
}

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @talloc_strdup(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
