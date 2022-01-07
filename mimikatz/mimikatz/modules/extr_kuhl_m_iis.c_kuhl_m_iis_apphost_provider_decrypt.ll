; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_provider_decrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_provider_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 108, i32 105, i32 118, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 112, i32 118, i32 107, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i32] [i32 32, i32 32, i32 124, i32 32, i32 76, i32 105, i32 118, i32 101, i32 32, i32 75, i32 101, i32 121, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 45, i32 32, i32 37, i32 115, i32 32, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 109, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@MIMIKATZ_NT_BUILD_NUMBER = common dso_local global i64 0, align 8
@KULL_M_WIN_BUILD_XP = common dso_local global i64 0, align 8
@MS_ENH_RSA_AES_PROV_XP = common dso_local global i32 0, align 4
@MS_ENH_RSA_AES_PROV = common dso_local global i32 0, align 4
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@CRYPT_MACHINE_KEYSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i32] [i32 79, i32 75, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [29 x i32] [i32 32, i32 32, i32 124, i32 32, i32 80, i32 86, i32 75, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 45, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 58, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [21 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 73, i32 109, i32 112, i32 111, i32 114, i32 116, i32 75, i32 101, i32 121, i32 32, i32 40, i32 82, i32 83, i32 65, i32 41, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i32] [i32 32, i32 32, i32 124, i32 32, i32 80, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [13 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 0], align 4
@.str.10 = private unnamed_addr constant [25 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 73, i32 109, i32 112, i32 111, i32 114, i32 116, i32 75, i32 101, i32 121, i32 32, i32 40, i32 115, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 41, i32 0], align 4
@.str.11 = private unnamed_addr constant [20 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 65, i32 99, i32 113, i32 117, i32 105, i32 114, i32 101, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_iis_apphost_provider_decrypt(i32 %0, i32** %1, i8* %2, i64 %3, %struct.TYPE_12__* %4, i32 %5, %struct.TYPE_12__* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32** %1, i32*** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %15, align 8
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %22, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %24, align 8
  store i8* null, i8** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32**, i32*** %10, align 8
  %28 = call i64 @kull_m_string_args_byName(i32 %26, i32** %27, i8* bitcast ([5 x i32]* @.str to i8*), i8** null, i32* null)
  store i64 %28, i64* %17, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32**, i32*** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @kull_m_string_args_byName(i32 %29, i32** %30, i8* %31, i8** %25, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %8
  %35 = load i32, i32* %9, align 4
  %36 = load i32**, i32*** %10, align 8
  %37 = call i64 @kull_m_string_args_byName(i32 %35, i32** %36, i8* bitcast ([4 x i32]* @.str.1 to i8*), i8** %25, i32* null)
  br label %38

38:                                               ; preds = %34, %8
  %39 = load i64, i64* %17, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %25, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %183

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @LPTR, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @LocalAlloc(i32 %45, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %18, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %182

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @RtlCopyMemory(%struct.TYPE_12__* %51, %struct.TYPE_12__* %52, i32 %53)
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %19, align 4
  %56 = load i64, i64* %17, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.4, i64 0, i64 0)
  %64 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.2 to i8*), i8* %59, i32* %63)
  br label %65

65:                                               ; preds = %58, %50
  %66 = load i64, i64* %17, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8*, i8** %11, align 8
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ null, %70 ]
  %73 = load i64, i64* @MIMIKATZ_NT_BUILD_NUMBER, align 8
  %74 = load i64, i64* @KULL_M_WIN_BUILD_XP, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @MS_ENH_RSA_AES_PROV_XP, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @MS_ENH_RSA_AES_PROV, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load i32, i32* @PROV_RSA_AES, align 4
  %83 = load i64, i64* %17, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 0, %85 ], [ %87, %86 ]
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @CRYPT_MACHINE_KEYSET, align 4
  br label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  %97 = or i32 %89, %96
  %98 = call i64 @CryptAcquireContext(i32* %21, i8* %72, i32 %81, i32 %82, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %177

100:                                              ; preds = %95
  %101 = load i64, i64* %17, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.5 to i8*))
  br label %127

105:                                              ; preds = %100
  %106 = load i8*, i8** %25, align 8
  %107 = call i64 @kull_m_file_readData(i8* %106, %struct.TYPE_12__** %24, i32* %20)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %25, align 8
  %112 = call i32 (i8*, ...) @kprintf(i8* bitcast ([29 x i32]* @.str.6 to i8*), i8* %110, i8* %111)
  %113 = load i32, i32* %21, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @CryptImportKey(i32 %113, %struct.TYPE_12__* %115, i32 %118, i64 0, i32 0, i64* %22)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.5 to i8*))
  br label %125

123:                                              ; preds = %109
  %124 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.7 to i8*))
  br label %125

125:                                              ; preds = %123, %121
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %103
  %128 = load i64, i64* %17, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %22, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %21, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i64, i64* %22, align 8
  %138 = call i64 @CryptImportKey(i32 %134, %struct.TYPE_12__* %135, i32 %136, i64 %137, i32 0, i64* %23)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %133
  %141 = load i64, i64* %23, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %144 = call i64 @CryptDecrypt(i64 %141, i32 0, i32 %142, i32 0, %struct.TYPE_12__* %143, i32* %19)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 4
  %149 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.8 to i8*), %struct.TYPE_12__* %148)
  br label %152

150:                                              ; preds = %140
  %151 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str.9 to i8*))
  br label %152

152:                                              ; preds = %150, %146
  %153 = load i64, i64* %23, align 8
  %154 = call i32 @CryptDestroyKey(i64 %153)
  br label %157

155:                                              ; preds = %133
  %156 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([25 x i32]* @.str.10 to i8*))
  br label %157

157:                                              ; preds = %155, %152
  br label %158

158:                                              ; preds = %157, %130
  %159 = load i64, i64* %17, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %174, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %22, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i64, i64* %22, align 8
  %166 = call i32 @CryptDestroyKey(i64 %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %169 = icmp ne %struct.TYPE_12__* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %172 = call i32 @LocalFree(%struct.TYPE_12__* %171)
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i32, i32* %21, align 4
  %176 = call i32 @CryptReleaseContext(i32 %175, i32 0)
  br label %179

177:                                              ; preds = %95
  %178 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.11 to i8*))
  br label %179

179:                                              ; preds = %177, %174
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %181 = call i32 @LocalFree(%struct.TYPE_12__* %180)
  br label %182

182:                                              ; preds = %179, %44
  br label %183

183:                                              ; preds = %182, %41
  ret void
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i8**, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @CryptAcquireContext(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @kull_m_file_readData(i8*, %struct.TYPE_12__**, i32*) #1

declare dso_local i64 @CryptImportKey(i32, %struct.TYPE_12__*, i32, i64, i32, i64*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @CryptDecrypt(i64, i32, i32, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @CryptDestroyKey(i64) #1

declare dso_local i32 @LocalFree(%struct.TYPE_12__*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
