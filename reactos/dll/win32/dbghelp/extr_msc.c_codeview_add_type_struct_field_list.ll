; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_struct_field_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_struct_field_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i32 }
%struct.symt_udt = type { i32 }
%struct.p_string = type { i32 }
%union.codeview_reftype = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { i8* }
%union.codeview_fieldtype = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32, i8* }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_63__ = type { i16 }
%struct.TYPE_64__ = type { i16 }
%struct.TYPE_65__ = type { i16 }
%struct.TYPE_66__ = type { i16 }
%struct.TYPE_67__ = type { i16, i32 }
%struct.TYPE_48__ = type { i16, i32 }
%struct.TYPE_59__ = type { i16, i32 }
%struct.TYPE_69__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { i32 }
%struct.TYPE_71__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_72__ = type { i8* }
%struct.TYPE_74__ = type { %struct.TYPE_73__ }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_40__ = type { i8* }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_45__ = type { i8* }
%struct.TYPE_50__ = type { i32, %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_54__ = type { i32, %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_52__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_55__ = type { i8* }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_58__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unsupported type %04x in STRUCT field list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codeview_type_parse*, %struct.symt_udt*, i32)* @codeview_add_type_struct_field_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeview_add_type_struct_field_list(%struct.codeview_type_parse* %0, %struct.symt_udt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.codeview_type_parse*, align 8
  %6 = alloca %struct.symt_udt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.p_string*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %union.codeview_reftype*, align 8
  %15 = alloca %union.codeview_fieldtype*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %5, align 8
  store %struct.symt_udt* %1, %struct.symt_udt** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %460

26:                                               ; preds = %3
  %27 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse* %27, i32 %28)
  store %union.codeview_reftype* %29, %union.codeview_reftype** %14, align 8
  %30 = load %union.codeview_reftype*, %union.codeview_reftype** %14, align 8
  %31 = bitcast %union.codeview_reftype* %30 to %struct.TYPE_60__*
  %32 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  %34 = load %union.codeview_reftype*, %union.codeview_reftype** %14, align 8
  %35 = bitcast %union.codeview_reftype* %34 to i8*
  %36 = load %union.codeview_reftype*, %union.codeview_reftype** %14, align 8
  %37 = bitcast %union.codeview_reftype* %36 to %struct.TYPE_61__*
  %38 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %457, %52, %26
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %458

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sge i32 %50, 240
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 15
  %57 = load i8*, i8** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %8, align 8
  br label %43

60:                                               ; preds = %47
  %61 = load i8*, i8** %8, align 8
  %62 = bitcast i8* %61 to %union.codeview_fieldtype*
  store %union.codeview_fieldtype* %62, %union.codeview_fieldtype** %15, align 8
  %63 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %64 = bitcast %union.codeview_fieldtype* %63 to %struct.TYPE_62__*
  %65 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %450 [
    i32 152, label %67
    i32 151, label %77
    i32 131, label %87
    i32 148, label %87
    i32 130, label %109
    i32 147, label %109
    i32 146, label %131
    i32 145, label %164
    i32 144, label %197
    i32 134, label %227
    i32 133, label %238
    i32 132, label %249
    i32 143, label %260
    i32 142, label %271
    i32 141, label %282
    i32 140, label %293
    i32 139, label %304
    i32 138, label %315
    i32 129, label %326
    i32 128, label %329
    i32 137, label %332
    i32 136, label %362
    i32 135, label %392
    i32 150, label %422
    i32 149, label %436
  ]

67:                                               ; preds = %60
  %68 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %69 = bitcast %union.codeview_fieldtype* %68 to %struct.TYPE_63__*
  %70 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %69, i32 0, i32 0
  %71 = call i32 @numeric_leaf(i32* %10, i16* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 6, %72
  %74 = load i8*, i8** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %8, align 8
  br label %457

77:                                               ; preds = %60
  %78 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %79 = bitcast %union.codeview_fieldtype* %78 to %struct.TYPE_64__*
  %80 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %79, i32 0, i32 0
  %81 = call i32 @numeric_leaf(i32* %10, i16* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 8, %82
  %84 = load i8*, i8** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %8, align 8
  br label %457

87:                                               ; preds = %60, %60
  %88 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %89 = bitcast %union.codeview_fieldtype* %88 to %struct.TYPE_65__*
  %90 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %89, i32 0, i32 0
  %91 = call i32 @numeric_leaf(i32* %10, i16* %90)
  store i32 %91, i32* %11, align 4
  %92 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %93 = bitcast %union.codeview_fieldtype* %92 to %struct.TYPE_65__*
  %94 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %93, i32 0, i32 0
  %95 = bitcast i16* %94 to i8*
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = bitcast i8* %98 to i16*
  store i16* %99, i16** %16, align 8
  %100 = load i16*, i16** %16, align 8
  %101 = call i32 @numeric_leaf(i32* %17, i16* %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 8, %102
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i8*, i8** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %8, align 8
  br label %457

109:                                              ; preds = %60, %60
  %110 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %111 = bitcast %union.codeview_fieldtype* %110 to %struct.TYPE_66__*
  %112 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %111, i32 0, i32 0
  %113 = call i32 @numeric_leaf(i32* %10, i16* %112)
  store i32 %113, i32* %11, align 4
  %114 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %115 = bitcast %union.codeview_fieldtype* %114 to %struct.TYPE_66__*
  %116 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %115, i32 0, i32 0
  %117 = bitcast i16* %116 to i8*
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = bitcast i8* %120 to i16*
  store i16* %121, i16** %19, align 8
  %122 = load i16*, i16** %19, align 8
  %123 = call i32 @numeric_leaf(i32* %20, i16* %122)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 12, %124
  %126 = load i32, i32* %21, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i8*, i8** %8, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %8, align 8
  br label %457

131:                                              ; preds = %60
  %132 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %133 = bitcast %union.codeview_fieldtype* %132 to %struct.TYPE_67__*
  %134 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %133, i32 0, i32 0
  %135 = call i32 @numeric_leaf(i32* %10, i16* %134)
  store i32 %135, i32* %11, align 4
  %136 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %137 = bitcast %union.codeview_fieldtype* %136 to %struct.TYPE_67__*
  %138 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %137, i32 0, i32 0
  %139 = bitcast i16* %138 to i8*
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = bitcast i8* %142 to %struct.p_string*
  store %struct.p_string* %143, %struct.p_string** %12, align 8
  %144 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %145 = load %struct.symt_udt*, %struct.symt_udt** %6, align 8
  %146 = load %struct.p_string*, %struct.p_string** %12, align 8
  %147 = call i8* @terminate_string(%struct.p_string* %146)
  %148 = load i32, i32* %10, align 4
  %149 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %150 = bitcast %union.codeview_fieldtype* %149 to %struct.TYPE_67__*
  %151 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @codeview_add_udt_element(%struct.codeview_type_parse* %144, %struct.symt_udt* %145, i8* %147, i32 %148, i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 6, %154
  %156 = load %struct.p_string*, %struct.p_string** %12, align 8
  %157 = getelementptr inbounds %struct.p_string, %struct.p_string* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 1, %158
  %160 = add nsw i32 %155, %159
  %161 = load i8*, i8** %8, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %8, align 8
  br label %457

164:                                              ; preds = %60
  %165 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %166 = bitcast %union.codeview_fieldtype* %165 to %struct.TYPE_48__*
  %167 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %166, i32 0, i32 0
  %168 = call i32 @numeric_leaf(i32* %10, i16* %167)
  store i32 %168, i32* %11, align 4
  %169 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %170 = bitcast %union.codeview_fieldtype* %169 to %struct.TYPE_48__*
  %171 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %170, i32 0, i32 0
  %172 = bitcast i16* %171 to i8*
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = bitcast i8* %175 to %struct.p_string*
  store %struct.p_string* %176, %struct.p_string** %12, align 8
  %177 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %178 = load %struct.symt_udt*, %struct.symt_udt** %6, align 8
  %179 = load %struct.p_string*, %struct.p_string** %12, align 8
  %180 = call i8* @terminate_string(%struct.p_string* %179)
  %181 = load i32, i32* %10, align 4
  %182 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %183 = bitcast %union.codeview_fieldtype* %182 to %struct.TYPE_48__*
  %184 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @codeview_add_udt_element(%struct.codeview_type_parse* %177, %struct.symt_udt* %178, i8* %180, i32 %181, i32 %185)
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 8, %187
  %189 = load %struct.p_string*, %struct.p_string** %12, align 8
  %190 = getelementptr inbounds %struct.p_string, %struct.p_string* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 1, %191
  %193 = add nsw i32 %188, %192
  %194 = load i8*, i8** %8, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %8, align 8
  br label %457

197:                                              ; preds = %60
  %198 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %199 = bitcast %union.codeview_fieldtype* %198 to %struct.TYPE_59__*
  %200 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %199, i32 0, i32 0
  %201 = call i32 @numeric_leaf(i32* %10, i16* %200)
  store i32 %201, i32* %11, align 4
  %202 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %203 = bitcast %union.codeview_fieldtype* %202 to %struct.TYPE_59__*
  %204 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %203, i32 0, i32 0
  %205 = bitcast i16* %204 to i8*
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8* %208, i8** %13, align 8
  %209 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %210 = load %struct.symt_udt*, %struct.symt_udt** %6, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %214 = bitcast %union.codeview_fieldtype* %213 to %struct.TYPE_59__*
  %215 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @codeview_add_udt_element(%struct.codeview_type_parse* %209, %struct.symt_udt* %210, i8* %211, i32 %212, i32 %216)
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 8, %218
  %220 = load i8*, i8** %13, align 8
  %221 = call i32 @strlen(i8* %220)
  %222 = add nsw i32 %221, 1
  %223 = add nsw i32 %219, %222
  %224 = load i8*, i8** %8, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %8, align 8
  br label %457

227:                                              ; preds = %60
  %228 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %229 = bitcast %union.codeview_fieldtype* %228 to %struct.TYPE_69__*
  %230 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 1, %232
  %234 = add nsw i32 6, %233
  %235 = load i8*, i8** %8, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %8, align 8
  br label %457

238:                                              ; preds = %60
  %239 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %240 = bitcast %union.codeview_fieldtype* %239 to %struct.TYPE_71__*
  %241 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 1, %243
  %245 = add nsw i32 8, %244
  %246 = load i8*, i8** %8, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %8, align 8
  br label %457

249:                                              ; preds = %60
  %250 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %251 = bitcast %union.codeview_fieldtype* %250 to %struct.TYPE_72__*
  %252 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @strlen(i8* %253)
  %255 = add nsw i32 %254, 1
  %256 = add nsw i32 8, %255
  %257 = load i8*, i8** %8, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8* %259, i8** %8, align 8
  br label %457

260:                                              ; preds = %60
  %261 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %262 = bitcast %union.codeview_fieldtype* %261 to %struct.TYPE_74__*
  %263 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 1, %265
  %267 = add nsw i32 6, %266
  %268 = load i8*, i8** %8, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  store i8* %270, i8** %8, align 8
  br label %457

271:                                              ; preds = %60
  %272 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %273 = bitcast %union.codeview_fieldtype* %272 to %struct.TYPE_39__*
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 1, %276
  %278 = add nsw i32 8, %277
  %279 = load i8*, i8** %8, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  store i8* %281, i8** %8, align 8
  br label %457

282:                                              ; preds = %60
  %283 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %284 = bitcast %union.codeview_fieldtype* %283 to %struct.TYPE_40__*
  %285 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @strlen(i8* %286)
  %288 = add nsw i32 %287, 1
  %289 = add nsw i32 8, %288
  %290 = load i8*, i8** %8, align 8
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  store i8* %292, i8** %8, align 8
  br label %457

293:                                              ; preds = %60
  %294 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %295 = bitcast %union.codeview_fieldtype* %294 to %struct.TYPE_42__*
  %296 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = add nsw i32 1, %298
  %300 = add nsw i32 4, %299
  %301 = load i8*, i8** %8, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8* %303, i8** %8, align 8
  br label %457

304:                                              ; preds = %60
  %305 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %306 = bitcast %union.codeview_fieldtype* %305 to %struct.TYPE_44__*
  %307 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 1, %309
  %311 = add nsw i32 8, %310
  %312 = load i8*, i8** %8, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i8, i8* %312, i64 %313
  store i8* %314, i8** %8, align 8
  br label %457

315:                                              ; preds = %60
  %316 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %317 = bitcast %union.codeview_fieldtype* %316 to %struct.TYPE_45__*
  %318 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @strlen(i8* %319)
  %321 = add nsw i32 %320, 1
  %322 = add nsw i32 8, %321
  %323 = load i8*, i8** %8, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  store i8* %325, i8** %8, align 8
  br label %457

326:                                              ; preds = %60
  %327 = load i8*, i8** %8, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 4
  store i8* %328, i8** %8, align 8
  br label %457

329:                                              ; preds = %60
  %330 = load i8*, i8** %8, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 8
  store i8* %331, i8** %8, align 8
  br label %457

332:                                              ; preds = %60
  %333 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %334 = bitcast %union.codeview_fieldtype* %333 to %struct.TYPE_50__*
  %335 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = ashr i32 %336, 2
  %338 = and i32 %337, 7
  switch i32 %338, label %350 [
    i32 4, label %339
    i32 6, label %339
  ]

339:                                              ; preds = %332, %332
  %340 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %341 = bitcast %union.codeview_fieldtype* %340 to %struct.TYPE_47__*
  %342 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 1, %344
  %346 = add nsw i32 10, %345
  %347 = load i8*, i8** %8, align 8
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i8, i8* %347, i64 %348
  store i8* %349, i8** %8, align 8
  br label %361

350:                                              ; preds = %332
  %351 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %352 = bitcast %union.codeview_fieldtype* %351 to %struct.TYPE_50__*
  %353 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = add nsw i32 1, %355
  %357 = add nsw i32 6, %356
  %358 = load i8*, i8** %8, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %8, align 8
  br label %361

361:                                              ; preds = %350, %339
  br label %457

362:                                              ; preds = %60
  %363 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %364 = bitcast %union.codeview_fieldtype* %363 to %struct.TYPE_54__*
  %365 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = ashr i32 %366, 2
  %368 = and i32 %367, 7
  switch i32 %368, label %380 [
    i32 4, label %369
    i32 6, label %369
  ]

369:                                              ; preds = %362, %362
  %370 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %371 = bitcast %union.codeview_fieldtype* %370 to %struct.TYPE_52__*
  %372 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = add nsw i32 1, %374
  %376 = add nsw i32 12, %375
  %377 = load i8*, i8** %8, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i8, i8* %377, i64 %378
  store i8* %379, i8** %8, align 8
  br label %391

380:                                              ; preds = %362
  %381 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %382 = bitcast %union.codeview_fieldtype* %381 to %struct.TYPE_54__*
  %383 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 1, %385
  %387 = add nsw i32 8, %386
  %388 = load i8*, i8** %8, align 8
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  store i8* %390, i8** %8, align 8
  br label %391

391:                                              ; preds = %380, %369
  br label %457

392:                                              ; preds = %60
  %393 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %394 = bitcast %union.codeview_fieldtype* %393 to %struct.TYPE_56__*
  %395 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = ashr i32 %396, 2
  %398 = and i32 %397, 7
  switch i32 %398, label %410 [
    i32 4, label %399
    i32 6, label %399
  ]

399:                                              ; preds = %392, %392
  %400 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %401 = bitcast %union.codeview_fieldtype* %400 to %struct.TYPE_55__*
  %402 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @strlen(i8* %403)
  %405 = add nsw i32 %404, 1
  %406 = add nsw i32 12, %405
  %407 = load i8*, i8** %8, align 8
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i8, i8* %407, i64 %408
  store i8* %409, i8** %8, align 8
  br label %421

410:                                              ; preds = %392
  %411 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %412 = bitcast %union.codeview_fieldtype* %411 to %struct.TYPE_56__*
  %413 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %412, i32 0, i32 1
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @strlen(i8* %414)
  %416 = add nsw i32 %415, 1
  %417 = add nsw i32 8, %416
  %418 = load i8*, i8** %8, align 8
  %419 = sext i32 %417 to i64
  %420 = getelementptr inbounds i8, i8* %418, i64 %419
  store i8* %420, i8** %8, align 8
  br label %421

421:                                              ; preds = %410, %399
  br label %457

422:                                              ; preds = %60
  %423 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %424 = load %struct.symt_udt*, %struct.symt_udt** %6, align 8
  %425 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %426 = bitcast %union.codeview_fieldtype* %425 to %struct.TYPE_57__*
  %427 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @codeview_add_type_struct_field_list(%struct.codeview_type_parse* %423, %struct.symt_udt* %424, i32 %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %422
  %432 = load i32, i32* @FALSE, align 4
  store i32 %432, i32* %4, align 4
  br label %460

433:                                              ; preds = %422
  %434 = load i8*, i8** %8, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 4
  store i8* %435, i8** %8, align 8
  br label %457

436:                                              ; preds = %60
  %437 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %438 = load %struct.symt_udt*, %struct.symt_udt** %6, align 8
  %439 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %440 = bitcast %union.codeview_fieldtype* %439 to %struct.TYPE_58__*
  %441 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @codeview_add_type_struct_field_list(%struct.codeview_type_parse* %437, %struct.symt_udt* %438, i32 %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %436
  %446 = load i32, i32* @FALSE, align 4
  store i32 %446, i32* %4, align 4
  br label %460

447:                                              ; preds = %436
  %448 = load i8*, i8** %8, align 8
  %449 = getelementptr inbounds i8, i8* %448, i64 8
  store i8* %449, i8** %8, align 8
  br label %457

450:                                              ; preds = %60
  %451 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %15, align 8
  %452 = bitcast %union.codeview_fieldtype* %451 to %struct.TYPE_62__*
  %453 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %454)
  %456 = load i32, i32* @FALSE, align 4
  store i32 %456, i32* %4, align 4
  br label %460

457:                                              ; preds = %447, %433, %421, %391, %361, %329, %326, %315, %304, %293, %282, %271, %260, %249, %238, %227, %197, %164, %131, %109, %87, %77, %67
  br label %43

458:                                              ; preds = %43
  %459 = load i32, i32* @TRUE, align 4
  store i32 %459, i32* %4, align 4
  br label %460

460:                                              ; preds = %458, %450, %445, %431, %24
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse*, i32) #1

declare dso_local i32 @numeric_leaf(i32*, i16*) #1

declare dso_local i32 @codeview_add_udt_element(%struct.codeview_type_parse*, %struct.symt_udt*, i8*, i32, i32) #1

declare dso_local i8* @terminate_string(%struct.p_string*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
