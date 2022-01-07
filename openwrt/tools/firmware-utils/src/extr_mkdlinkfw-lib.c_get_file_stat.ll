; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw-lib.c_get_file_stat.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw-lib.c_get_file_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_file_stat(%struct.file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  %6 = load %struct.file_info*, %struct.file_info** %3, align 8
  %7 = getelementptr inbounds %struct.file_info, %struct.file_info* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.file_info*, %struct.file_info** %3, align 8
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @stat(i32* %14, %struct.stat* %4)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.file_info*, %struct.file_info** %3, align 8
  %20 = getelementptr inbounds %struct.file_info, %struct.file_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.file_info*, %struct.file_info** %3, align 8
  %28 = getelementptr inbounds %struct.file_info, %struct.file_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %18, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
