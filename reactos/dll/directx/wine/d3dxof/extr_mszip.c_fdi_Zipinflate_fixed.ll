; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_mszip.c_fdi_Zipinflate_fixed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_mszip.c_fdi_Zipinflate_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Ziphuft = type { i32 }

@ll = common dso_local global i32 0, align 4
@Zipcplens = common dso_local global i32 0, align 4
@Zipcplext = common dso_local global i32 0, align 4
@Zipcpdist = common dso_local global i32 0, align 4
@Zipcpdext = common dso_local global i32 0, align 4
@hfdi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fdi_Zipinflate_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdi_Zipinflate_fixed(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Ziphuft*, align 8
  %5 = alloca %struct.Ziphuft*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @ll, align 4
  %11 = call i32* @ZIP(i32 %10)
  store i32* %11, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %20, %1
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 144
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 8, i32* %19, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %12

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 9, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %24

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %44, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 280
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 7, i32* %43, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %36

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 288
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 8, i32* %55, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %48

59:                                               ; preds = %48
  store i32 7, i32* %6, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @Zipcplens, align 4
  %62 = load i32, i32* @Zipcplext, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @fdi_Ziphuft_build(i32* %60, i32 288, i32 257, i32 %61, i32 %62, %struct.Ziphuft** %4, i32* %6, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %109

68:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %77, %68
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 30
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 5, i32* %76, align 4
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %69

80:                                               ; preds = %69
  store i32 5, i32* %7, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @Zipcpdist, align 4
  %83 = load i32, i32* @Zipcpdext, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @fdi_Ziphuft_build(i32* %81, i32 30, i32 0, i32 %82, i32 %83, %struct.Ziphuft** %5, i32* %7, i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @hfdi, align 4
  %89 = call i32 @CAB(i32 %88)
  %90 = load %struct.Ziphuft*, %struct.Ziphuft** %4, align 8
  %91 = call i32 @fdi_Ziphuft_free(i32 %89, %struct.Ziphuft* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %109

93:                                               ; preds = %80
  %94 = load %struct.Ziphuft*, %struct.Ziphuft** %4, align 8
  %95 = load %struct.Ziphuft*, %struct.Ziphuft** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @fdi_Zipinflate_codes(%struct.Ziphuft* %94, %struct.Ziphuft* %95, i32 %96, i32 %97, i32* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @hfdi, align 4
  %101 = call i32 @CAB(i32 %100)
  %102 = load %struct.Ziphuft*, %struct.Ziphuft** %5, align 8
  %103 = call i32 @fdi_Ziphuft_free(i32 %101, %struct.Ziphuft* %102)
  %104 = load i32, i32* @hfdi, align 4
  %105 = call i32 @CAB(i32 %104)
  %106 = load %struct.Ziphuft*, %struct.Ziphuft** %4, align 8
  %107 = call i32 @fdi_Ziphuft_free(i32 %105, %struct.Ziphuft* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %93, %87, %66
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32* @ZIP(i32) #1

declare dso_local i32 @fdi_Ziphuft_build(i32*, i32, i32, i32, i32, %struct.Ziphuft**, i32*, i32*) #1

declare dso_local i32 @fdi_Ziphuft_free(i32, %struct.Ziphuft*) #1

declare dso_local i32 @CAB(i32) #1

declare dso_local i32 @fdi_Zipinflate_codes(%struct.Ziphuft*, %struct.Ziphuft*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
