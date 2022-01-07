; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_process_symbol_imports.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_process_symbol_imports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.process = type { i32 }
%struct.msc_debug_info = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.pdb_lookup = type { i8*, i32, i32, i32 }
%struct.pdb_module_info = type { i32, %struct.pdb_file_info* }
%struct.pdb_file_info = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@CV_MAX_MODULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Out of bounds!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Twice the entry\0A\00", align 1
@PDB_JG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"got for %s: age=%u ts=%x\0A\00", align 1
@cv_zmodules = common dso_local global %struct.TYPE_8__* null, align 8
@cv_current_module = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Already allowed??\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.process*, %struct.msc_debug_info*, %struct.TYPE_7__*, i8*, i8*, %struct.pdb_lookup*, %struct.pdb_module_info*, i32)* @pdb_process_symbol_imports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdb_process_symbol_imports(%struct.process* %0, %struct.msc_debug_info* %1, %struct.TYPE_7__* %2, i8* %3, i8* %4, %struct.pdb_lookup* %5, %struct.pdb_module_info* %6, i32 %7) #0 {
  %9 = alloca %struct.process*, align 8
  %10 = alloca %struct.msc_debug_info*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pdb_lookup*, align 8
  %15 = alloca %struct.pdb_module_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.pdb_file_info, align 4
  %23 = alloca %struct.pdb_lookup, align 8
  store %struct.process* %0, %struct.process** %9, align 8
  store %struct.msc_debug_info* %1, %struct.msc_debug_info** %10, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.pdb_lookup* %5, %struct.pdb_lookup** %14, align 8
  store %struct.pdb_module_info* %6, %struct.pdb_module_info** %15, align 8
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %170

26:                                               ; preds = %8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %170

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %170

34:                                               ; preds = %29
  store i32 0, i32* %21, align 4
  %35 = load %struct.pdb_module_info*, %struct.pdb_module_info** %15, align 8
  %36 = getelementptr inbounds %struct.pdb_module_info, %struct.pdb_module_info* %35, i32 0, i32 1
  %37 = load %struct.pdb_file_info*, %struct.pdb_file_info** %36, align 8
  %38 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %37, i64 0
  %39 = bitcast %struct.pdb_file_info* %22 to i8*
  %40 = bitcast %struct.pdb_file_info* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 20
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = bitcast i8* %62 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %17, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = bitcast %struct.TYPE_6__* %64 to i8*
  store i8* %65, i8** %18, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %67 = bitcast %struct.TYPE_6__* %66 to i8*
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8* %72, i8** %19, align 8
  br label %73

73:                                               ; preds = %148, %34
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %75 = load i8*, i8** %19, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_6__*
  %77 = icmp ult %struct.TYPE_6__* %74, %76
  br i1 %77, label %78, label %166

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %80 = bitcast %struct.TYPE_6__* %79 to i8*
  %81 = getelementptr inbounds i8, i8* %80, i64 16
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  store i8* %87, i8** %20, align 8
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* @CV_MAX_MODULES, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %78
  %94 = load %struct.pdb_lookup*, %struct.pdb_lookup** %14, align 8
  %95 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcasecmp(i8* %96, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = load %struct.pdb_module_info*, %struct.pdb_module_info** %15, align 8
  %111 = getelementptr inbounds %struct.pdb_module_info, %struct.pdb_module_info* %110, i32 0, i32 1
  %112 = load %struct.pdb_file_info*, %struct.pdb_file_info** %111, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %112, i64 %114
  %116 = bitcast %struct.pdb_file_info* %115 to i8*
  %117 = bitcast %struct.pdb_file_info* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  br label %148

118:                                              ; preds = %93
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %23, i32 0, i32 0
  store i8* %121, i8** %122, align 8
  %123 = load i32, i32* @PDB_JG, align 4
  %124 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %23, i32 0, i32 3
  store i32 %123, i32* %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %23, i32 0, i32 2
  store i32 %127, i32* %128, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %23, i32 0, i32 1
  store i32 %131, i32* %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %135, i32 %138, i32 %141)
  %143 = load %struct.process*, %struct.process** %9, align 8
  %144 = load %struct.msc_debug_info*, %struct.msc_debug_info** %10, align 8
  %145 = load %struct.pdb_module_info*, %struct.pdb_module_info** %15, align 8
  %146 = load i32, i32* %21, align 4
  %147 = call i32 @pdb_process_internal(%struct.process* %143, %struct.msc_debug_info* %144, %struct.pdb_lookup* %23, %struct.pdb_module_info* %145, i32 %146)
  br label %148

148:                                              ; preds = %118, %109
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %21, align 4
  %151 = load i8*, i8** %18, align 8
  %152 = load i8*, i8** %20, align 8
  %153 = load i8*, i8** %18, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = load i8*, i8** %20, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %156, %159
  %161 = add nsw i64 %160, 1
  %162 = add nsw i64 %161, 3
  %163 = and i64 %162, -4
  %164 = getelementptr inbounds i8, i8* %151, i64 %163
  %165 = bitcast i8* %164 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %165, %struct.TYPE_6__** %17, align 8
  br label %73

166:                                              ; preds = %73
  %167 = load i32, i32* %21, align 4
  %168 = load %struct.pdb_module_info*, %struct.pdb_module_info** %15, align 8
  %169 = getelementptr inbounds %struct.pdb_module_info, %struct.pdb_module_info* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %166, %29, %26, %8
  %171 = load i32, i32* %16, align 4
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  store i32 0, i32* %16, align 4
  %174 = load %struct.pdb_module_info*, %struct.pdb_module_info** %15, align 8
  %175 = getelementptr inbounds %struct.pdb_module_info, %struct.pdb_module_info* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  br label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv_zmodules, align 8
  %178 = load i32, i32* %16, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %179
  store %struct.TYPE_8__* %180, %struct.TYPE_8__** @cv_current_module, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv_current_module, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %176
  %188 = load i64, i64* @TRUE, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cv_current_module, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @FIXME(i8*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @TRACE(i8*, i8*, i32, i32) #2

declare dso_local i32 @pdb_process_internal(%struct.process*, %struct.msc_debug_info*, %struct.pdb_lookup*, %struct.pdb_module_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
