; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_deflate_value.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_deflate_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_value = type { i64, i32* }

@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_value*, %struct.lwan_value*)* @deflate_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deflate_value(%struct.lwan_value* %0, %struct.lwan_value* %1) #0 {
  %3 = alloca %struct.lwan_value*, align 8
  %4 = alloca %struct.lwan_value*, align 8
  %5 = alloca i64, align 8
  store %struct.lwan_value* %0, %struct.lwan_value** %3, align 8
  store %struct.lwan_value* %1, %struct.lwan_value** %4, align 8
  %6 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %7 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @compressBound(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %12 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32* @malloc(i64 %13)
  %15 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %16 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = icmp ne i32* %14, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @UNLIKELY(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %25 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %28 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %27, i32 0, i32 0
  %29 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %30 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %33 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @compress(i32* %26, i64* %28, i32* %31, i64 %34)
  %36 = load i64, i64* @Z_OK, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @UNLIKELY(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %55

42:                                               ; preds = %23
  %43 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %44 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %47 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @is_compression_worthy(i64 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %53 = load i64, i64* %5, align 8
  call void @realloc_if_needed(%struct.lwan_value* %52, i64 %53)
  br label %65

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %57 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @free(i32* %58)
  %60 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %61 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %22
  %63 = load %struct.lwan_value*, %struct.lwan_value** %4, align 8
  %64 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %51
  ret void
}

declare dso_local i64 @compressBound(i64) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @compress(i32*, i64*, i32*, i64) #1

declare dso_local i64 @is_compression_worthy(i64, i64) #1

declare dso_local void @realloc_if_needed(%struct.lwan_value*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
