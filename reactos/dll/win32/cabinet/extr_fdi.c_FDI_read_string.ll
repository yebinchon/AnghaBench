; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_FDI_read_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fdi.c_FDI_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i64, i32)*, i32 (i32*)*, i32 (i32, i32*, i64)*, i32* (i64)* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"(fdi == %p, hf == %ld, cabsize == %ld)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"cabinet is truncated\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"out of memory!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32, i64)* @FDI_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FDI_read_string(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 256, i64* %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @FDI_getoffset(%struct.TYPE_5__* %14, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %11, align 8
  store i32* null, i32** %13, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %21, i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %93, %3
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32* (i64)*, i32* (i64)** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32* %34(i64 %35)
  store i32* %36, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %97

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 %42(i32 %43, i32* %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %97

49:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %11, align 8
  br label %68

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %50

68:                                               ; preds = %62, %50
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %97

77:                                               ; preds = %71
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i32, i32* @SEEK_SET, align 4
  %84 = call i32 %80(i32 %81, i64 %82, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32 (i32*)*, i32 (i32*)** %86, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 %87(i32* %88)
  store i32* null, i32** %13, align 8
  %90 = load i64, i64* %8, align 8
  %91 = mul i64 %90, 2
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %77, %68
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %25, label %97

97:                                               ; preds = %93, %75, %48, %38
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32 (i32*)*, i32 (i32*)** %105, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 %106(i32* %107)
  br label %111

109:                                              ; preds = %100
  %110 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %103
  store i8* null, i8** %4, align 8
  br label %127

112:                                              ; preds = %97
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i64, i64* %9, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = call i64 @strlen(i8* %119)
  %121 = add i64 %117, %120
  %122 = add i64 %121, 1
  %123 = load i32, i32* @SEEK_SET, align 4
  %124 = call i32 %115(i32 %116, i64 %122, i32 %123)
  %125 = load i32*, i32** %13, align 8
  %126 = bitcast i32* %125 to i8*
  store i8* %126, i8** %4, align 8
  br label %127

127:                                              ; preds = %112, %111
  %128 = load i8*, i8** %4, align 8
  ret i8* %128
}

declare dso_local i64 @FDI_getoffset(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
