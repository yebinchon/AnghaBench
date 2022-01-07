; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_CCITT_FlushData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_CCITT_FlushData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_CCITT_Data = type { i64, i32, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._HPDF_CCITT_Data*)* @HPDF_CCITT_FlushData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HPDF_CCITT_FlushData(%struct._HPDF_CCITT_Data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._HPDF_CCITT_Data*, align 8
  store %struct._HPDF_CCITT_Data* %0, %struct._HPDF_CCITT_Data** %3, align 8
  %4 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %3, align 8
  %5 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %3, align 8
  %10 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %3, align 8
  %13 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %3, align 8
  %16 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @HPDF_CCITT_AppendToStream(i32 %11, i32 %14, i64 %17)
  %19 = load i64, i64* @HPDF_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %33

22:                                               ; preds = %8
  %23 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %3, align 8
  %24 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %3, align 8
  %26 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %3, align 8
  %29 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %1
  %31 = load i64, i64* @HPDF_OK, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @HPDF_CCITT_AppendToStream(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
