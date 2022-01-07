; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_load.c_read_irep.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_load.c_read_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rite_section_header = type { i32, i32 }

@MRB_DUMP_OK = common dso_local global i32 0, align 4
@RITE_SECTION_IREP_IDENT = common dso_local global i32 0, align 4
@RITE_SECTION_DEBUG_IDENT = common dso_local global i32 0, align 4
@RITE_SECTION_LV_IDENT = common dso_local global i32 0, align 4
@RITE_BINARY_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64, i32)* @read_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_irep(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rite_section_header*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i64 0, i64* %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  store i32* null, i32** %5, align 8
  br label %126

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @read_binary_header(i32* %23, i64 %24, i64* %14, i64* %13, i32* %9)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MRB_DUMP_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32* null, i32** %5, align 8
  br label %126

30:                                               ; preds = %22
  %31 = call i64 (...) @offset_crc_body()
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = sub i64 %36, %37
  %39 = call i64 @calc_crc_16_ccitt(i32* %35, i64 %38, i32 0)
  %40 = icmp ne i64 %32, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32* null, i32** %5, align 8
  br label %126

42:                                               ; preds = %30
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %7, align 8
  br label %45

45:                                               ; preds = %117, %42
  %46 = load i32*, i32** %7, align 8
  %47 = bitcast i32* %46 to %struct.rite_section_header*
  store %struct.rite_section_header* %47, %struct.rite_section_header** %12, align 8
  %48 = load %struct.rite_section_header*, %struct.rite_section_header** %12, align 8
  %49 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RITE_SECTION_IREP_IDENT, align 4
  %52 = call i64 @memcmp(i32 %50, i32 %51, i32 4)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32* @read_section_irep(i32* %55, i32* %56, i32 %57)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32* null, i32** %5, align 8
  br label %126

62:                                               ; preds = %54
  br label %109

63:                                               ; preds = %45
  %64 = load %struct.rite_section_header*, %struct.rite_section_header** %12, align 8
  %65 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RITE_SECTION_DEBUG_IDENT, align 4
  %68 = call i64 @memcmp(i32 %66, i32 %67, i32 4)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32* null, i32** %5, align 8
  br label %126

74:                                               ; preds = %70
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @read_section_debug(i32* %75, i32* %76, i32* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @MRB_DUMP_OK, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32* null, i32** %5, align 8
  br label %126

84:                                               ; preds = %74
  br label %108

85:                                               ; preds = %63
  %86 = load %struct.rite_section_header*, %struct.rite_section_header** %12, align 8
  %87 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RITE_SECTION_LV_IDENT, align 4
  %90 = call i64 @memcmp(i32 %88, i32 %89, i32 4)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load i32*, i32** %11, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  store i32* null, i32** %5, align 8
  br label %126

96:                                               ; preds = %92
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @read_section_lv(i32* %97, i32* %98, i32* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @MRB_DUMP_OK, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32* null, i32** %5, align 8
  br label %126

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %85
  br label %108

108:                                              ; preds = %107, %84
  br label %109

109:                                              ; preds = %108, %62
  %110 = load %struct.rite_section_header*, %struct.rite_section_header** %12, align 8
  %111 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bin_to_uint32(i32 %112)
  %114 = load i32*, i32** %7, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %7, align 8
  br label %117

117:                                              ; preds = %109
  %118 = load %struct.rite_section_header*, %struct.rite_section_header** %12, align 8
  %119 = getelementptr inbounds %struct.rite_section_header, %struct.rite_section_header* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RITE_BINARY_EOF, align 4
  %122 = call i64 @memcmp(i32 %120, i32 %121, i32 4)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %45, label %124

124:                                              ; preds = %117
  %125 = load i32*, i32** %11, align 8
  store i32* %125, i32** %5, align 8
  br label %126

126:                                              ; preds = %124, %105, %95, %83, %73, %61, %41, %29, %21
  %127 = load i32*, i32** %5, align 8
  ret i32* %127
}

declare dso_local i32 @read_binary_header(i32*, i64, i64*, i64*, i32*) #1

declare dso_local i64 @offset_crc_body(...) #1

declare dso_local i64 @calc_crc_16_ccitt(i32*, i64, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32* @read_section_irep(i32*, i32*, i32) #1

declare dso_local i32 @read_section_debug(i32*, i32*, i32*, i32) #1

declare dso_local i32 @read_section_lv(i32*, i32*, i32*, i32) #1

declare dso_local i32 @bin_to_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
