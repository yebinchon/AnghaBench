; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_coff_symbol_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_coff_symbol_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_14__, %struct.TYPE_19__** }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i8*, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.image_file_map }
%struct.image_file_map = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.symt_compiland = type { i32 }
%struct.TYPE_16__ = type { i64 }

@DFI_PE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@IMAGE_SYM_CLASS_FILE = common dso_local global i64 0, align 8
@IMAGE_SYM_CLASS_EXTERNAL = common dso_local global i64 0, align 8
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_NO_PUBLICS = common dso_local global i32 0, align 4
@SymCoff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.module*)* @pe_load_coff_symbol_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pe_load_coff_symbol_table(%struct.module* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.module*, align 8
  %4 = alloca %struct.image_file_map*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [9 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.symt_compiland*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %3, align 8
  %16 = load %struct.module*, %struct.module** %3, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %17, align 8
  %19 = load i64, i64* @DFI_PE, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %19
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  store %struct.image_file_map* %25, %struct.image_file_map** %4, align 8
  store i8* null, i8** %12, align 8
  store %struct.symt_compiland* null, %struct.symt_compiland** %13, align 8
  %26 = load %struct.image_file_map*, %struct.image_file_map** %4, align 8
  %27 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.image_file_map*, %struct.image_file_map** %4, align 8
  %34 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %1
  %45 = load i8*, i8** @TRUE, align 8
  store i8* %45, i8** %2, align 8
  br label %226

46:                                               ; preds = %41
  %47 = load %struct.image_file_map*, %struct.image_file_map** %4, align 8
  %48 = call i8* @pe_map_full(%struct.image_file_map* %47, i32* null)
  store i8* %48, i8** %15, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** @FALSE, align 8
  store i8* %51, i8** %2, align 8
  br label %226

52:                                               ; preds = %46
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.image_file_map*, %struct.image_file_map** %4, align 8
  %55 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %53, i64 %61
  %63 = bitcast i8* %62 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %5, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %66
  %68 = bitcast %struct.TYPE_15__* %67 to i8*
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = call i32 @RtlImageNtHeader(i32 %70)
  %72 = call %struct.TYPE_16__* @IMAGE_FIRST_SECTION(i32 %71)
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %14, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %190, %52
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %198

77:                                               ; preds = %73
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IMAGE_SYM_CLASS_FILE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 1
  %86 = bitcast %struct.TYPE_15__* %85 to i8*
  store i8* %86, i8** %12, align 8
  store %struct.symt_compiland* null, %struct.symt_compiland** %13, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IMAGE_SYM_CLASS_EXTERNAL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %185

93:                                               ; preds = %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %185

98:                                               ; preds = %93
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.image_file_map*, %struct.image_file_map** %4, align 8
  %103 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp sle i32 %101, %108
  br i1 %109, label %110, label %185

110:                                              ; preds = %98
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @memcpy(i8* %118, i32 %122, i32 8)
  store i8* %123, i8** %11, align 8
  %124 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 8
  store i8 0, i8* %124, align 1
  br label %134

125:                                              ; preds = %110
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %126, i64 %132
  store i8* %133, i8** %11, align 8
  br label %134

134:                                              ; preds = %125, %117
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 95
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %11, align 8
  br label %143

143:                                              ; preds = %140, %134
  %144 = load %struct.symt_compiland*, %struct.symt_compiland** %13, align 8
  %145 = icmp ne %struct.symt_compiland* %144, null
  br i1 %145, label %155, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %12, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load %struct.module*, %struct.module** %3, align 8
  %151 = load %struct.module*, %struct.module** %3, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @source_new(%struct.module* %151, i32* null, i8* %152)
  %154 = call %struct.symt_compiland* @symt_new_compiland(%struct.module* %150, i32 0, i32 %153)
  store %struct.symt_compiland* %154, %struct.symt_compiland** %13, align 8
  br label %155

155:                                              ; preds = %149, %146, %143
  %156 = load i32, i32* @dbghelp_options, align 4
  %157 = load i32, i32* @SYMOPT_NO_PUBLICS, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %184, label %160

160:                                              ; preds = %155
  %161 = load %struct.module*, %struct.module** %3, align 8
  %162 = load %struct.symt_compiland*, %struct.symt_compiland** %13, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = load i8*, i8** @FALSE, align 8
  %165 = load %struct.module*, %struct.module** %3, align 8
  %166 = getelementptr inbounds %struct.module, %struct.module* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %168, %177
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %178, %181
  %183 = call i32 @symt_new_public(%struct.module* %161, %struct.symt_compiland* %162, i8* %163, i8* %164, i64 %182, i32 1)
  br label %184

184:                                              ; preds = %160, %155
  br label %185

185:                                              ; preds = %184, %98, %93, %87
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i64 %196
  store %struct.TYPE_15__* %197, %struct.TYPE_15__** %5, align 8
  br label %73

198:                                              ; preds = %73
  %199 = load i32, i32* @SymCoff, align 4
  %200 = load %struct.module*, %struct.module** %3, align 8
  %201 = getelementptr inbounds %struct.module, %struct.module* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 5
  store i32 %199, i32* %202, align 8
  %203 = load i8*, i8** @FALSE, align 8
  %204 = load %struct.module*, %struct.module** %3, align 8
  %205 = getelementptr inbounds %struct.module, %struct.module* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 4
  store i8* %203, i8** %206, align 8
  %207 = load i8*, i8** @FALSE, align 8
  %208 = load %struct.module*, %struct.module** %3, align 8
  %209 = getelementptr inbounds %struct.module, %struct.module* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  store i8* %207, i8** %210, align 8
  %211 = load i8*, i8** @FALSE, align 8
  %212 = load %struct.module*, %struct.module** %3, align 8
  %213 = getelementptr inbounds %struct.module, %struct.module* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  store i8* %211, i8** %214, align 8
  %215 = load i8*, i8** @FALSE, align 8
  %216 = load %struct.module*, %struct.module** %3, align 8
  %217 = getelementptr inbounds %struct.module, %struct.module* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  store i8* %215, i8** %218, align 8
  %219 = load i8*, i8** @TRUE, align 8
  %220 = load %struct.module*, %struct.module** %3, align 8
  %221 = getelementptr inbounds %struct.module, %struct.module* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  store i8* %219, i8** %222, align 8
  %223 = load %struct.image_file_map*, %struct.image_file_map** %4, align 8
  %224 = call i32 @pe_unmap_full(%struct.image_file_map* %223)
  %225 = load i8*, i8** @TRUE, align 8
  store i8* %225, i8** %2, align 8
  br label %226

226:                                              ; preds = %198, %50, %44
  %227 = load i8*, i8** %2, align 8
  ret i8* %227
}

declare dso_local i8* @pe_map_full(%struct.image_file_map*, i32*) #1

declare dso_local %struct.TYPE_16__* @IMAGE_FIRST_SECTION(i32) #1

declare dso_local i32 @RtlImageNtHeader(i32) #1

declare dso_local i8* @memcpy(i8*, i32, i32) #1

declare dso_local %struct.symt_compiland* @symt_new_compiland(%struct.module*, i32, i32) #1

declare dso_local i32 @source_new(%struct.module*, i32*, i8*) #1

declare dso_local i32 @symt_new_public(%struct.module*, %struct.symt_compiland*, i8*, i8*, i64, i32) #1

declare dso_local i32 @pe_unmap_full(%struct.image_file_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
