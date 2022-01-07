; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_image.c_checked_mkdir.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_image.c_checked_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Creating output directory '%s'...\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Error creating output directory: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i8*)* @checked_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checked_mkdir(%struct.vo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  store %struct.vo* %0, %struct.vo** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.vo*, %struct.vo** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @MP_INFO(%struct.vo* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @mkdir(i8* %11, i32 493)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load i64, i64* @errno, align 8
  %16 = call i8* @mp_strerror(i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EEXIST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @stat(i8* %21, %struct.stat* %7)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISDIR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %36

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %14
  %32 = load %struct.vo*, %struct.vo** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @MP_ERR(%struct.vo* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %31, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @MP_INFO(%struct.vo*, i8*, i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i8* @mp_strerror(i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
