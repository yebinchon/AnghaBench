; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_get_format_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_get_format_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel_format_desc = type { i64 }

@formats = common dso_local global %struct.pixel_format_desc* null, align 8
@D3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unknown format %#x (as FOURCC %s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pixel_format_desc* @get_format_info(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** @formats, align 8
  %6 = load i32, i32* %3, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %5, i64 %7
  %9 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** @formats, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %14, i64 %16
  %18 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @D3DFMT_UNKNOWN, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %13, %4
  %23 = phi i1 [ false, %4 ], [ %21, %13 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %22
  %28 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** @formats, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %28, i64 %30
  %32 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @D3DFMT_UNKNOWN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i64, i64* %2, align 8
  %38 = bitcast i64* %2 to i8*
  %39 = call i32 @debugstr_an(i8* %38, i32 4)
  %40 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** @formats, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %42, i64 %44
  ret %struct.pixel_format_desc* %45
}

declare dso_local i32 @FIXME(i8*, i64, i32) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
