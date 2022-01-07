; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Fax3SetupState.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Fax3SetupState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_CCITT_Data = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i8* }

@HPDF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._HPDF_CCITT_Data*, i32, i32, i32)* @HPDF_Fax3SetupState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HPDF_Fax3SetupState(%struct._HPDF_CCITT_Data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._HPDF_CCITT_Data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._HPDF_CCITT_Data* %0, %struct._HPDF_CCITT_Data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %6, align 8
  %16 = call %struct.TYPE_6__* @Fax3State(%struct._HPDF_CCITT_Data* %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %6, align 8
  %18 = call %struct.TYPE_5__* @EncoderState(%struct._HPDF_CCITT_Data* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @HPDF_UNUSED(i32 %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @TIFFroundup(i32 %29, i32 32)
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 3
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = mul nsw i32 2, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %74

48:                                               ; preds = %4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @malloc(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %74

72:                                               ; preds = %48
  %73 = load i32, i32* @HPDF_OK, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %71, %47
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_6__* @Fax3State(%struct._HPDF_CCITT_Data*) #1

declare dso_local %struct.TYPE_5__* @EncoderState(%struct._HPDF_CCITT_Data*) #1

declare dso_local i32 @HPDF_UNUSED(i32) #1

declare dso_local i32 @TIFFroundup(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
