; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_findfile.c_wceex_findnext.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_findfile.c_wceex_findnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._finddata_t = type { i64, i32, i32, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@FILE_ATTRIBUTE_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wceex_findnext(i64 %0, %struct._finddata_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct._finddata_t*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct._finddata_t* %1, %struct._finddata_t** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @FindNextFile(i32 %9, %struct.TYPE_3__* %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @GetLastError()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %17 [
    i32 129, label %15
    i32 131, label %15
    i32 128, label %15
    i32 130, label %16
  ]

15:                                               ; preds = %12, %12, %12
  br label %18

16:                                               ; preds = %12
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %16, %15
  store i32 -1, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FILE_ATTRIBUTE_NORMAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i64 [ 0, %24 ], [ %27, %25 ]
  %30 = load %struct._finddata_t*, %struct._finddata_t** %5, align 8
  %31 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %33 = call i8* @wceex_filetime_to_time(i32* %32)
  %34 = load %struct._finddata_t*, %struct._finddata_t** %5, align 8
  %35 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %37 = call i8* @wceex_filetime_to_time(i32* %36)
  %38 = load %struct._finddata_t*, %struct._finddata_t** %5, align 8
  %39 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %41 = call i8* @wceex_filetime_to_time(i32* %40)
  %42 = load %struct._finddata_t*, %struct._finddata_t** %5, align 8
  %43 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct._finddata_t*, %struct._finddata_t** %5, align 8
  %47 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct._finddata_t*, %struct._finddata_t** %5, align 8
  %49 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @wcslen(i32 %54)
  %56 = add nsw i64 %55, 1
  %57 = call i32 @wcstombs(i32 %50, i32 %52, i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %28, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @FindNextFile(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @wceex_filetime_to_time(i32*) #1

declare dso_local i32 @wcstombs(i32, i32, i64) #1

declare dso_local i64 @wcslen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
