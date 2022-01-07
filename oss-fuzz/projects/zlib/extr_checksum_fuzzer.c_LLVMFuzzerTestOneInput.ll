; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_checksum_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_checksum_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLVMFuzzerTestOneInput.kMaxSize = internal global i64 1048576, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = call i64 @crc32(i64 0, i64* null, i64 0)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %8, align 8
  %20 = call i64 @adler32(i64 0, i64* null, i64 0)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @LLVMFuzzerTestOneInput.kMaxSize, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %2
  store i32 0, i32* %3, align 4
  br label %173

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @crc32_combine_gen(i64 %40)
  store i64 %41, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %70, %39
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %5, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @crc32_z(i64 %49, i64* %52, i64 %53)
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i64 @crc32_combine_op(i64 %55, i64 %56, i64 %57)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @crc32_z(i64 %59, i64* %62, i64 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %48
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %13, align 8
  br label %42

74:                                               ; preds = %42
  %75 = load i64, i64* %7, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %12, align 8
  %81 = urem i64 %79, %80
  %82 = call i64 @crc32_z(i64 %75, i64* %78, i64 %81)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @crc32(i64 %83, i64* %84, i64 %85)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @crc32_combine(i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i64 @crc32_combine(i64 %96, i64 %97, i64 %98)
  %100 = icmp eq i64 %95, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i64, i64* %5, align 8
  %104 = call i64 @crc32_combine_gen(i64 %103)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %14, align 8
  %108 = call i64 @crc32_combine_op(i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i64 @crc32_combine_op(i64 %109, i64 %110, i64 %111)
  %113 = icmp eq i64 %108, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %5, align 8
  %119 = call i64 @crc32_combine(i64 %116, i64 %117, i64 %118)
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i64 @crc32_combine_op(i64 %120, i64 %121, i64 %122)
  %124 = icmp eq i64 %119, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  store i64 0, i64* %13, align 8
  br label %127

127:                                              ; preds = %140, %74
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add i64 %128, %129
  %131 = load i64, i64* %5, align 8
  %132 = icmp ule i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i64, i64* %10, align 8
  %135 = load i64*, i64** %4, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %12, align 8
  %139 = call i64 @adler32_z(i64 %134, i64* %137, i64 %138)
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %133
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %13, align 8
  br label %127

144:                                              ; preds = %127
  %145 = load i64, i64* %10, align 8
  %146 = load i64*, i64** %4, align 8
  %147 = load i64, i64* %13, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %12, align 8
  %151 = urem i64 %149, %150
  %152 = call i64 @adler32_z(i64 %145, i64* %148, i64 %151)
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64*, i64** %4, align 8
  %155 = load i64, i64* %5, align 8
  %156 = call i64 @adler32(i64 %153, i64* %154, i64 %155)
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* %5, align 8
  %165 = call i64 @adler32_combine(i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %5, align 8
  %169 = call i64 @adler32_combine(i64 %166, i64 %167, i64 %168)
  %170 = icmp eq i64 %165, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %144, %32
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @crc32(i64, i64*, i64) #1

declare dso_local i64 @adler32(i64, i64*, i64) #1

declare dso_local i64 @crc32_combine_gen(i64) #1

declare dso_local i64 @crc32_z(i64, i64*, i64) #1

declare dso_local i64 @crc32_combine_op(i64, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crc32_combine(i64, i64, i64) #1

declare dso_local i64 @adler32_z(i64, i64*, i64) #1

declare dso_local i64 @adler32_combine(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
