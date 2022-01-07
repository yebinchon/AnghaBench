; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-iconv.c_get_mac_code.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-iconv.c_get_mac_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_font_mapping = type { i64, i64, i8* }

@mac_code_count = common dso_local global i64 0, align 8
@mac_codes = common dso_local global %struct.mac_font_mapping* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @get_mac_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_mac_code(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mac_font_mapping*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @mac_code_count, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.mac_font_mapping*, %struct.mac_font_mapping** @mac_codes, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.mac_font_mapping, %struct.mac_font_mapping* %13, i64 %14
  store %struct.mac_font_mapping* %15, %struct.mac_font_mapping** %7, align 8
  %16 = load %struct.mac_font_mapping*, %struct.mac_font_mapping** %7, align 8
  %17 = getelementptr inbounds %struct.mac_font_mapping, %struct.mac_font_mapping* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.mac_font_mapping*, %struct.mac_font_mapping** %7, align 8
  %23 = getelementptr inbounds %struct.mac_font_mapping, %struct.mac_font_mapping* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.mac_font_mapping*, %struct.mac_font_mapping** %7, align 8
  %29 = getelementptr inbounds %struct.mac_font_mapping, %struct.mac_font_mapping* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  br label %36

31:                                               ; preds = %21, %12
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %8

35:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
