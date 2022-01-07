; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm.c_get_IID_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm.c_get_IID_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IDirect3DRMFrame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IID_IDirect3DRMFrame\00", align 1
@IID_IDirect3DRMFrame2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"IID_IDirect3DRMFrame2\00", align 1
@IID_IDirect3DRMFrame3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"IID_IDirect3DRMFrame3\00", align 1
@IID_IDirect3DRMMeshBuilder = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"IID_IDirect3DRMMeshBuilder\00", align 1
@IID_IDirect3DRMMeshBuilder2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"IID_IDirect3DRMMeshBuilder2\00", align 1
@IID_IDirect3DRMMeshBuilder3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"IID_IDirect3DRMMeshBuilder3\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @get_IID_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_IID_string(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @IsEqualGUID(i32* %4, i32* @IID_IDirect3DRMFrame)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %39

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @IsEqualGUID(i32* %9, i32* @IID_IDirect3DRMFrame2)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %39

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @IsEqualGUID(i32* %14, i32* @IID_IDirect3DRMFrame3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %39

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @IsEqualGUID(i32* %19, i32* @IID_IDirect3DRMMeshBuilder)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %39

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @IsEqualGUID(i32* %24, i32* @IID_IDirect3DRMMeshBuilder2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %39

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @IsEqualGUID(i32* %29, i32* @IID_IDirect3DRMMeshBuilder3)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %39

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %39

39:                                               ; preds = %38, %32, %27, %22, %17, %12, %7
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
