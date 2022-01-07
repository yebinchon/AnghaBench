; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_mode_by_numbers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_mode_by_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kms = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"Could not find mode matching %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kms*, i32, i32, double, i8*)* @setup_mode_by_numbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_mode_by_numbers(%struct.kms* %0, i32 %1, i32 %2, double %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kms*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.kms* %0, %struct.kms** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store double %3, double* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %44, %5
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.kms*, %struct.kms** %7, align 8
  %17 = getelementptr inbounds %struct.kms, %struct.kms* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %15, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %14
  %23 = load %struct.kms*, %struct.kms** %7, align 8
  %24 = getelementptr inbounds %struct.kms, %struct.kms* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load double, double* %10, align 8
  %35 = call i64 @mode_match(i32* %31, i32 %32, i32 %33, double %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.kms*, %struct.kms** %7, align 8
  %41 = getelementptr inbounds %struct.kms, %struct.kms* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  store i32 1, i32* %6, align 4
  br label %51

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load %struct.kms*, %struct.kms** %7, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @MP_ERR(%struct.kms* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %37
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @mode_match(i32*, i32, i32, double) #1

declare dso_local i32 @MP_ERR(%struct.kms*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
