; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_scan_data_files_cmp.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_scan_data_files_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_datafile = type { i32 }

@RRDENG_PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @scan_data_files_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_data_files_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rrdengine_datafile*, align 8
  %6 = alloca %struct.rrdengine_datafile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.rrdengine_datafile**
  %19 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %18, align 8
  store %struct.rrdengine_datafile* %19, %struct.rrdengine_datafile** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.rrdengine_datafile**
  %22 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %21, align 8
  store %struct.rrdengine_datafile* %22, %struct.rrdengine_datafile** %6, align 8
  %23 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %5, align 8
  %24 = trunc i64 %11 to i32
  %25 = call i32 @generate_datafilepath(%struct.rrdengine_datafile* %23, i8* %13, i32 %24)
  %26 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %6, align 8
  %27 = trunc i64 %15 to i32
  %28 = call i32 @generate_datafilepath(%struct.rrdengine_datafile* %26, i8* %16, i32 %27)
  %29 = call i32 @strcmp(i8* %13, i8* %16)
  %30 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %30)
  ret i32 %29
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @generate_datafilepath(%struct.rrdengine_datafile*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
