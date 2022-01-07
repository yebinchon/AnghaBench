; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_is_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_is_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Found float %s - %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @is_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @is_float(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %8, align 8
  br label %10

10:                                               ; preds = %68, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %6, align 1
  %24 = call i32 @is_separator(i8 signext %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %16, %10
  %28 = phi i1 [ false, %10 ], [ %26, %16 ]
  br i1 %28, label %29, label %71

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %53, label %36

36:                                               ; preds = %32, %29
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 48
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 57
  br i1 %43, label %53, label %44

44:                                               ; preds = %40, %36
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %53, label %51

51:                                               ; preds = %47, %44
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %2, align 8
  br label %97

53:                                               ; preds = %47, %40, %32
  %54 = load i8, i8* %6, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 512
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8, i8* %6, align 1
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %66
  store i8 %64, i8* %67, align 1
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %10

71:                                               ; preds = %27
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @min(i32 %72, i32 511)
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = sext i32 %75 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %77, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %87 = call i32 @sscanf(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float* %7)
  %88 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %89 = load float, float* %7, align 4
  %90 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %88, float %89)
  %91 = load float, float* %7, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to float*
  store float %91, float* %95, align 4
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %2, align 8
  br label %97

97:                                               ; preds = %71, %51
  %98 = load i64, i64* %2, align 8
  ret i64 %98
}

declare dso_local i32 @is_separator(i8 signext) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, float*) #1

declare dso_local i32 @TRACE(i8*, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
