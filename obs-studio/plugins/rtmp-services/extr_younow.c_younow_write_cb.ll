; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_younow.c_younow_write_cb.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_younow.c_younow_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.younow_mem_struct = type { i64, i64* }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"yyounow_write_cb: realloc returned NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @younow_write_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @younow_write_cb(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.younow_mem_struct*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = mul i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.younow_mem_struct*
  store %struct.younow_mem_struct* %16, %struct.younow_mem_struct** %11, align 8
  %17 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %18 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %21 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %22, %23
  %25 = add i64 %24, 1
  %26 = call i64* @realloc(i64* %19, i64 %25)
  %27 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %28 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %27, i32 0, i32 1
  store i64* %26, i64** %28, align 8
  %29 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %30 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @LOG_WARNING, align 4
  %35 = call i32 @blog(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %60

36:                                               ; preds = %4
  %37 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %38 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %41 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @memcpy(i64* %43, i8* %44, i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %49 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %53 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.younow_mem_struct*, %struct.younow_mem_struct** %11, align 8
  %56 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %36, %33
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i64* @realloc(i64*, i64) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
