; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_find_section_end.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_find_section_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, i64 }
%struct.config_line = type { i64 }

@CONFIG_LINE_TYPE_SECTION = common dso_local global i64 0, align 8
@CONFIG_LINE_TYPE_SECTION_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config*)* @find_section_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_section_end(%struct.config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.config*, align 8
  %4 = alloca %struct.config_line*, align 8
  %5 = alloca i32, align 4
  store %struct.config* %0, %struct.config** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.config*, %struct.config** %3, align 8
  %7 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %40, %11
  %13 = load %struct.config*, %struct.config** %3, align 8
  %14 = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 0
  %15 = call %struct.config_line* @parser_next(i32* %14)
  store %struct.config_line* %15, %struct.config_line** %4, align 8
  %16 = icmp ne %struct.config_line* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load %struct.config_line*, %struct.config_line** %4, align 8
  %19 = getelementptr inbounds %struct.config_line, %struct.config_line* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CONFIG_LINE_TYPE_SECTION, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.config_line*, %struct.config_line** %4, align 8
  %28 = getelementptr inbounds %struct.config_line, %struct.config_line* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CONFIG_LINE_TYPE_SECTION_END, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %42

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %26
  br label %40

40:                                               ; preds = %39, %23
  br label %12

41:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %37, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.config_line* @parser_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
