; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_packages.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_packages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32 }

@SECBUFFER_TOKEN = common dso_local global i32 0, align 4
@SECBUFFER_VERSION = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i32] [i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 68, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 67, i32 97, i32 112, i32 97, i32 98, i32 105, i32 108, i32 105, i32 116, i32 105, i32 101, i32 115, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 32, i32 59, i32 32, i32 0], align 4
@PACKAGES_FLAGS = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [2 x i32] [i32 63, i32 0], align 4
@.str.3 = private unnamed_addr constant [65 x i32] [i32 41, i32 10, i32 77, i32 97, i32 120, i32 84, i32 111, i32 107, i32 101, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 82, i32 80, i32 67, i32 73, i32 68, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 52, i32 120, i32 32, i32 40, i32 37, i32 104, i32 117, i32 41, i32 10, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 104, i32 117, i32 10, i32 0], align 4
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@ISC_REQ_ALLOCATE_MEMORY = common dso_local global i32 0, align 4
@SECURITY_NATIVE_DREP = common dso_local global i32 0, align 4
@SEC_I_COMPLETE_AND_CONTINUE = common dso_local global i64 0, align 8
@SEC_I_COMPLETE_NEEDED = common dso_local global i64 0, align 8
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@SEC_I_INCOMPLETE_CREDENTIALS = common dso_local global i64 0, align 8
@SEC_E_INCOMPLETE_MESSAGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [35 x i32] [i32 73, i32 110, i32 105, i32 116, i32 105, i32 97, i32 108, i32 105, i32 122, i32 101, i32 83, i32 101, i32 99, i32 117, i32 114, i32 105, i32 116, i32 121, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [34 x i32] [i32 65, i32 99, i32 113, i32 117, i32 105, i32 114, i32 101, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [35 x i32] [i32 69, i32 110, i32 117, i32 109, i32 101, i32 114, i32 97, i32 116, i32 101, i32 83, i32 101, i32 99, i32 117, i32 114, i32 105, i32 116, i32 121, i32 80, i32 97, i32 99, i32 107, i32 97, i32 103, i32 101, i32 115, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_packages(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %15 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %17 = load i32, i32* @SECBUFFER_TOKEN, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %19 = load i32, i32* @SECBUFFER_VERSION, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store %struct.TYPE_9__* inttoptr (i64 1 to %struct.TYPE_9__*), %struct.TYPE_9__** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %22 = ptrtoint %struct.TYPE_9__* %12 to i32
  store i32 %22, i32* %21, align 8
  %23 = call i64 @EnumerateSecurityPackages(i64* %6, %struct.TYPE_10__** %9)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @SEC_E_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %178

27:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %172, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %175

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @kprintf(i8* bitcast ([56 x i32]* @.str to i8*), i32 %37, i32 %42, i64 %47)
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %77, %32
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %50, 64
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = lshr i64 %57, %58
  %60 = and i64 %59, 1
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %52
  %63 = load i64, i64* %8, align 8
  %64 = load i8**, i8*** @PACKAGES_FLAGS, align 8
  %65 = call i64 @ARRAYSIZE(i8** %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8**, i8*** @PACKAGES_FLAGS, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  br label %73

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i8* [ %71, %67 ], [ bitcast ([2 x i32]* @.str.2 to i8*), %72 ]
  %75 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.1 to i8*), i8* %74)
  br label %76

76:                                               ; preds = %73, %52
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %49

80:                                               ; preds = %49
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @kprintf(i8* bitcast ([65 x i32]* @.str.3 to i8*), i32 %85, i32 %90, i32 %95, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %170

104:                                              ; preds = %80
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %111 = call i64 @AcquireCredentialsHandle(i32* null, i32 %109, i32 %110, i32* null, i32* null, i32* null, i32* null, i32* %10, i32* null)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @SEC_E_OK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %166

115:                                              ; preds = %104
  %116 = load i32**, i32*** %4, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @ISC_REQ_ALLOCATE_MEMORY, align 4
  %120 = load i32, i32* @SECURITY_NATIVE_DREP, align 4
  %121 = call i64 @InitializeSecurityContext(i32* %10, i32* null, i32* %118, i32 %119, i32 0, i32 %120, i32* null, i32 0, i32* %11, %struct.TYPE_8__* %13, i64* %14, i32* null)
  store i64 %121, i64* %5, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* @SEC_E_OK, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %145, label %125

125:                                              ; preds = %115
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %5, align 8
  %139 = load i64, i64* @SEC_I_INCOMPLETE_CREDENTIALS, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @SEC_E_INCOMPLETE_MESSAGE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %141, %137, %133, %129, %125, %115
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @kull_m_string_wprintf_hex(%struct.TYPE_10__* %147, i32 %149, i32 1048577)
  %151 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = icmp ne %struct.TYPE_10__* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = call i32 @FreeContextBuffer(%struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %155, %145
  %160 = call i32 @DeleteSecurityContext(i32* %11)
  br label %164

161:                                              ; preds = %141
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @PRINT_ERROR(i8* bitcast ([35 x i32]* @.str.5 to i8*), i64 %162)
  br label %164

164:                                              ; preds = %161, %159
  %165 = call i32 @FreeCredentialHandle(i32* %10)
  br label %169

166:                                              ; preds = %104
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.6 to i8*), i64 %167)
  br label %169

169:                                              ; preds = %166, %164
  br label %170

170:                                              ; preds = %169, %80
  %171 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %172

172:                                              ; preds = %170
  %173 = load i64, i64* %7, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %7, align 8
  br label %28

175:                                              ; preds = %28
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %177 = call i32 @FreeContextBuffer(%struct.TYPE_10__* %176)
  br label %181

178:                                              ; preds = %2
  %179 = load i64, i64* %5, align 8
  %180 = call i32 @PRINT_ERROR(i8* bitcast ([35 x i32]* @.str.7 to i8*), i64 %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @EnumerateSecurityPackages(i64*, %struct.TYPE_10__**) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i64 @ARRAYSIZE(i8**) #2

declare dso_local i64 @AcquireCredentialsHandle(i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @InitializeSecurityContext(i32*, i32*, i32*, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_8__*, i64*, i32*) #2

declare dso_local i32 @kull_m_string_wprintf_hex(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @FreeContextBuffer(%struct.TYPE_10__*) #2

declare dso_local i32 @DeleteSecurityContext(i32*) #2

declare dso_local i32 @PRINT_ERROR(i8*, i64) #2

declare dso_local i32 @FreeCredentialHandle(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
