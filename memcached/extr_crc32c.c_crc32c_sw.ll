; ModuleID = '/home/carl/AnghaBench/memcached/extr_crc32c.c_crc32c_sw.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crc32c.c_crc32c_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32c_once_sw = common dso_local global i32 0, align 4
@crc32c_init_sw = common dso_local global i32 0, align 4
@crc32c_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @crc32c_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32c_sw(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* @crc32c_init_sw, align 4
  %11 = call i32 @pthread_once(i32* @crc32c_once_sw, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %12, -1
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %24, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %43

24:                                               ; preds = %22
  %25 = load i32**, i32*** @crc32c_table, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %28, %32
  %34 = and i32 %33, 255
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 8
  %40 = xor i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %6, align 8
  br label %14

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %47, %43
  %45 = load i64, i64* %6, align 8
  %46 = icmp uge i64 %45, 8
  br i1 %46, label %47, label %134

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32**, i32*** @crc32c_table, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 7
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 255
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32**, i32*** @crc32c_table, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %60, %69
  %71 = load i32**, i32*** @crc32c_table, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %70, %79
  %81 = load i32**, i32*** @crc32c_table, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = ashr i32 %84, 24
  %86 = and i32 %85, 255
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %80, %89
  %91 = load i32**, i32*** @crc32c_table, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 32
  %96 = and i32 %95, 255
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = xor i32 %90, %99
  %101 = load i32**, i32*** @crc32c_table, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = ashr i32 %104, 40
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %100, %109
  %111 = load i32**, i32*** @crc32c_table, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 48
  %116 = and i32 %115, 255
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %110, %119
  %121 = load i32**, i32*** @crc32c_table, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = ashr i32 %124, 56
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %120, %128
  store i32 %129, i32* %8, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 8
  store i8* %131, i8** %7, align 8
  %132 = load i64, i64* %6, align 8
  %133 = sub i64 %132, 8
  store i64 %133, i64* %6, align 8
  br label %44

134:                                              ; preds = %44
  br label %135

135:                                              ; preds = %138, %134
  %136 = load i64, i64* %6, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load i32**, i32*** @crc32c_table, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %7, align 8
  %145 = load i8, i8* %143, align 1
  %146 = zext i8 %145 to i32
  %147 = xor i32 %142, %146
  %148 = and i32 %147, 255
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %141, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 8
  %154 = xor i32 %151, %153
  store i32 %154, i32* %8, align 4
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %6, align 8
  br label %135

157:                                              ; preds = %135
  %158 = load i32, i32* %8, align 4
  %159 = xor i32 %158, -1
  ret i32 %159
}

declare dso_local i32 @pthread_once(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
