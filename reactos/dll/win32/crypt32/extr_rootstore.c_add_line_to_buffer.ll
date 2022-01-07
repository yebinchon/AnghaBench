; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_add_line_to_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_add_line_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DynamicBuffer = type { i32, i32, i64* }

@INITIAL_CERT_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.DynamicBuffer*, i8*)* @add_line_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_line_to_buffer(%struct.DynamicBuffer* %0, i8* %1) #0 {
  %3 = alloca %struct.DynamicBuffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.DynamicBuffer* %0, %struct.DynamicBuffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %8 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %9, %11
  %13 = add nsw i32 %12, 1
  %14 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %15 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %2
  %19 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %20 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @INITIAL_CERT_BUFFER, align 4
  %25 = call i64* @CryptMemAlloc(i32 %24)
  %26 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %27 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %26, i32 0, i32 2
  store i64* %25, i64** %27, align 8
  %28 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %29 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %34 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @INITIAL_CERT_BUFFER, align 4
  %38 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %39 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %23
  br label %70

41:                                               ; preds = %18
  %42 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %43 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 2
  %46 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %47 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %48, %50
  %52 = add nsw i32 %51, 1
  %53 = call i32 @max(i32 %45, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %55 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64* @CryptMemRealloc(i64* %56, i32 %57)
  %59 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %60 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %59, i32 0, i32 2
  store i64* %58, i64** %60, align 8
  %61 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %62 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %41
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %68 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %41
  br label %70

70:                                               ; preds = %69, %40
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %73 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %78 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = bitcast i64* %79 to i8*
  %81 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %82 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = bitcast i64* %83 to i8*
  %85 = call i32 @strlen(i8* %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %80, i64 %86
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strcpy(i8* %87, i8* %88)
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load %struct.DynamicBuffer*, %struct.DynamicBuffer** %3, align 8
  %93 = getelementptr inbounds %struct.DynamicBuffer, %struct.DynamicBuffer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %5, align 4
  br label %99

97:                                               ; preds = %71
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %76
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64* @CryptMemAlloc(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64* @CryptMemRealloc(i64*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
