; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_appwiz.c_start_params.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_appwiz.c_start_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_params.install_geckoW = internal constant [14 x i8] c"install_gecko\00", align 1
@start_params.install_monoW = internal constant [13 x i8] c"install_mono\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ADDON_GECKO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ADDON_MONO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown param %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @start_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_params(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  br label %33

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strcmpW(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @start_params.install_geckoW, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @ADDON_GECKO, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @install_addon(i32 %15, i32 %16)
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmpW(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @start_params.install_monoW, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ADDON_MONO, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @install_addon(i32 %24, i32 %25)
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @debugstr_w(i8* %29)
  %31 = call i32 @WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %23, %14, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @strcmpW(i8*, i8*) #1

declare dso_local i32 @install_addon(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
