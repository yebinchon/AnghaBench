; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_post_process_data.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_post_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ao_post_process_data(%struct.ao* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ao*, %struct.ao** %4, align 8
  %12 = getelementptr inbounds %struct.ao, %struct.ao* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @af_fmt_is_planar(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.ao*, %struct.ao** %4, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 1, %22 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %34

29:                                               ; preds = %23
  %30 = load %struct.ao*, %struct.ao** %4, align 8
  %31 = getelementptr inbounds %struct.ao, %struct.ao* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i32 [ 1, %28 ], [ %33, %29 ]
  %36 = mul nsw i32 %25, %35
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %50, %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.ao*, %struct.ao** %4, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @process_plane(%struct.ao* %42, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %37

53:                                               ; preds = %37
  ret void
}

declare dso_local i32 @af_fmt_is_planar(i32) #1

declare dso_local i32 @process_plane(%struct.ao*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
