; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_hydrogen.c_spiffs_hydro_write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_hydrogen.c_spiffs_hydro_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_UNDEFINED_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i8*, i64, i64)* @spiffs_hydro_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spiffs_hydro_write(i32* %0, %struct.TYPE_5__* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPIFFS_UNDEFINED_LEN, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %5
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @MIN(i64 %34, i64 %35)
  store i64 %36, i64* %13, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @spiffs_object_modify(%struct.TYPE_5__* %37, i64 %38, i32* %40, i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @SPIFFS_CHECK_RES(i64 %43)
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %12, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %29, %23, %5
  %59 = load i64, i64* %12, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i64, i64* %12, align 8
  %67 = call i64 @spiffs_object_append(%struct.TYPE_5__* %62, i64 %63, i32* %65, i64 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @SPIFFS_CHECK_RES(i64 %68)
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i64, i64* %10, align 8
  ret i64 %71
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @spiffs_object_modify(%struct.TYPE_5__*, i64, i32*, i64) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i64) #1

declare dso_local i64 @spiffs_object_append(%struct.TYPE_5__*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
