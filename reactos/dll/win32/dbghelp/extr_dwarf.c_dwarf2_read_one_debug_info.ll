; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_read_one_debug_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dwarf.c_dwarf2_read_one_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64*, i32, %struct.TYPE_25__*, i32*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_27__* }
%struct.attribute = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"found entry_code %lu at 0x%lx\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot find abbrev entry for %lu at 0x%lx\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DW_AT_sibling = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"setting cursor for %s to next sibling <0x%lx>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_25__**)* @dwarf2_read_one_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf2_read_one_debug_info(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_25__* %2, %struct.TYPE_25__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__**, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__**, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.attribute, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %9, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %21, %30
  store i64 %31, i64* %12, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = call i64 @dwarf2_leb128_as_unsigned(%struct.TYPE_23__* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %4
  %40 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %40, align 8
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %5, align 4
  br label %212

42:                                               ; preds = %4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 4
  %45 = load i64, i64* %11, align 8
  %46 = call %struct.TYPE_26__* @dwarf2_abbrev_table_find_entry(i32* %44, i64 %45)
  store %struct.TYPE_26__* %46, %struct.TYPE_26__** %10, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %48 = icmp ne %struct.TYPE_26__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %5, align 4
  br label %212

54:                                               ; preds = %42
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 3
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = call %struct.TYPE_25__* @sparse_array_add(i32* %56, i64 %57, i32* %59)
  store %struct.TYPE_25__* %60, %struct.TYPE_25__** %13, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %62 = icmp ne %struct.TYPE_25__* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %5, align 4
  br label %212

65:                                               ; preds = %54
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 4
  store %struct.TYPE_26__* %66, %struct.TYPE_26__** %68, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %73, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %65
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call i64* @pool_alloc(i32* %80, i32 %86)
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  store i64* %87, i64** %89, align 8
  store i32 0, i32* %17, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %91, align 8
  store %struct.TYPE_27__* %92, %struct.TYPE_27__** %16, align 8
  br label %93

93:                                               ; preds = %109, %78
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %95 = icmp ne %struct.TYPE_27__* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %99, i64* %105, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %108 = call i32 @dwarf2_swallow_attribute(%struct.TYPE_23__* %106, %struct.TYPE_27__* %107)
  br label %109

109:                                              ; preds = %96
  %110 = load i32, i32* %17, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %17, align 4
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  store %struct.TYPE_27__* %114, %struct.TYPE_27__** %16, align 8
  br label %93

115:                                              ; preds = %93
  br label %119

116:                                              ; preds = %65
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  store i64* null, i64** %118, align 8
  br label %119

119:                                              ; preds = %116, %115
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %119
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  %127 = call i32 @vector_init(i32* %126, i32 8, i32 16)
  br label %128

128:                                              ; preds = %158, %124
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ult i64 %131, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %128
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %140 = call i32 @dwarf2_read_one_debug_info(%struct.TYPE_24__* %137, %struct.TYPE_23__* %138, %struct.TYPE_25__* %139, %struct.TYPE_25__** %14)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %5, align 4
  br label %212

144:                                              ; preds = %136
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %146 = icmp ne %struct.TYPE_25__* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %161

148:                                              ; preds = %144
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 2
  %153 = call %struct.TYPE_25__** @vector_add(i32* %150, i32* %152)
  store %struct.TYPE_25__** %153, %struct.TYPE_25__*** %15, align 8
  %154 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %155 = icmp ne %struct.TYPE_25__** %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %5, align 4
  br label %212

158:                                              ; preds = %148
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %160 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  store %struct.TYPE_25__* %159, %struct.TYPE_25__** %160, align 8
  br label %128

161:                                              ; preds = %147, %128
  br label %162

162:                                              ; preds = %161, %119
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %165 = load i32, i32* @DW_AT_sibling, align 4
  %166 = call i64 @dwarf2_find_attribute(%struct.TYPE_24__* %163, %struct.TYPE_25__* %164, i32 %165, %struct.attribute* %18)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %208

168:                                              ; preds = %162
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.attribute, %struct.attribute* %18, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %180, %183
  %185 = icmp ne i64 %171, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %168
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %188 = call i64 @dwarf2_debug_traverse_ctx(%struct.TYPE_23__* %187)
  %189 = getelementptr inbounds %struct.attribute, %struct.attribute* %18, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %188, i64 %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.attribute, %struct.attribute* %18, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %201, %204
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %186, %168, %162
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %210 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* %209, %struct.TYPE_25__** %210, align 8
  %211 = load i32, i32* @TRUE, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %208, %156, %142, %63, %49, %39
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i64 @dwarf2_leb128_as_unsigned(%struct.TYPE_23__*) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local %struct.TYPE_26__* @dwarf2_abbrev_table_find_entry(i32*, i64) #1

declare dso_local i32 @WARN(i8*, i64, i64) #1

declare dso_local %struct.TYPE_25__* @sparse_array_add(i32*, i64, i32*) #1

declare dso_local i64* @pool_alloc(i32*, i32) #1

declare dso_local i32 @dwarf2_swallow_attribute(%struct.TYPE_23__*, %struct.TYPE_27__*) #1

declare dso_local i32 @vector_init(i32*, i32, i32) #1

declare dso_local %struct.TYPE_25__** @vector_add(i32*, i32*) #1

declare dso_local i64 @dwarf2_find_attribute(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, %struct.attribute*) #1

declare dso_local i64 @dwarf2_debug_traverse_ctx(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
