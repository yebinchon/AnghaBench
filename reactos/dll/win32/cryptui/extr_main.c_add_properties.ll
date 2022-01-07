; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* (i32*, i64)*, i64, i32 }
%struct.detail_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@prop_id_map = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.detail_data*)* @add_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_properties(i32 %0, %struct.detail_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.detail_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.detail_data* %1, %struct.detail_data** %4, align 8
  %10 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %11 = getelementptr inbounds %struct.detail_data, %struct.detail_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %79, %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @prop_id_map, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @prop_id_map, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @CertGetCertificateContextProperty(i32 %21, i32 %26, i32* null, i64* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %20
  store i32* null, i32** %9, align 8
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i64, i64* %7, align 8
  %32 = call i32* @HeapAlloc(i32 %30, i32 0, i64 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @prop_id_map, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @CertGetCertificateContextProperty(i32 %36, i32 %41, i32* %42, i64* %7)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @prop_id_map, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** %8, align 8
  store i32* %53, i32** %9, align 8
  store i32* null, i32** %8, align 8
  br label %63

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @prop_id_map, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32* (i32*, i64)*, i32* (i32*, i64)** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32* %59(i32* %60, i64 %61)
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %54, %52
  br label %64

64:                                               ; preds = %63, %35
  %65 = call i32 (...) @GetProcessHeap()
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @HeapFree(i32 %65, i32 0, i32* %66)
  br label %68

68:                                               ; preds = %64, %29
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @prop_id_map, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @add_string_id_and_value_to_list(i32 %69, %struct.detail_data* %70, i32 %75, i32* %76, i32* null, i32* null)
  br label %78

78:                                               ; preds = %68, %20
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %15

82:                                               ; preds = %15
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @CertGetCertificateContextProperty(i32, i32, i32*, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @add_string_id_and_value_to_list(i32, %struct.detail_data*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
