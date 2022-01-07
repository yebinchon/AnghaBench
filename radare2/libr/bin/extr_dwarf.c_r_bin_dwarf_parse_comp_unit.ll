; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/extr_dwarf.c_r_bin_dwarf_parse_comp_unit.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/extr_dwarf.c_r_bin_dwarf_parse_comp_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_21__ }
%struct.TYPE_14__ = type { i32, i64, i64, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [66 x i8] c"Warning: malformed dwarf attribute capacity doesn't match length\0A\00", align 1
@DW_AT_comp_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"DW_AT_comp_dir\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid string pointer at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_19__*, %struct.TYPE_18__*, i64, i32*, i64)* @r_bin_dwarf_parse_comp_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @r_bin_dwarf_parse_comp_unit(i32* %0, i32* %1, %struct.TYPE_19__* %2, %struct.TYPE_18__* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i32*, i32** %10, align 8
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  store i32* %29, i32** %17, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %15, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %330

38:                                               ; preds = %7
  br label %39

39:                                               ; preds = %323, %98, %38
  %40 = load i32*, i32** %16, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32*, i32** %16, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = icmp ult i32* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %16, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp uge i32* %47, %48
  br label %50

50:                                               ; preds = %46, %42, %39
  %51 = phi i1 [ false, %42 ], [ false, %39 ], [ %49, %46 ]
  br i1 %51, label %52, label %328

52:                                               ; preds = %50
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %67 = call i32 @r_bin_dwarf_expand_cu(%struct.TYPE_19__* %66)
  br label %68

68:                                               ; preds = %65, %57, %52
  %69 = load i32*, i32** %16, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32* @r_uleb128(i32* %69, i32 %76, i32* %18)
  store i32* %77, i32** %16, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %68
  %84 = load i32*, i32** %16, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %68
  store i32* null, i32** %8, align 8
  br label %330

87:                                               ; preds = %83
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %93
  %95 = call i32 @r_bin_dwarf_init_die(%struct.TYPE_14__* %94)
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %87
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %16, align 8
  br label %39

113:                                              ; preds = %87
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 %114, i32* %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 4
  store i32 %131, i32* %139, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %18, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %113
  store i32* null, i32** %8, align 8
  br label %330

151:                                              ; preds = %113
  store i64 0, i64* %19, align 8
  br label %152

152:                                              ; preds = %320, %151
  %153 = load i64, i64* %19, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %153, %162
  br i1 %163, label %164, label %323

164:                                              ; preds = %152
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %173, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %164
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 %190
  %192 = call i32 @r_bin_dwarf_expand_die(%struct.TYPE_14__* %191)
  br label %193

193:                                              ; preds = %184, %164
  %194 = load i64, i64* %19, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp uge i64 %194, %203
  br i1 %204, label %217, label %205

205:                                              ; preds = %193
  %206 = load i64, i64* %19, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp uge i64 %206, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %205, %193
  %218 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %323

219:                                              ; preds = %205
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = load i64, i64* %19, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i64 %229
  %231 = call i32 @memset(%struct.TYPE_20__* %230, i32 0, i32 16)
  %232 = load i32*, i32** %16, align 8
  %233 = load i32*, i32** %17, align 8
  %234 = load i32*, i32** %16, align 8
  %235 = ptrtoint i32* %233 to i64
  %236 = ptrtoint i32* %234 to i64
  %237 = sub i64 %235, %236
  %238 = sdiv exact i64 %237, 4
  %239 = trunc i64 %238 to i32
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %241, align 8
  %243 = load i32, i32* %18, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %19, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %258, align 8
  %260 = load i64, i64* %19, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i64 %260
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 3
  %264 = load i32*, i32** %14, align 8
  %265 = load i64, i64* %15, align 8
  %266 = call i32* @r_bin_dwarf_parse_attr_value(i32* %232, i32 %239, i32* %250, %struct.TYPE_20__* %261, %struct.TYPE_21__* %263, i32* %264, i64 %265)
  store i32* %266, i32** %16, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %274, align 8
  %276 = load i64, i64* %19, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @DW_AT_comp_dir, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %309

282:                                              ; preds = %219
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 3
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %290, align 8
  %292 = load i64, i64* %19, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  store i8* %297, i8** %20, align 8
  %298 = load i8*, i8** %20, align 8
  %299 = ptrtoint i8* %298 to i64
  %300 = icmp ugt i64 %299, 1024
  br i1 %300, label %301, label %305

301:                                              ; preds = %282
  %302 = load i32*, i32** %9, align 8
  %303 = load i8*, i8** %20, align 8
  %304 = call i32 @sdb_set(i32* %302, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %303, i32 0)
  br label %308

305:                                              ; preds = %282
  %306 = load i8*, i8** %20, align 8
  %307 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %306)
  br label %308

308:                                              ; preds = %305, %301
  br label %309

309:                                              ; preds = %308, %219
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = add i64 %318, 1
  store i64 %319, i64* %317, align 8
  br label %320

320:                                              ; preds = %309
  %321 = load i64, i64* %19, align 8
  %322 = add i64 %321, 1
  store i64 %322, i64* %19, align 8
  br label %152

323:                                              ; preds = %217, %152
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = add i64 %326, 1
  store i64 %327, i64* %325, align 8
  br label %39

328:                                              ; preds = %50
  %329 = load i32*, i32** %16, align 8
  store i32* %329, i32** %8, align 8
  br label %330

330:                                              ; preds = %328, %150, %86, %37
  %331 = load i32*, i32** %8, align 8
  ret i32* %331
}

declare dso_local i32 @r_bin_dwarf_expand_cu(%struct.TYPE_19__*) #1

declare dso_local i32* @r_uleb128(i32*, i32, i32*) #1

declare dso_local i32 @r_bin_dwarf_init_die(%struct.TYPE_14__*) #1

declare dso_local i32 @r_bin_dwarf_expand_die(%struct.TYPE_14__*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @r_bin_dwarf_parse_attr_value(i32*, i32, i32*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i64) #1

declare dso_local i32 @sdb_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
