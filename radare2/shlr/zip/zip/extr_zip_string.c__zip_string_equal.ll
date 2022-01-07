; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_string.c__zip_string_equal.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_string.c__zip_string_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_string = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_string_equal(%struct.zip_string* %0, %struct.zip_string* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_string*, align 8
  %5 = alloca %struct.zip_string*, align 8
  store %struct.zip_string* %0, %struct.zip_string** %4, align 8
  store %struct.zip_string* %1, %struct.zip_string** %5, align 8
  %6 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %7 = icmp eq %struct.zip_string* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.zip_string*, %struct.zip_string** %5, align 8
  %10 = icmp eq %struct.zip_string* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %2
  %12 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %13 = load %struct.zip_string*, %struct.zip_string** %5, align 8
  %14 = icmp eq %struct.zip_string* %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %8
  %17 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %18 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.zip_string*, %struct.zip_string** %5, align 8
  %21 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %27 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.zip_string*, %struct.zip_string** %5, align 8
  %30 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %33 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @memcmp(i32 %28, i32 %31, i64 %34)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %24, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
