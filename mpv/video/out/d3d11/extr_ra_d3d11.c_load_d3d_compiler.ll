; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_load_d3d_compiler.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_load_d3d_compiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i32] [i32 100, i32 51, i32 100, i32 99, i32 111, i32 109, i32 112, i32 105, i32 108, i32 101, i32 114, i32 95, i32 52, i32 55, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@LOAD_LIBRARY_SEARCH_SYSTEM32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i32] [i32 100, i32 51, i32 100, i32 99, i32 111, i32 109, i32 112, i32 105, i32 108, i32 101, i32 114, i32 95, i32 52, i32 54, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 100, i32 51, i32 100, i32 99, i32 111, i32 109, i32 112, i32 105, i32 108, i32 101, i32 114, i32 95, i32 52, i32 51, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"D3DCompile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*)* @load_d3d_compiler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_d3d_compiler(%struct.ra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_d3d11*, align 8
  %5 = alloca i32*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  %6 = load %struct.ra*, %struct.ra** %3, align 8
  %7 = getelementptr inbounds %struct.ra, %struct.ra* %6, i32 0, i32 0
  %8 = load %struct.ra_d3d11*, %struct.ra_d3d11** %7, align 8
  store %struct.ra_d3d11* %8, %struct.ra_d3d11** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = call i64 (...) @IsWindows8Point1OrGreater()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @LOAD_LIBRARY_SEARCH_SYSTEM32, align 4
  %13 = call i32* @LoadLibraryExW(i8* bitcast ([19 x i32]* @.str to i8*), i32* null, i32 %12)
  store i32* %13, i32** %5, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32* @LoadLibraryW(i8* bitcast ([19 x i32]* @.str to i8*))
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32* @LoadLibraryW(i8* bitcast ([19 x i32]* @.str.1 to i8*))
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32* @LoadLibraryW(i8* bitcast ([19 x i32]* @.str.2 to i8*))
  store i32* %28, i32** %5, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %48

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @get_dll_version(i32* %34)
  %36 = load %struct.ra_d3d11*, %struct.ra_d3d11** %4, align 8
  %37 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @GetProcAddress(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.ra_d3d11*, %struct.ra_d3d11** %4, align 8
  %41 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ra_d3d11*, %struct.ra_d3d11** %4, align 8
  %43 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %48

47:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %46, %32
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @IsWindows8Point1OrGreater(...) #1

declare dso_local i32* @LoadLibraryExW(i8*, i32*, i32) #1

declare dso_local i32* @LoadLibraryW(i8*) #1

declare dso_local i32 @get_dll_version(i32*) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
