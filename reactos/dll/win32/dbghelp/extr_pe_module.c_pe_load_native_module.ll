; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_native_module.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_native_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64, %struct.TYPE_11__, %struct.module_format** }
%struct.TYPE_11__ = type { i32 }
%struct.module_format = type { %struct.TYPE_16__, i32*, i32, %struct.module* }
%struct.TYPE_16__ = type { %struct.pe_module_info* }
%struct.pe_module_info = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.process = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@dbghelp_options = common dso_local global i32 0, align 4
@SYMOPT_DEFERRED_LOADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Trouble ahead (no module name passed in deferred mode)\0A\00", align 1
@DMT_PE = common dso_local global i32 0, align 4
@pe_module_remove = common dso_local global i32 0, align 4
@DFI_PE = common dso_local global i64 0, align 8
@SymDeferred = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not load the module '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.module* @pe_load_native_module(%struct.process* %0, i8* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.process*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.module*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.module_format*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.process* %0, %struct.process** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.module* null, %struct.module** %12, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 16
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.process*, %struct.process** %7, align 8
  %31 = getelementptr inbounds %struct.process, %struct.process* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @FindExecutableImageExW(i8* %29, i32 %32, i8* %22, i32* null, i32* null)
  store i32* %33, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store %struct.module* null, %struct.module** %6, align 8
  store i32 1, i32* %17, align 4
  br label %204

36:                                               ; preds = %26
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* %13, align 8
  br label %53

38:                                               ; preds = %5
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strcpyW(i8* %22, i8* %42)
  br label %52

44:                                               ; preds = %38
  %45 = load i32, i32* @dbghelp_options, align 4
  %46 = load i32, i32* @SYMOPT_DEFERRED_LOADS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %36
  %54 = call i32 (...) @GetProcessHeap()
  %55 = call %struct.module_format* @HeapAlloc(i32 %54, i32 0, i32 56)
  store %struct.module_format* %55, %struct.module_format** %14, align 8
  %56 = icmp ne %struct.module_format* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store %struct.module* null, %struct.module** %6, align 8
  store i32 1, i32* %17, align 4
  br label %204

