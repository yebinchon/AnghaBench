; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_decrypt.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pkware.c_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trad_pkware = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trad_pkware*, i32*, i32*, i64, i32)* @decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decrypt(%struct.trad_pkware* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.trad_pkware*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.trad_pkware* %0, %struct.trad_pkware** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %107, %5
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %110

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %12, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %18
  %26 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %27 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 2
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = xor i32 %33, 1
  %35 = mul nsw i32 %32, %34
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = xor i32 %38, %37
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %25, %18
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %50 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = xor i64 %54, 4294967295
  %56 = trunc i64 %55 to i32
  %57 = call i64 @crc32(i32 %56, i32* %13, i32 1)
  %58 = trunc i64 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = xor i64 %59, 4294967295
  %61 = trunc i64 %60 to i32
  %62 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %63 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %67 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %72 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  %77 = add nsw i32 %70, %76
  %78 = mul nsw i32 %77, 134775813
  %79 = add nsw i32 %78, 1
  %80 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %81 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %85 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 24
  store i32 %89, i32* %13, align 4
  %90 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %91 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = xor i64 %95, 4294967295
  %97 = trunc i64 %96 to i32
  %98 = call i64 @crc32(i32 %97, i32* %13, i32 1)
  %99 = trunc i64 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = xor i64 %100, 4294967295
  %102 = trunc i64 %101 to i32
  %103 = load %struct.trad_pkware*, %struct.trad_pkware** %6, align 8
  %104 = getelementptr inbounds %struct.trad_pkware, %struct.trad_pkware* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %48
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %12, align 8
  br label %14

110:                                              ; preds = %14
  ret void
}

declare dso_local i64 @crc32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
