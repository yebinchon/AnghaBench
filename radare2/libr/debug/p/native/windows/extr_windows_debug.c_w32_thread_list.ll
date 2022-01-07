; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_thread_list.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_thread_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }

@TH32CS_SNAPTHREAD = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"w32_thread_list/CreateToolhelp32Snapshot\00", align 1
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@R_DBG_PROC_SLEEP = common dso_local global i8 0, align 1
@R_REG_TYPE_GPR = common dso_local global i32 0, align 4
@R_DBG_PROC_DEAD = common dso_local global i8 0, align 1
@R_DBG_PROC_RUN = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"w32_thread_list/Thread32First\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @w32_thread_list(%struct.TYPE_12__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load i32, i32* @TH32CS_SNAPTHREAD, align 4
  %20 = call i64 @w32_CreateToolhelp32Snapshot(i32 %19, i32 0)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = call i32 @r_sys_perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %4, align 8
  br label %136

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 12, i32* %28, align 4
  %29 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %30 = load i32, i32* @PROCESS_VM_READ, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @w32_OpenProcess(i32 %31, i32 %32, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @Thread32First(i64 %35, %struct.TYPE_11__* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %130

38:                                               ; preds = %27
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %12, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = call i8* @__resolve_path(i64 %43, i32* null)
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @ProcessIdToSessionId(i32 %45, i32* %13)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %120, %56
  %61 = load i8, i8* @R_DBG_PROC_SLEEP, align 1
  store i8 %61, i8* %15, align 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %66
  %73 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %73, i8 0, i64 12, i1 false)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %80 = bitcast %struct.TYPE_14__* %17 to i32*
  %81 = call i32 @w32_reg_read(%struct.TYPE_12__* %78, i32 %79, i32* %80, i32 12)
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_13__* @__find_thread(%struct.TYPE_12__* %84, i32 %86)
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %18, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %72
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i8, i8* @R_DBG_PROC_DEAD, align 1
  store i8 %96, i8* %15, align 1
  br label %107

97:                                               ; preds = %90
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i8, i8* @R_DBG_PROC_SLEEP, align 1
  store i8 %103, i8* %15, align 1
  br label %106

104:                                              ; preds = %97
  %105 = load i8, i8* @R_DBG_PROC_RUN, align 1
  store i8 %105, i8* %15, align 1
  br label %106

106:                                              ; preds = %104, %102
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %72
  br label %109

109:                                              ; preds = %108, %66
  %110 = load i32*, i32** %7, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i8, i8* %15, align 1
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @r_debug_pid_new(i8* %111, i32 %113, i32 %114, i8 signext %115, i32 %116)
  %118 = call i32 @r_list_append(i32* %110, i32 %117)
  br label %119

119:                                              ; preds = %109, %60
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %8, align 8
  %122 = call i64 @Thread32Next(i64 %121, %struct.TYPE_11__* %9)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %60, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @free(i8* %128)
  br label %132

130:                                              ; preds = %27
  %131 = call i32 @r_sys_perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %124
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @CloseHandle(i64 %133)
  %135 = load i32*, i32** %7, align 8
  store i32* %135, i32** %4, align 8
  br label %136

136:                                              ; preds = %132, %24
  %137 = load i32*, i32** %4, align 8
  ret i32* %137
}

declare dso_local i64 @w32_CreateToolhelp32Snapshot(i32, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i64 @w32_OpenProcess(i32, i32, i32) #1

declare dso_local i64 @Thread32First(i64, %struct.TYPE_11__*) #1

declare dso_local i8* @__resolve_path(i64, i32*) #1

declare dso_local i64 @ProcessIdToSessionId(i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @w32_reg_read(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @__find_thread(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @r_list_append(i32*, i32) #1

declare dso_local i32 @r_debug_pid_new(i8*, i32, i32, i8 signext, i32) #1

declare dso_local i64 @Thread32Next(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
