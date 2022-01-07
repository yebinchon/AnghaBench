; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_find_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_find_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.darray = type { i64 }
%struct.config_section = type { %struct.darray, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.darray*, i8*, i8*)* @config_find_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @config_find_item(%struct.darray* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.config_section*, align 8
  %11 = alloca %struct.config_item*, align 8
  store %struct.darray* %0, %struct.darray** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %57, %3
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.darray*, %struct.darray** %5, align 8
  %15 = getelementptr inbounds %struct.darray, %struct.darray* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load %struct.darray*, %struct.darray** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i8* @darray_item(i32 16, %struct.darray* %19, i64 %20)
  %22 = bitcast i8* %21 to %struct.config_section*
  store %struct.config_section* %22, %struct.config_section** %10, align 8
  %23 = load %struct.config_section*, %struct.config_section** %10, align 8
  %24 = getelementptr inbounds %struct.config_section, %struct.config_section* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @astrcmpi(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.config_section*, %struct.config_section** %10, align 8
  %33 = getelementptr inbounds %struct.config_section, %struct.config_section* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.darray, %struct.darray* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load %struct.config_section*, %struct.config_section** %10, align 8
  %39 = getelementptr inbounds %struct.config_section, %struct.config_section* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i8* @darray_item(i32 4, %struct.darray* %39, i64 %40)
  %42 = bitcast i8* %41 to %struct.config_item*
  store %struct.config_item* %42, %struct.config_item** %11, align 8
  %43 = load %struct.config_item*, %struct.config_item** %11, align 8
  %44 = getelementptr inbounds %struct.config_item, %struct.config_item* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @astrcmpi(i32 %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load %struct.config_item*, %struct.config_item** %11, align 8
  store %struct.config_item* %50, %struct.config_item** %4, align 8
  br label %61

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %30

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55, %18
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %12

60:                                               ; preds = %12
  store %struct.config_item* null, %struct.config_item** %4, align 8
  br label %61

61:                                               ; preds = %60, %49
  %62 = load %struct.config_item*, %struct.config_item** %4, align 8
  ret %struct.config_item* %62
}

declare dso_local i8* @darray_item(i32, %struct.darray*, i64) #1

declare dso_local i64 @astrcmpi(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
