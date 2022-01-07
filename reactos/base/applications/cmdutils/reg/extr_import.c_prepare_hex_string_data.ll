; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_prepare_hex_string_data.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_prepare_hex_string_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i64, i32, i64*, i64 }

@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@REG_MULTI_SZ = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parser*)* @prepare_hex_string_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_hex_string_data(%struct.parser* %0) #0 {
  %2 = alloca %struct.parser*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.parser* %0, %struct.parser** %2, align 8
  %6 = load %struct.parser*, %struct.parser** %2, align 8
  %7 = getelementptr inbounds %struct.parser, %struct.parser* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_EXPAND_SZ, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.parser*, %struct.parser** %2, align 8
  %13 = getelementptr inbounds %struct.parser, %struct.parser* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_MULTI_SZ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.parser*, %struct.parser** %2, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_SZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %104

23:                                               ; preds = %17, %11, %1
  %24 = load %struct.parser*, %struct.parser** %2, align 8
  %25 = getelementptr inbounds %struct.parser, %struct.parser* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = load %struct.parser*, %struct.parser** %2, align 8
  %30 = getelementptr inbounds %struct.parser, %struct.parser* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %3, align 8
  %32 = load %struct.parser*, %struct.parser** %2, align 8
  %33 = getelementptr inbounds %struct.parser, %struct.parser* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i64*, i64** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %28
  %46 = load i64*, i64** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load %struct.parser*, %struct.parser** %2, align 8
  %51 = getelementptr inbounds %struct.parser, %struct.parser* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  br label %56

56:                                               ; preds = %45, %28
  br label %103

57:                                               ; preds = %23
  %58 = load %struct.parser*, %struct.parser** %2, align 8
  %59 = getelementptr inbounds %struct.parser, %struct.parser* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  store i64* %60, i64** %5, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load %struct.parser*, %struct.parser** %2, align 8
  %63 = getelementptr inbounds %struct.parser, %struct.parser* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %61, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %57
  %71 = load i64*, i64** %5, align 8
  %72 = load %struct.parser*, %struct.parser** %2, align 8
  %73 = getelementptr inbounds %struct.parser, %struct.parser* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load %struct.parser*, %struct.parser** %2, align 8
  %78 = getelementptr inbounds %struct.parser, %struct.parser* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %70, %57
  %82 = load %struct.parser*, %struct.parser** %2, align 8
  %83 = getelementptr inbounds %struct.parser, %struct.parser* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.parser*, %struct.parser** %2, align 8
  %86 = getelementptr inbounds %struct.parser, %struct.parser* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load %struct.parser*, %struct.parser** %2, align 8
  %90 = getelementptr inbounds %struct.parser, %struct.parser* %89, i32 0, i32 1
  %91 = bitcast i32* %90 to i64*
  %92 = call i64* @GetWideStringN(i64* %84, i64 %88, i64* %91)
  %93 = load %struct.parser*, %struct.parser** %2, align 8
  %94 = getelementptr inbounds %struct.parser, %struct.parser* %93, i32 0, i32 2
  store i64* %92, i64** %94, align 8
  %95 = load %struct.parser*, %struct.parser** %2, align 8
  %96 = getelementptr inbounds %struct.parser, %struct.parser* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = call i32 @heap_free(i64* %101)
  br label %103

103:                                              ; preds = %81, %56
  br label %104

104:                                              ; preds = %103, %17
  ret void
}

declare dso_local i64* @GetWideStringN(i64*, i64, i64*) #1

declare dso_local i32 @heap_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
