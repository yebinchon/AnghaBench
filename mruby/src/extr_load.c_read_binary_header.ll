; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_load.c_read_binary_header.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_load.c_read_binary_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rite_binary_header = type { i32, i32, i32, i32 }

@MRB_DUMP_READ_FAULT = common dso_local global i32 0, align 4
@RITE_BINARY_IDENT = common dso_local global i32 0, align 4
@FLAG_BYTEORDER_NATIVE = common dso_local global i32 0, align 4
@FLAG_BYTEORDER_BIG = common dso_local global i32 0, align 4
@RITE_BINARY_IDENT_LIL = common dso_local global i32 0, align 4
@FLAG_BYTEORDER_LIL = common dso_local global i32 0, align 4
@MRB_DUMP_INVALID_FILE_HEADER = common dso_local global i32 0, align 4
@RITE_BINARY_FORMAT_VER = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*, i32*, i32*)* @read_binary_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_binary_header(i32* %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rite_binary_header*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.rite_binary_header*
  store %struct.rite_binary_header* %14, %struct.rite_binary_header** %12, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @MRB_DUMP_READ_FAULT, align 4
  store i32 %18, i32* %6, align 4
  br label %96

19:                                               ; preds = %5
  %20 = load %struct.rite_binary_header*, %struct.rite_binary_header** %12, align 8
  %21 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RITE_BINARY_IDENT, align 4
  %24 = call i64 @memcmp(i32 %22, i32 %23, i32 4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = call i64 (...) @bigendian_p()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @FLAG_BYTEORDER_NATIVE, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @FLAG_BYTEORDER_BIG, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %64

40:                                               ; preds = %19
  %41 = load %struct.rite_binary_header*, %struct.rite_binary_header** %12, align 8
  %42 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RITE_BINARY_IDENT_LIL, align 4
  %45 = call i64 @memcmp(i32 %43, i32 %44, i32 4)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = call i64 (...) @bigendian_p()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @FLAG_BYTEORDER_LIL, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @FLAG_BYTEORDER_NATIVE, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %63

61:                                               ; preds = %40
  %62 = load i32, i32* @MRB_DUMP_INVALID_FILE_HEADER, align 4
  store i32 %62, i32* %6, align 4
  br label %96

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.rite_binary_header*, %struct.rite_binary_header** %12, align 8
  %66 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RITE_BINARY_FORMAT_VER, align 4
  %69 = call i64 @memcmp(i32 %67, i32 %68, i32 4)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @MRB_DUMP_INVALID_FILE_HEADER, align 4
  store i32 %72, i32* %6, align 4
  br label %96

73:                                               ; preds = %64
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.rite_binary_header*, %struct.rite_binary_header** %12, align 8
  %78 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bin_to_uint16(i32 %79)
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.rite_binary_header*, %struct.rite_binary_header** %12, align 8
  %84 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @bin_to_uint32(i32 %85)
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @MRB_DUMP_READ_FAULT, align 4
  store i32 %93, i32* %6, align 4
  br label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @MRB_DUMP_OK, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %92, %71, %61, %17
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @bigendian_p(...) #1

declare dso_local i32 @bin_to_uint16(i32) #1

declare dso_local i64 @bin_to_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
