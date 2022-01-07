; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_util.c_file_lookup.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_util.c_file_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, %struct.file* }

@file_list = common dso_local global %struct.file* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @file_lookup(i8* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @sym_expand_string_value(i8* %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.file*, %struct.file** @file_list, align 8
  store %struct.file* %8, %struct.file** %4, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = icmp ne %struct.file* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %13, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %22, %struct.file** %2, align 8
  br label %40

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load %struct.file*, %struct.file** %26, align 8
  store %struct.file* %27, %struct.file** %4, align 8
  br label %9

28:                                               ; preds = %9
  %29 = call %struct.file* @xmalloc(i32 16)
  store %struct.file* %29, %struct.file** %4, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = call i32 @memset(%struct.file* %30, i32 0, i32 16)
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.file*, %struct.file** @file_list, align 8
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 1
  store %struct.file* %35, %struct.file** %37, align 8
  %38 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %38, %struct.file** @file_list, align 8
  %39 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %39, %struct.file** %2, align 8
  br label %40

40:                                               ; preds = %28, %19
  %41 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %41
}

declare dso_local i8* @sym_expand_string_value(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.file* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
