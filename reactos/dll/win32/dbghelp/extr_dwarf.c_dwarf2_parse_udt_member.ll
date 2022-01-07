; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_udt_member.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_parse_udt_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.symt_udt = type { i32 }
%struct.symt = type { i32 }
%struct.attribute = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.location = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s, for %s\0A\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_data_member_location = common dso_local global i32 0, align 4
@loc_absolute = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Found register, while not expecting it\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"found member_location at %s -> %lu\0A\00", align 1
@DW_AT_bit_size = common dso_local global i32 0, align 4
@DW_AT_bit_offset = common dso_local global i32 0, align 4
@DW_AT_byte_size = common dso_local global i32 0, align 4
@TI_GET_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported children\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, %struct.symt_udt*)* @dwarf2_parse_udt_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_parse_udt_member(%struct.TYPE_10__* %0, i32* %1, %struct.symt_udt* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symt_udt*, align 8
  %7 = alloca %struct.symt*, align 8
  %8 = alloca %struct.attribute, align 8
  %9 = alloca %struct.attribute, align 8
  %10 = alloca %struct.attribute, align 8
  %11 = alloca %struct.location, align 8
  %12 = alloca %struct.attribute, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.symt_udt* %2, %struct.symt_udt** %6, align 8
  %14 = load %struct.symt_udt*, %struct.symt_udt** %6, align 8
  %15 = call i32 @assert(%struct.symt_udt* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @dwarf2_debug_ctx(%struct.TYPE_10__* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @dwarf2_debug_di(i32* %18)
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @DW_AT_name, align 4
  %24 = call i64 @dwarf2_find_attribute(%struct.TYPE_10__* %21, i32* %22, i32 %23, %struct.attribute* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.symt* @dwarf2_lookup_type(%struct.TYPE_10__* %30, i32* %31)
  store %struct.symt* %32, %struct.symt** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @DW_AT_data_member_location, align 4
  %36 = call i64 @dwarf2_compute_location_attr(%struct.TYPE_10__* %33, i32* %34, i32 %35, %struct.location* %11, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.location, %struct.location* %11, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @loc_absolute, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.location, %struct.location* %11, i32 0, i32 1
  store i32 0, i32* %45, align 8
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = call i32 @dwarf2_debug_ctx(%struct.TYPE_10__* %47)
  %49 = getelementptr inbounds %struct.location, %struct.location* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %46, %43
  br label %55

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.location, %struct.location* %11, i32 0, i32 1
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @DW_AT_bit_size, align 4
  %59 = call i64 @dwarf2_find_attribute(%struct.TYPE_10__* %56, i32* %57, i32 %58, %struct.attribute* %9)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @DW_AT_bit_offset, align 4
  %68 = call i64 @dwarf2_find_attribute(%struct.TYPE_10__* %65, i32* %66, i32 %67, %struct.attribute* %10)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @DW_AT_byte_size, align 4
  %74 = call i64 @dwarf2_find_attribute(%struct.TYPE_10__* %71, i32* %72, i32 %73, %struct.attribute* %12)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.symt*, %struct.symt** %7, align 8
  %81 = load i32, i32* @TI_GET_LENGTH, align 4
  %82 = call i64 @symt_get_info(i32 %79, %struct.symt* %80, i32 %81, i64* %13)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i64, i64* %13, align 8
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i64 [ %85, %84 ], [ 0, %86 ]
  %89 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %70
  %92 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = mul i64 %94, 8
  %96 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %95, %98
  %100 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %99, %102
  %104 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %109

106:                                              ; preds = %64
  %107 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %91
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.symt_udt*, %struct.symt_udt** %6, align 8
  %114 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.symt*, %struct.symt** %7, align 8
  %118 = getelementptr inbounds %struct.location, %struct.location* %11, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.attribute, %struct.attribute* %10, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %121, %124
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @symt_add_udt_element(i32 %112, %struct.symt_udt* %113, i32* %116, %struct.symt* %117, i32 %126, i32 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = call i64 @dwarf2_get_di_children(%struct.TYPE_10__* %132, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %109
  %137 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %109
  ret void
}

declare dso_local i32 @assert(%struct.symt_udt*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @dwarf2_debug_ctx(%struct.TYPE_10__*) #1

declare dso_local i32 @dwarf2_debug_di(i32*) #1

declare dso_local i64 @dwarf2_find_attribute(%struct.TYPE_10__*, i32*, i32, %struct.attribute*) #1

declare dso_local %struct.symt* @dwarf2_lookup_type(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @dwarf2_compute_location_attr(%struct.TYPE_10__*, i32*, i32, %struct.location*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @symt_get_info(i32, %struct.symt*, i32, i64*) #1

declare dso_local i32 @symt_add_udt_element(i32, %struct.symt_udt*, i32*, %struct.symt*, i32, i32) #1

declare dso_local i64 @dwarf2_get_di_children(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
