; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_dump_img_formats.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_dump_img_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_imgfmt_desc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Image formats:\0A\00", align 1
@IMGFMT_START = common dso_local global i32 0, align 4
@IMGFMT_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_dump_img_formats(%struct.ra* %0, i32 %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ra_imgfmt_desc, align 4
  store %struct.ra* %0, %struct.ra** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ra*, %struct.ra** %3, align 8
  %9 = getelementptr inbounds %struct.ra, %struct.ra* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @mp_msg_test(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.ra*, %struct.ra** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %16, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @IMGFMT_START, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %52, %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IMGFMT_END, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @mp_imgfmt_to_name(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %52

31:                                               ; preds = %24
  %32 = load %struct.ra*, %struct.ra** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %32, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load %struct.ra*, %struct.ra** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @ra_get_imgfmt_desc(%struct.ra* %36, i32 %37, %struct.ra_imgfmt_desc* %7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.ra*, %struct.ra** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %41, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.ra*, %struct.ra** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ra_dump_imgfmt_desc(%struct.ra* %44, %struct.ra_imgfmt_desc* %7, i32 %45)
  br label %51

47:                                               ; preds = %31
  %48 = load %struct.ra*, %struct.ra** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %48, i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %40
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %20

55:                                               ; preds = %14, %20
  ret void
}

declare dso_local i32 @mp_msg_test(i32, i32) #1

declare dso_local i32 @MP_MSG(%struct.ra*, i32, i8*, ...) #1

declare dso_local i8* @mp_imgfmt_to_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @ra_get_imgfmt_desc(%struct.ra*, i32, %struct.ra_imgfmt_desc*) #1

declare dso_local i32 @ra_dump_imgfmt_desc(%struct.ra*, %struct.ra_imgfmt_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
