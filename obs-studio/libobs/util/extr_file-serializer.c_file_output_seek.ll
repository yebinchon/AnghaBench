; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_file-serializer.c_file_output_seek.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_file-serializer.c_file_output_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_output_data = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @file_output_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_output_seek(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_output_data*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.file_output_data*
  store %struct.file_output_data* %11, %struct.file_output_data** %8, align 8
  %12 = load i32, i32* @SEEK_SET, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 130, label %16
    i32 129, label %18
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @SEEK_SET, align 4
  store i32 %15, i32* %9, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @SEEK_CUR, align 4
  store i32 %17, i32* %9, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @SEEK_END, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %3, %18, %16, %14
  %21 = load %struct.file_output_data*, %struct.file_output_data** %8, align 8
  %22 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @os_fseeki64(i32 %23, i32 %24, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %34

29:                                               ; preds = %20
  %30 = load %struct.file_output_data*, %struct.file_output_data** %8, align 8
  %31 = getelementptr inbounds %struct.file_output_data, %struct.file_output_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @os_ftelli64(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @os_fseeki64(i32, i32, i32) #1

declare dso_local i32 @os_ftelli64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
