; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_get_native_resource.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_get_native_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32, %struct.ra_native_resource* }
%struct.ra_native_resource = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ra_get_native_resource(%struct.ra* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ra*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ra_native_resource*, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ra*, %struct.ra** %4, align 8
  %11 = getelementptr inbounds %struct.ra, %struct.ra* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load %struct.ra*, %struct.ra** %4, align 8
  %16 = getelementptr inbounds %struct.ra, %struct.ra* %15, i32 0, i32 1
  %17 = load %struct.ra_native_resource*, %struct.ra_native_resource** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ra_native_resource, %struct.ra_native_resource* %17, i64 %19
  store %struct.ra_native_resource* %20, %struct.ra_native_resource** %7, align 8
  %21 = load %struct.ra_native_resource*, %struct.ra_native_resource** %7, align 8
  %22 = getelementptr inbounds %struct.ra_native_resource, %struct.ra_native_resource* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i32 %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.ra_native_resource*, %struct.ra_native_resource** %7, align 8
  %29 = getelementptr inbounds %struct.ra_native_resource, %struct.ra_native_resource* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  br label %36

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %8

35:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
