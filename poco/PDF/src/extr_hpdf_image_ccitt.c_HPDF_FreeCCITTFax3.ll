; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_FreeCCITTFax3.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_FreeCCITTFax3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_CCITT_Data = type { %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__* }

@HPDF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._HPDF_CCITT_Data*)* @HPDF_FreeCCITTFax3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HPDF_FreeCCITTFax3(%struct._HPDF_CCITT_Data* %0) #0 {
  %2 = alloca %struct._HPDF_CCITT_Data*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct._HPDF_CCITT_Data* %0, %struct._HPDF_CCITT_Data** %2, align 8
  %4 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %2, align 8
  %5 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %2, align 8
  %10 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_3__* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %22, align 8
  br label %23

23:                                               ; preds = %16, %8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @free(%struct.TYPE_3__* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %2, align 8
  %37 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @free(%struct.TYPE_3__* %38)
  %40 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %2, align 8
  %41 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %40, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %41, align 8
  br label %42

42:                                               ; preds = %35, %1
  %43 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %2, align 8
  %44 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %2, align 8
  %49 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_3__* %50)
  %52 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %2, align 8
  %53 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %52, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i32, i32* @HPDF_OK, align 4
  ret i32 %55
}

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
