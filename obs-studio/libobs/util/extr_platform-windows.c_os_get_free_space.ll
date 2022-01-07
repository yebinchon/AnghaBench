; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_get_free_space.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_get_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_get_free_space(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i32], align 16
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %10 = call i64 @os_get_abs_path(i8* %8, i8* %9, i32 512)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %14 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %15 = call i64 @os_utf8_to_wcs(i8* %13, i32 0, i32* %14, i32 512)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %19 = ptrtoint %struct.TYPE_2__* %4 to i32
  %20 = call i64 @GetDiskFreeSpaceExW(i32* %18, i32 %19, i32* null, i32* null)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %12
  br label %28

28:                                               ; preds = %27, %1
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @os_get_abs_path(i8*, i8*, i32) #1

declare dso_local i64 @os_utf8_to_wcs(i8*, i32, i32*, i32) #1

declare dso_local i64 @GetDiskFreeSpaceExW(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
