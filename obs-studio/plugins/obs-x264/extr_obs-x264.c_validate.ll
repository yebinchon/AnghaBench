; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_validate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_x264 = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Invalid %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.obs_x264*, i8*, i8*, i8**)* @validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @validate(%struct.obs_x264* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_x264*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store %struct.obs_x264* %0, %struct.obs_x264** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %5, align 8
  br label %38

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %24, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %5, align 8
  br label %38

31:                                               ; preds = %23
  %32 = load i8**, i8*** %9, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %9, align 8
  br label %19

34:                                               ; preds = %19
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  store i8* null, i8** %5, align 8
  br label %38

38:                                               ; preds = %34, %29, %16
  %39 = load i8*, i8** %5, align 8
  ret i8* %39
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
