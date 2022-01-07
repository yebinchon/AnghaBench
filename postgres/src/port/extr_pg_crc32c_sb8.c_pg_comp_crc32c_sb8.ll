; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pg_crc32c_sb8.c_pg_comp_crc32c_sb8.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pg_crc32c_sb8.c_pg_comp_crc32c_sb8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pg_crc32c_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_comp_crc32c_sb8(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %30, %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = and i64 %25, 3
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 @CRC8(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %6, align 8
  br label %20

38:                                               ; preds = %28
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %44, %38
  %42 = load i64, i64* %6, align 8
  %43 = icmp uge i64 %42, 8
  br i1 %43, label %44, label %132

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load i32, i32* %4, align 4
  %49 = xor i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %8, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = ashr i32 %53, 24
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 16
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = ashr i32 %59, 8
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %13, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %14, align 8
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 24
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %15, align 8
  %67 = load i32, i32* %9, align 4
  %68 = ashr i32 %67, 16
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %16, align 8
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 8
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %17, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %18, align 8
  %75 = load i32**, i32*** @pg_crc32c_table, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32**, i32*** @pg_crc32c_table, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %80, %86
  %88 = load i32**, i32*** @pg_crc32c_table, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %87, %93
  %95 = load i32**, i32*** @pg_crc32c_table, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %94, %100
  %102 = load i32**, i32*** @pg_crc32c_table, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %101, %107
  %109 = load i32**, i32*** @pg_crc32c_table, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 5
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %16, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %108, %114
  %116 = load i32**, i32*** @pg_crc32c_table, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %17, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %115, %121
  %123 = load i32**, i32*** @pg_crc32c_table, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 7
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %18, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %122, %128
  store i32 %129, i32* %4, align 4
  %130 = load i64, i64* %6, align 8
  %131 = sub i64 %130, 8
  store i64 %131, i64* %6, align 8
  br label %41

132:                                              ; preds = %41
  %133 = load i32*, i32** %8, align 8
  %134 = bitcast i32* %133 to i8*
  store i8* %134, i8** %7, align 8
  br label %135

135:                                              ; preds = %138, %132
  %136 = load i64, i64* %6, align 8
  %137 = icmp ugt i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %7, align 8
  %141 = load i8, i8* %139, align 1
  %142 = zext i8 %141 to i32
  %143 = call i32 @CRC8(i32 %142)
  store i32 %143, i32* %4, align 4
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, -1
  store i64 %145, i64* %6, align 8
  br label %135

146:                                              ; preds = %135
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @CRC8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
