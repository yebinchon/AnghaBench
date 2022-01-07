; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load_callback.c_greedy_reader.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load_callback.c_greedy_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_source = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*)* @greedy_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @greedy_reader(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.my_source*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.my_source*
  store %struct.my_source* %10, %struct.my_source** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.my_source*, %struct.my_source** %8, align 8
  %13 = getelementptr inbounds %struct.my_source, %struct.my_source* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.my_source*, %struct.my_source** %8, align 8
  %16 = getelementptr inbounds %struct.my_source, %struct.my_source* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = icmp ugt i64 %11, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.my_source*, %struct.my_source** %8, align 8
  %22 = getelementptr inbounds %struct.my_source, %struct.my_source* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.my_source*, %struct.my_source** %8, align 8
  %25 = getelementptr inbounds %struct.my_source, %struct.my_source* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %20, %3
  %29 = load i64, i64* %6, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.my_source*, %struct.my_source** %8, align 8
  %34 = getelementptr inbounds %struct.my_source, %struct.my_source* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.my_source*, %struct.my_source** %8, align 8
  %37 = getelementptr inbounds %struct.my_source, %struct.my_source* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i8* %32, i64 %39, i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.my_source*, %struct.my_source** %8, align 8
  %44 = getelementptr inbounds %struct.my_source, %struct.my_source* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %4, align 8
  br label %49

48:                                               ; preds = %28
  store i64 0, i64* %4, align 8
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
