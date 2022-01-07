; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_protect.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i32 }

@CRYPTPROTECT_PROMPT_ON_PROTECT = common dso_local global i32 0, align 4
@MIMIKATZ = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i32] [i32 100, i32 97, i32 116, i32 97, i32 0], align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 100, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 101, i32 110, i32 116, i32 114, i32 111, i32 112, i32 121, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 109, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@CRYPTPROTECT_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@CRYPTPROTECT_SYSTEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 112, i32 114, i32 111, i32 109, i32 112, i32 116, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 99, i32 0], align 4
@.str.7 = private unnamed_addr constant [19 x i32] [i32 10, i32 100, i32 97, i32 116, i32 97, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [18 x i32] [i32 100, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [15 x i32] [i32 102, i32 108, i32 97, i32 103, i32 115, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.11 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [15 x i32] [i32 112, i32 114, i32 111, i32 109, i32 112, i32 116, i32 32, i32 102, i32 108, i32 97, i32 103, i32 115, i32 58, i32 32, i32 0], align 4
@.str.13 = private unnamed_addr constant [15 x i32] [i32 101, i32 110, i32 116, i32 114, i32 111, i32 112, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.14 = private unnamed_addr constant [3 x i32] [i32 10, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [4 x i32] [i32 111, i32 117, i32 116, i32 0], align 4
@.str.16 = private unnamed_addr constant [26 x i32] [i32 87, i32 114, i32 105, i32 116, i32 101, i32 32, i32 116, i32 111, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 105, i32 115, i32 32, i32 79, i32 75, i32 10, i32 0], align 4
@.str.17 = private unnamed_addr constant [7 x i32] [i32 66, i32 108, i32 111, i32 98, i32 58, i32 10, i32 0], align 4
@.str.18 = private unnamed_addr constant [17 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 80, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_protect(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %16 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  store i8* null, i8** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 32, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %19 = load i32, i32* @CRYPTPROTECT_PROMPT_ON_PROTECT, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %22 = load i32*, i32** @MIMIKATZ, align 8
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i32 0, i32* %23, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32**, i32*** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %27 = bitcast i64* %26 to i8**
  %28 = load i32*, i32** @MIMIKATZ, align 8
  %29 = call i64 @kull_m_string_args_byName(i32 %24, i32** %25, i8* bitcast ([5 x i32]* @.str to i8*), i8** %27, i32* %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32**, i32*** %4, align 8
  %32 = call i64 @kull_m_string_args_byName(i32 %30, i32** %31, i8* bitcast ([12 x i32]* @.str.1 to i8*), i8** %9, i32* null)
  %33 = load i32, i32* %3, align 4
  %34 = load i32**, i32*** %4, align 8
  %35 = call i64 @kull_m_string_args_byName(i32 %33, i32** %34, i8* bitcast ([8 x i32]* @.str.2 to i8*), i8** %10, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %41 = call i32 @kull_m_string_stringToHexBuffer(i8* %38, i64* %39, i32* %40)
  br label %42

42:                                               ; preds = %37, %2
  %43 = load i32, i32* %3, align 4
  %44 = load i32**, i32*** %4, align 8
  %45 = call i64 @kull_m_string_args_byName(i32 %43, i32** %44, i8* bitcast ([8 x i32]* @.str.3 to i8*), i8** null, i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @CRYPTPROTECT_LOCAL_MACHINE, align 4
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %3, align 4
  %53 = load i32**, i32*** %4, align 8
  %54 = call i64 @kull_m_string_args_byName(i32 %52, i32** %53, i8* bitcast ([7 x i32]* @.str.4 to i8*), i8** null, i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @CRYPTPROTECT_SYSTEM, align 4
  %58 = load i32, i32* %14, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %3, align 4
  %62 = load i32**, i32*** %4, align 8
  %63 = call i64 @kull_m_string_args_byName(i32 %61, i32** %62, i8* bitcast ([7 x i32]* @.str.5 to i8*), i8** null, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %65
  %68 = phi %struct.TYPE_8__* [ %12, %65 ], [ null, %66 ]
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %13, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32**, i32*** %4, align 8
  %71 = call i64 @kull_m_string_args_byName(i32 %69, i32** %70, i8* bitcast ([2 x i32]* @.str.6 to i8*), i8** null, i32* null)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 2, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str.7 to i8*), i64 %76)
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i8*, i8** %9, align 8
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i8* [ %81, %80 ], [ bitcast ([1 x i32]* @.str.9 to i8*), %82 ]
  %85 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.8 to i8*), i8* %84)
  %86 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.10 to i8*))
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @kull_m_dpapi_displayProtectionFlags(i32 %87)
  %89 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.11 to i8*))
  %90 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.12 to i8*))
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @kull_m_dpapi_displayPromptFlags(i32 %96)
  br label %98

98:                                               ; preds = %93, %83
  %99 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.11 to i8*))
  %100 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.13 to i8*))
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @kull_m_string_wprintf_hex(i64 %102, i32 %104, i32 0)
  %106 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.14 to i8*))
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @wcslen(i8* %109)
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %114, i32* %115, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i64 @CryptProtectData(%struct.TYPE_7__* %5, i8* %116, %struct.TYPE_7__* %7, i32* null, %struct.TYPE_8__* %117, i32 %118, %struct.TYPE_7__* %6)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %163

121:                                              ; preds = %98
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @kull_m_dpapi_blob_create(i64 %123)
  store i32 %124, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @kull_m_dpapi_blob_descr(i32 0, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @kull_m_dpapi_blob_delete(i32 %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.11 to i8*))
  %133 = load i32, i32* %3, align 4
  %134 = load i32**, i32*** %4, align 8
  %135 = call i64 @kull_m_string_args_byName(i32 %133, i32** %134, i8* bitcast ([4 x i32]* @.str.15 to i8*), i8** %11, i32* null)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @kull_m_file_writeData(i8* %138, i64 %140, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.16 to i8*), i8* %146)
  br label %148

148:                                              ; preds = %145, %137
  br label %159

149:                                              ; preds = %131
  %150 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.17 to i8*))
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = or i32 %155, 1048576
  %157 = call i32 @kull_m_string_wprintf_hex(i64 %152, i32 %154, i32 %156)
  %158 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.11 to i8*))
  br label %159

159:                                              ; preds = %149, %148
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @LocalFree(i64 %161)
  br label %165

163:                                              ; preds = %98
  %164 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([17 x i32]* @.str.18 to i8*))
  br label %165

165:                                              ; preds = %163, %159
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @LocalFree(i64 %171)
  br label %173

173:                                              ; preds = %169, %165
  %174 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i8**, i32*) #2

declare dso_local i32 @kull_m_string_stringToHexBuffer(i8*, i64*, i32*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @kull_m_dpapi_displayProtectionFlags(i32) #2

declare dso_local i32 @kull_m_dpapi_displayPromptFlags(i32) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i32, i32) #2

declare dso_local i32 @wcslen(i8*) #2

declare dso_local i64 @CryptProtectData(%struct.TYPE_7__*, i8*, %struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @kull_m_dpapi_blob_create(i64) #2

declare dso_local i32 @kull_m_dpapi_blob_descr(i32, i32) #2

declare dso_local i32 @kull_m_dpapi_blob_delete(i32) #2

declare dso_local i64 @kull_m_file_writeData(i8*, i64, i32) #2

declare dso_local i32 @LocalFree(i64) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
