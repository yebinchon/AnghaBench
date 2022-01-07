; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_parse_extension_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_parse_extension_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_extension_map = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"- %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" FOUND: %s support.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i8*, %struct.wined3d_extension_map*, i64)* @parse_extension_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_extension_string(%struct.wined3d_gl_info* %0, i8* %1, %struct.wined3d_extension_map* %2, i64 %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wined3d_extension_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wined3d_extension_map* %2, %struct.wined3d_extension_map** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %12

12:                                               ; preds = %100, %50, %4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %101

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isspace(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isspace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %27

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %12

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @debugstr_an(i8* %52, i64 %53)
  %55 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %97, %51
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.wined3d_extension_map*, %struct.wined3d_extension_map** %7, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %62, i64 %63
  %65 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @strlen(i32 %66)
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.wined3d_extension_map*, %struct.wined3d_extension_map** %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %71, i64 %72
  %74 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @memcmp(i8* %70, i32 %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %69
  %80 = load %struct.wined3d_extension_map*, %struct.wined3d_extension_map** %7, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %80, i64 %81
  %83 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @TRUE, align 4
  %87 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %88 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.wined3d_extension_map*, %struct.wined3d_extension_map** %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %90, i64 %91
  %93 = getelementptr inbounds %struct.wined3d_extension_map, %struct.wined3d_extension_map* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  store i32 %86, i32* %95, align 4
  br label %100

96:                                               ; preds = %69, %60
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %56

100:                                              ; preds = %79, %56
  br label %12

101:                                              ; preds = %12
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_an(i8*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
