; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_dump.c_write_rite_binary_header.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_dump.c_write_rite_binary_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rite_binary_header = type { i32*, i32, i32, i32, i32, i32 }

@RITE_BINARY_IDENT = common dso_local global i32 0, align 4
@RITE_BINARY_IDENT_LIL = common dso_local global i32 0, align 4
@RITE_BINARY_FORMAT_VER = common dso_local global i32 0, align 4
@RITE_COMPILER_NAME = common dso_local global i32 0, align 4
@RITE_COMPILER_VERSION = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32)* @write_rite_binary_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_rite_binary_header(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rite_binary_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to %struct.rite_binary_header*
  store %struct.rite_binary_header* %13, %struct.rite_binary_header** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 128
  switch i32 %15, label %35 [
    i32 130, label %17
    i32 129, label %24
    i32 128, label %30
  ]

16:                                               ; preds = %33
  br label %17

17:                                               ; preds = %4, %16
  %18 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %19 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RITE_BINARY_IDENT, align 4
  %22 = call i32 @memcpy(i32 %20, i32 %21, i32 4)
  br label %35

23:                                               ; preds = %34
  br label %24

24:                                               ; preds = %4, %23
  %25 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %26 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RITE_BINARY_IDENT_LIL, align 4
  %29 = call i32 @memcpy(i32 %27, i32 %28, i32 4)
  br label %35

30:                                               ; preds = %4
  %31 = call i32 (...) @bigendian_p()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %16

34:                                               ; preds = %30
  br label %23

35:                                               ; preds = %4, %24, %17
  %36 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %37 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RITE_BINARY_FORMAT_VER, align 4
  %40 = call i32 @memcpy(i32 %38, i32 %39, i32 4)
  %41 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %42 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RITE_COMPILER_NAME, align 4
  %45 = call i32 @memcpy(i32 %43, i32 %44, i32 4)
  %46 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %47 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RITE_COMPILER_VERSION, align 4
  %50 = call i32 @memcpy(i32 %48, i32 %49, i32 4)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @UINT32_MAX, align 8
  %53 = icmp ule i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @mrb_assert(i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %59 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @uint32_to_bin(i32 %57, i32 %60)
  %62 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %63 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32*, i32** %7, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = add i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %77, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @calc_crc_16_ccitt(i32* %76, i32 %81, i32 0)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.rite_binary_header*, %struct.rite_binary_header** %9, align 8
  %85 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @uint16_to_bin(i32 %83, i32* %86)
  %88 = load i32, i32* @MRB_DUMP_OK, align 4
  ret i32 %88
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bigendian_p(...) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @uint32_to_bin(i32, i32) #1

declare dso_local i32 @calc_crc_16_ccitt(i32*, i32, i32) #1

declare dso_local i32 @uint16_to_bin(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
