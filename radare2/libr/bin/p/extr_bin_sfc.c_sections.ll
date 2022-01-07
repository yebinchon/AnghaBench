; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_sfc.c_sections.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_sfc.c_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SFC_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to read SFC/SNES header\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Cannot determine if this is a LoROM or HiROM file\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ROM\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ROM_MIRROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sections(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 32704, %14
  %16 = bitcast %struct.TYPE_6__* %8 to i32*
  %17 = load i32, i32* @SFC_HDR_SIZE, align 4
  %18 = call i32 @r_buf_read_at(i32 %13, i32 %15, i32* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SFC_HDR_SIZE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %138

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %28, -1
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31, %24
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 65472, %40
  %42 = bitcast %struct.TYPE_6__* %8 to i32*
  %43 = load i32, i32* @SFC_HDR_SIZE, align 4
  %44 = call i32 @r_buf_read_at(i32 %39, i32 %41, i32* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SFC_HDR_SIZE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %138

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = xor i64 %54, -1
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %50
  %63 = call i32 @eprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %138

64:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %31
  %66 = call i32* (...) @r_list_new()
  store i32* %66, i32** %4, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32* null, i32** %2, align 8
  br label %138

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %107, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sdiv i32 %79, 32768
  %81 = icmp slt i32 %74, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %73
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %86, 32768
  %88 = add nsw i32 %85, %87
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %89, 32768
  %91 = add nsw i32 4194304, %90
  %92 = call i32 @addrom(i32* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %88, i32 %91, i32 32768)
  %93 = load i32, i32* %7, align 4
  %94 = srem i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %82
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %100, 32768
  %102 = add nsw i32 %99, %101
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 %103, 32768
  %105 = call i32 @addrom(i32* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %102, i32 %104, i32 32768)
  br label %106

106:                                              ; preds = %96, %82
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %73

110:                                              ; preds = %73
  br label %136

111:                                              ; preds = %69
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %132, %111
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sdiv i32 %118, 32768
  %120 = icmp slt i32 %113, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %112
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %7, align 4
  %126 = mul nsw i32 %125, 32768
  %127 = add nsw i32 %124, %126
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 %128, 65536
  %130 = add nsw i32 32768, %129
  %131 = call i32 @addrom(i32* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %127, i32 %130, i32 32768)
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %112

135:                                              ; preds = %112
  br label %136

136:                                              ; preds = %135, %110
  %137 = load i32*, i32** %4, align 8
  store i32* %137, i32** %2, align 8
  br label %138

138:                                              ; preds = %136, %68, %62, %48, %22
  %139 = load i32*, i32** %2, align 8
  ret i32* %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #2

declare dso_local i32 @eprintf(i8*) #2

declare dso_local i32* @r_list_new(...) #2

declare dso_local i32 @addrom(i32*, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
