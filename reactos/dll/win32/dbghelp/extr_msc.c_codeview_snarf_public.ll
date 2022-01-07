; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_snarf_public.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_snarf_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_debug_info = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.symt_compiland = type { i32 }
%union.codeview_symbol = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"unpadded len %u\0A\00", align 1
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_NO_PUBLICS = common dso_local global i32 0, align 4
@SYMTYPE_FUNCTION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.msc_debug_info*, i32*, i32, i32)* @codeview_snarf_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @codeview_snarf_public(%struct.msc_debug_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.msc_debug_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symt_compiland*, align 8
  %12 = alloca %union.codeview_symbol*, align 8
  store %struct.msc_debug_info* %0, %struct.msc_debug_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.symt_compiland* null, %struct.symt_compiland** %11, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %344, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %348

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = bitcast i32* %22 to %union.codeview_symbol*
  store %union.codeview_symbol* %23, %union.codeview_symbol** %12, align 8
  %24 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %25 = bitcast %union.codeview_symbol* %24 to %struct.TYPE_12__*
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %348

35:                                               ; preds = %18
  %36 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %37 = bitcast %union.codeview_symbol* %36 to %struct.TYPE_12__*
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %35
  br label %348

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %54 = bitcast %union.codeview_symbol* %53 to %struct.TYPE_12__*
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %338 [
    i32 130, label %57
    i32 129, label %90
    i32 128, label %123
    i32 132, label %156
    i32 131, label %156
    i32 146, label %157
    i32 140, label %157
    i32 145, label %185
    i32 139, label %185
    i32 144, label %213
    i32 138, label %213
    i32 143, label %241
    i32 136, label %241
    i32 142, label %269
    i32 135, label %269
    i32 141, label %297
    i32 134, label %297
    i32 133, label %325
    i32 147, label %325
    i32 137, label %325
  ]

57:                                               ; preds = %52
  %58 = load i32, i32* @dbghelp_options, align 4
  %59 = load i32, i32* @SYMOPT_NO_PUBLICS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %89, label %62

62:                                               ; preds = %57
  %63 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %64 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %67 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %68 = bitcast %union.codeview_symbol* %67 to %struct.TYPE_14__*
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = call i32 @terminate_string(i32* %69)
  %71 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %72 = bitcast %union.codeview_symbol* %71 to %struct.TYPE_14__*
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SYMTYPE_FUNCTION, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %79 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %80 = bitcast %union.codeview_symbol* %79 to %struct.TYPE_14__*
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %84 = bitcast %union.codeview_symbol* %83 to %struct.TYPE_14__*
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @codeview_get_address(%struct.msc_debug_info* %78, i32 %82, i32 %86)
  %88 = call i32 (%struct.TYPE_13__*, %struct.symt_compiland*, i32, i32, i32, ...) @symt_new_public(%struct.TYPE_13__* %65, %struct.symt_compiland* %66, i32 %70, i32 %77, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %62, %57
  br label %338

90:                                               ; preds = %52
  %91 = load i32, i32* @dbghelp_options, align 4
  %92 = load i32, i32* @SYMOPT_NO_PUBLICS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %122, label %95

95:                                               ; preds = %90
  %96 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %97 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %100 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %101 = bitcast %union.codeview_symbol* %100 to %struct.TYPE_15__*
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = call i32 @terminate_string(i32* %102)
  %104 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %105 = bitcast %union.codeview_symbol* %104 to %struct.TYPE_16__*
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SYMTYPE_FUNCTION, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %112 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %113 = bitcast %union.codeview_symbol* %112 to %struct.TYPE_15__*
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %117 = bitcast %union.codeview_symbol* %116 to %struct.TYPE_15__*
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @codeview_get_address(%struct.msc_debug_info* %111, i32 %115, i32 %119)
  %121 = call i32 (%struct.TYPE_13__*, %struct.symt_compiland*, i32, i32, i32, ...) @symt_new_public(%struct.TYPE_13__* %98, %struct.symt_compiland* %99, i32 %103, i32 %110, i32 %120, i32 1)
  br label %122

122:                                              ; preds = %95, %90
  br label %338

123:                                              ; preds = %52
  %124 = load i32, i32* @dbghelp_options, align 4
  %125 = load i32, i32* @SYMOPT_NO_PUBLICS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %155, label %128

128:                                              ; preds = %123
  %129 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %130 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %133 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %134 = bitcast %union.codeview_symbol* %133 to %struct.TYPE_16__*
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %138 = bitcast %union.codeview_symbol* %137 to %struct.TYPE_16__*
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SYMTYPE_FUNCTION, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %145 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %146 = bitcast %union.codeview_symbol* %145 to %struct.TYPE_16__*
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %150 = bitcast %union.codeview_symbol* %149 to %struct.TYPE_16__*
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @codeview_get_address(%struct.msc_debug_info* %144, i32 %148, i32 %152)
  %154 = call i32 (%struct.TYPE_13__*, %struct.symt_compiland*, i32, i32, i32, ...) @symt_new_public(%struct.TYPE_13__* %131, %struct.symt_compiland* %132, i32 %136, i32 %143, i32 %153, i32 1)
  br label %155

155:                                              ; preds = %128, %123
  br label %338

156:                                              ; preds = %52, %52
  br label %338

157:                                              ; preds = %52, %52
  %158 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %159 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %160 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %161 = bitcast %union.codeview_symbol* %160 to %struct.TYPE_17__*
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = call i32 @terminate_string(i32* %162)
  %164 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %165 = bitcast %union.codeview_symbol* %164 to %struct.TYPE_17__*
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %169 = bitcast %union.codeview_symbol* %168 to %struct.TYPE_17__*
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %173 = bitcast %union.codeview_symbol* %172 to %struct.TYPE_17__*
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %177 = bitcast %union.codeview_symbol* %176 to %struct.TYPE_12__*
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 140
  %181 = zext i1 %180 to i32
  %182 = load i8*, i8** @FALSE, align 8
  %183 = load i8*, i8** @FALSE, align 8
  %184 = call i32 @codeview_add_variable(%struct.msc_debug_info* %158, %struct.symt_compiland* %159, i32 %163, i32 %167, i32 %171, i32 %175, i32 %181, i8* %182, i8* %183)
  br label %338

185:                                              ; preds = %52, %52
  %186 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %187 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %188 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %189 = bitcast %union.codeview_symbol* %188 to %struct.TYPE_18__*
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  %191 = call i32 @terminate_string(i32* %190)
  %192 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %193 = bitcast %union.codeview_symbol* %192 to %struct.TYPE_18__*
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %197 = bitcast %union.codeview_symbol* %196 to %struct.TYPE_18__*
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %201 = bitcast %union.codeview_symbol* %200 to %struct.TYPE_18__*
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %205 = bitcast %union.codeview_symbol* %204 to %struct.TYPE_12__*
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 139
  %209 = zext i1 %208 to i32
  %210 = load i8*, i8** @FALSE, align 8
  %211 = load i8*, i8** @FALSE, align 8
  %212 = call i32 @codeview_add_variable(%struct.msc_debug_info* %186, %struct.symt_compiland* %187, i32 %191, i32 %195, i32 %199, i32 %203, i32 %209, i8* %210, i8* %211)
  br label %338

213:                                              ; preds = %52, %52
  %214 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %215 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %216 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %217 = bitcast %union.codeview_symbol* %216 to %struct.TYPE_19__*
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %221 = bitcast %union.codeview_symbol* %220 to %struct.TYPE_19__*
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %225 = bitcast %union.codeview_symbol* %224 to %struct.TYPE_19__*
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %229 = bitcast %union.codeview_symbol* %228 to %struct.TYPE_19__*
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %233 = bitcast %union.codeview_symbol* %232 to %struct.TYPE_12__*
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 138
  %237 = zext i1 %236 to i32
  %238 = load i8*, i8** @FALSE, align 8
  %239 = load i8*, i8** @FALSE, align 8
  %240 = call i32 @codeview_add_variable(%struct.msc_debug_info* %214, %struct.symt_compiland* %215, i32 %219, i32 %223, i32 %227, i32 %231, i32 %237, i8* %238, i8* %239)
  br label %338

241:                                              ; preds = %52, %52
  %242 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %243 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %244 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %245 = bitcast %union.codeview_symbol* %244 to %struct.TYPE_20__*
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 3
  %247 = call i32 @terminate_string(i32* %246)
  %248 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %249 = bitcast %union.codeview_symbol* %248 to %struct.TYPE_20__*
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %253 = bitcast %union.codeview_symbol* %252 to %struct.TYPE_20__*
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %257 = bitcast %union.codeview_symbol* %256 to %struct.TYPE_20__*
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %261 = bitcast %union.codeview_symbol* %260 to %struct.TYPE_12__*
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 136
  %265 = zext i1 %264 to i32
  %266 = load i8*, i8** @TRUE, align 8
  %267 = load i8*, i8** @FALSE, align 8
  %268 = call i32 @codeview_add_variable(%struct.msc_debug_info* %242, %struct.symt_compiland* %243, i32 %247, i32 %251, i32 %255, i32 %259, i32 %265, i8* %266, i8* %267)
  br label %338

269:                                              ; preds = %52, %52
  %270 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %271 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %272 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %273 = bitcast %union.codeview_symbol* %272 to %struct.TYPE_21__*
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 3
  %275 = call i32 @terminate_string(i32* %274)
  %276 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %277 = bitcast %union.codeview_symbol* %276 to %struct.TYPE_21__*
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %281 = bitcast %union.codeview_symbol* %280 to %struct.TYPE_21__*
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %285 = bitcast %union.codeview_symbol* %284 to %struct.TYPE_21__*
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %289 = bitcast %union.codeview_symbol* %288 to %struct.TYPE_12__*
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 135
  %293 = zext i1 %292 to i32
  %294 = load i8*, i8** @TRUE, align 8
  %295 = load i8*, i8** @FALSE, align 8
  %296 = call i32 @codeview_add_variable(%struct.msc_debug_info* %270, %struct.symt_compiland* %271, i32 %275, i32 %279, i32 %283, i32 %287, i32 %293, i8* %294, i8* %295)
  br label %338

297:                                              ; preds = %52, %52
  %298 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %299 = load %struct.symt_compiland*, %struct.symt_compiland** %11, align 8
  %300 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %301 = bitcast %union.codeview_symbol* %300 to %struct.TYPE_22__*
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %305 = bitcast %union.codeview_symbol* %304 to %struct.TYPE_22__*
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %309 = bitcast %union.codeview_symbol* %308 to %struct.TYPE_22__*
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %313 = bitcast %union.codeview_symbol* %312 to %struct.TYPE_22__*
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %317 = bitcast %union.codeview_symbol* %316 to %struct.TYPE_12__*
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp eq i32 %319, 134
  %321 = zext i1 %320 to i32
  %322 = load i8*, i8** @TRUE, align 8
  %323 = load i8*, i8** @FALSE, align 8
  %324 = call i32 @codeview_add_variable(%struct.msc_debug_info* %298, %struct.symt_compiland* %299, i32 %303, i32 %307, i32 %311, i32 %315, i32 %321, i8* %322, i8* %323)
  br label %338

325:                                              ; preds = %52, %52, %52
  %326 = load %union.codeview_symbol*, %union.codeview_symbol** %12, align 8
  %327 = bitcast %union.codeview_symbol* %326 to i8*
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %327, i64 %329
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = add nsw i32 %332, 1
  %334 = add nsw i32 %333, 3
  %335 = and i32 %334, -4
  %336 = load i32, i32* %10, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %10, align 4
  br label %338

338:                                              ; preds = %52, %325, %297, %269, %241, %213, %185, %157, %156, %155, %122, %89
  %339 = load i8*, i8** @TRUE, align 8
  %340 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %341 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %340, i32 0, i32 0
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  store i8* %339, i8** %343, align 8
  br label %344

344:                                              ; preds = %338
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* %9, align 4
  %347 = add nsw i32 %346, %345
  store i32 %347, i32* %9, align 4
  br label %14

348:                                              ; preds = %44, %34, %14
  %349 = load i8*, i8** @FALSE, align 8
  %350 = load %struct.msc_debug_info*, %struct.msc_debug_info** %5, align 8
  %351 = getelementptr inbounds %struct.msc_debug_info, %struct.msc_debug_info* %350, i32 0, i32 0
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 0
  store i8* %349, i8** %353, align 8
  %354 = load i8*, i8** @TRUE, align 8
  ret i8* %354
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @symt_new_public(%struct.TYPE_13__*, %struct.symt_compiland*, i32, i32, i32, ...) #1

declare dso_local i32 @terminate_string(i32*) #1

declare dso_local i32 @codeview_get_address(%struct.msc_debug_info*, i32, i32) #1

declare dso_local i32 @codeview_add_variable(%struct.msc_debug_info*, %struct.symt_compiland*, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
