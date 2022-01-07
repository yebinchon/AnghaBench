; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_read_range.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_read_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.attribute = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32 }

@DW_AT_ranges = common dso_local global i32 0, align 4
@section_ranges = common dso_local global i64 0, align 8
@DFI_DWARF = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"unsupported yet (base address selection)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no entry found\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"entry found, but low=high\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DW_AT_low_pc = common dso_local global i32 0, align 4
@DW_AT_high_pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i64*, i64*)* @dwarf2_read_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf2_read_range(%struct.TYPE_19__* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.attribute, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.attribute, align 8
  %15 = alloca %struct.attribute, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @DW_AT_ranges, align 4
  %19 = call i64 @dwarf2_find_attribute(%struct.TYPE_19__* %16, i32* %17, i32 %18, %struct.attribute* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %133

21:                                               ; preds = %4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i64, i64* @section_ranges, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = load i64, i64* @section_ranges, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i64, i64* @section_ranges, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %40, %47
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %53, align 8
  %55 = load i64, i64* @DFI_DWARF, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %54, i64 %55
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i64, i64* @ULONG_MAX, align 8
  %65 = load i64*, i64** %8, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64*, i64** %9, align 8
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %109, %21
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %67
  %79 = call i64 @dwarf2_parse_addr(%struct.TYPE_18__* %11)
  store i64 %79, i64* %12, align 8
  %80 = call i64 @dwarf2_parse_addr(%struct.TYPE_18__* %11)
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i64, i64* %13, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %110

87:                                               ; preds = %83, %78
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @ULONG_MAX, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i64, i64* %12, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* %12, align 8
  %100 = load i64*, i64** %8, align 8
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i64, i64* %13, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ugt i64 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i64, i64* %13, align 8
  %108 = load i64*, i64** %9, align 8
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %101
  br label %67

110:                                              ; preds = %86, %67
  %111 = load i64*, i64** %8, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ULONG_MAX, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115, %110
  %120 = call i32 @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %5, align 4
  br label %157

122:                                              ; preds = %115
  %123 = load i64*, i64** %8, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %5, align 4
  br label %157

131:                                              ; preds = %122
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %5, align 4
  br label %157

133:                                              ; preds = %4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @DW_AT_low_pc, align 4
  %137 = call i64 @dwarf2_find_attribute(%struct.TYPE_19__* %134, i32* %135, i32 %136, %struct.attribute* %14)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @DW_AT_high_pc, align 4
  %143 = call i64 @dwarf2_find_attribute(%struct.TYPE_19__* %140, i32* %141, i32 %142, %struct.attribute* %15)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %139, %133
  %146 = load i32, i32* @FALSE, align 4
  store i32 %146, i32* %5, align 4
  br label %157

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %8, align 8
  store i64 %150, i64* %151, align 8
  %152 = getelementptr inbounds %struct.attribute, %struct.attribute* %15, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %9, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %147, %145, %131, %128, %119
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @dwarf2_find_attribute(%struct.TYPE_19__*, i32*, i32, %struct.attribute*) #1

declare dso_local i64 @dwarf2_parse_addr(%struct.TYPE_18__*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