58:                                               ; preds = %53
  %59 = load %struct.module_format*, %struct.module_format** %14, align 8
  %60 = getelementptr inbounds %struct.module_format, %struct.module_format* %59, i64 1
  %61 = bitcast %struct.module_format* %60 to %struct.pe_module_info*
  %62 = load %struct.module_format*, %struct.module_format** %14, align 8
  %63 = getelementptr inbounds %struct.module_format, %struct.module_format* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store %struct.pe_module_info* %61, %struct.pe_module_info** %64, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.module_format*, %struct.module_format** %14, align 8
  %67 = getelementptr inbounds %struct.module_format, %struct.module_format* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.pe_module_info*, %struct.pe_module_info** %68, align 8
  %70 = getelementptr inbounds %struct.pe_module_info, %struct.pe_module_info* %69, i32 0, i32 0
  %71 = load i32, i32* @DMT_PE, align 4
  %72 = call i64 @pe_map_file(i32* %65, %struct.TYPE_17__* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %189

74:                                               ; preds = %58
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load %struct.module_format*, %struct.module_format** %14, align 8
  %79 = getelementptr inbounds %struct.module_format, %struct.module_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.pe_module_info*, %struct.pe_module_info** %80, align 8
  %82 = getelementptr inbounds %struct.pe_module_info, %struct.pe_module_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %77, %74
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = load %struct.module_format*, %struct.module_format** %14, align 8
  %94 = getelementptr inbounds %struct.module_format, %struct.module_format* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.pe_module_info*, %struct.pe_module_info** %95, align 8
  %97 = getelementptr inbounds %struct.pe_module_info, %struct.pe_module_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %92, %89
  %105 = load %struct.process*, %struct.process** %7, align 8
  %106 = load i32, i32* @DMT_PE, align 4
  %107 = load i64, i64* @FALSE, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.module_format*, %struct.module_format** %14, align 8
  %111 = getelementptr inbounds %struct.module_format, %struct.module_format* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.pe_module_info*, %struct.pe_module_info** %112, align 8
  %114 = getelementptr inbounds %struct.pe_module_info, %struct.pe_module_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.module_format*, %struct.module_format** %14, align 8
  %122 = getelementptr inbounds %struct.module_format, %struct.module_format* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load %struct.pe_module_info*, %struct.pe_module_info** %123, align 8
  %125 = getelementptr inbounds %struct.pe_module_info, %struct.pe_module_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.module* @module_new(%struct.process* %105, i8* %22, i32 %106, i64 %107, i64 %108, i32 %109, i32 %120, i32 %131)
  store %struct.module* %132, %struct.module** %12, align 8
  %133 = load %struct.module*, %struct.module** %12, align 8
  %134 = icmp ne %struct.module* %133, null
  br i1 %134, label %135, label %179

135:                                              ; preds = %104
  %136 = load %struct.module*, %struct.module** %12, align 8
  %137 = load %struct.module_format*, %struct.module_format** %14, align 8
  %138 = getelementptr inbounds %struct.module_format, %struct.module_format* %137, i32 0, i32 3
  store %struct.module* %136, %struct.module** %138, align 8
  %139 = load i32, i32* @pe_module_remove, align 4
  %140 = load %struct.module_format*, %struct.module_format** %14, align 8
  %141 = getelementptr inbounds %struct.module_format, %struct.module_format* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.module_format*, %struct.module_format** %14, align 8
  %143 = getelementptr inbounds %struct.module_format, %struct.module_format* %142, i32 0, i32 1
  store i32* null, i32** %143, align 8
  %144 = load %struct.module_format*, %struct.module_format** %14, align 8
  %145 = load %struct.module*, %struct.module** %12, align 8
  %146 = getelementptr inbounds %struct.module, %struct.module* %145, i32 0, i32 2
  %147 = load %struct.module_format**, %struct.module_format*** %146, align 8
  %148 = load i64, i64* @DFI_PE, align 8
  %149 = getelementptr inbounds %struct.module_format*, %struct.module_format** %147, i64 %148
  store %struct.module_format* %144, %struct.module_format** %149, align 8
  %150 = load i32, i32* @dbghelp_options, align 4
  %151 = load i32, i32* @SYMOPT_DEFERRED_LOADS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %135
  %155 = load i32, i32* @SymDeferred, align 4
  %156 = load %struct.module*, %struct.module** %12, align 8
  %157 = getelementptr inbounds %struct.module, %struct.module* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  br label %163

159:                                              ; preds = %135
  %160 = load %struct.process*, %struct.process** %7, align 8
  %161 = load %struct.module*, %struct.module** %12, align 8
  %162 = call i32 @pe_load_debug_info(%struct.process* %160, %struct.module* %161)
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.module_format*, %struct.module_format** %14, align 8
  %166 = getelementptr inbounds %struct.module_format, %struct.module_format* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load %struct.pe_module_info*, %struct.pe_module_info** %167, align 8
  %169 = getelementptr inbounds %struct.pe_module_info, %struct.pe_module_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %164, %175
  %177 = load %struct.module*, %struct.module** %12, align 8
  %178 = getelementptr inbounds %struct.module, %struct.module* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  br label %188

179:                                              ; preds = %104
  %180 = call i32 @debugstr_w(i8* %22)
  %181 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = load %struct.module_format*, %struct.module_format** %14, align 8
  %183 = getelementptr inbounds %struct.module_format, %struct.module_format* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load %struct.pe_module_info*, %struct.pe_module_info** %184, align 8
  %186 = getelementptr inbounds %struct.pe_module_info, %struct.pe_module_info* %185, i32 0, i32 0
  %187 = call i32 @pe_unmap_file(%struct.TYPE_17__* %186)
  br label %188

188:                                              ; preds = %179, %163
  br label %189

189:                                              ; preds = %188, %58
  %190 = load %struct.module*, %struct.module** %12, align 8
  %191 = icmp ne %struct.module* %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = call i32 (...) @GetProcessHeap()
  %194 = load %struct.module_format*, %struct.module_format** %14, align 8
  %195 = call i32 @HeapFree(i32 %193, i32 0, %struct.module_format* %194)
  br label %196

196:                                              ; preds = %192, %189
  %197 = load i64, i64* %13, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %9, align 8
  %201 = call i32 @CloseHandle(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load %struct.module*, %struct.module** %12, align 8
  store %struct.module* %203, %struct.module** %6, align 8
  store i32 1, i32* %17, align 4
  br label %204

204:                                              ; preds = %202, %57, %35
  %205 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load %struct.module*, %struct.module** %6, align 8
  ret %struct.module* %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i8*) #2

declare dso_local i32* @FindExecutableImageExW(i8*, i32, i8*, i32*, i32*) #2

declare dso_local i32 @strcpyW(i8*, i8*) #2

declare dso_local i32 @FIXME(i8*) #2

declare dso_local %struct.module_format* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @pe_map_file(i32*, %struct.TYPE_17__*, i32) #2

declare dso_local %struct.module* @module_new(%struct.process*, i8*, i32, i64, i64, i32, i32, i32) #2

declare dso_local i32 @pe_load_debug_info(%struct.process*, %struct.module*) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @pe_unmap_file(%struct.TYPE_17__*) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.module_format*) #2

declare dso_local i32 @CloseHandle(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
