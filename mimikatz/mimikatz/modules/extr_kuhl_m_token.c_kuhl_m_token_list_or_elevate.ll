; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_token.c_kuhl_m_token_list_or_elevate.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_token.c_kuhl_m_token_list_or_elevate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i64, i32*, i64, i64, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32* }

@WinNullSid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i32] [i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 119, i32 104, i32 111, i32 97, i32 109, i32 105, i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 105, i32 100, i32 0], align 4
@.str.4 = private unnamed_addr constant [12 x i32] [i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 97, i32 100, i32 109, i32 105, i32 110, i32 0], align 4
@WinAccountDomainAdminsSid = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i32] [i32 101, i32 110, i32 116, i32 101, i32 114, i32 112, i32 114, i32 105, i32 115, i32 101, i32 97, i32 100, i32 109, i32 105, i32 110, i32 0], align 4
@WinAccountEnterpriseAdminsSid = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i32] [i32 97, i32 100, i32 109, i32 105, i32 110, i32 0], align 4
@WinBuiltinAdministratorsSid = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@WinLocalSystemSid = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [35 x i32] [i32 78, i32 111, i32 32, i32 117, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 32, i32 97, i32 118, i32 97, i32 105, i32 108, i32 97, i32 98, i32 108, i32 101, i32 32, i32 119, i32 104, i32 101, i32 110, i32 32, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [45 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 108, i32 111, i32 99, i32 97, i32 108, i32 95, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 95, i32 117, i32 115, i32 101, i32 114, i32 95, i32 103, i32 101, i32 116, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 83, i32 73, i32 68, i32 0], align 4
@.str.10 = private unnamed_addr constant [43 x i32] [i32 84, i32 111, i32 107, i32 101, i32 110, i32 32, i32 73, i32 100, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 85, i32 115, i32 101, i32 114, i32 32, i32 110, i32 97, i32 109, i32 101, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 83, i32 73, i32 68, i32 32, i32 110, i32 97, i32 109, i32 101, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.11 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [7 x i32] [i32 37, i32 115, i32 92, i32 37, i32 115, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [34 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 116, i32 111, i32 107, i32 101, i32 110, i32 95, i32 103, i32 101, i32 116, i32 78, i32 97, i32 109, i32 101, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 70, i32 114, i32 111, i32 109, i32 83, i32 73, i32 68, i32 0], align 4
@.str.14 = private unnamed_addr constant [44 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 108, i32 111, i32 99, i32 97, i32 108, i32 95, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 95, i32 117, i32 115, i32 101, i32 114, i32 95, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 87, i32 101, i32 108, i32 108, i32 75, i32 110, i32 111, i32 119, i32 110, i32 83, i32 105, i32 100, i32 0], align 4
@.str.15 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@kuhl_m_token_list_or_elevate_callback = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_token_list_or_elevate(i32 %0, i32** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %21 = load i64, i64* %8, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %20, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 7
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 8
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 9
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* @WinNullSid, align 8
  store i64 %28, i64* %10, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %14, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %35 = call i64 @kull_m_string_args_byName(i32 %32, i32** %33, i8* bitcast ([8 x i32]* @.str to i8*), i8** %34, i8* bitcast ([11 x i32]* @.str.1 to i8*))
  br label %36

36:                                               ; preds = %31, %4
  %37 = load i32, i32* %5, align 4
  %38 = load i32**, i32*** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %40 = call i64 @kull_m_string_args_byName(i32 %37, i32** %38, i8* bitcast ([5 x i32]* @.str.2 to i8*), i8** %39, i8* null)
  %41 = load i32, i32* %5, align 4
  %42 = load i32**, i32*** %6, align 8
  %43 = call i64 @kull_m_string_args_byName(i32 %41, i32** %42, i8* bitcast ([3 x i32]* @.str.3 to i8*), i8** %13, i8* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @wcstoul(i8* %46, i32* null, i32 0)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i64 %47, i64* %48, align 8
  br label %95

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = load i32**, i32*** %6, align 8
  %52 = call i64 @kull_m_string_args_byName(i32 %50, i32** %51, i8* bitcast ([12 x i32]* @.str.4 to i8*), i8** null, i8* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* @WinAccountDomainAdminsSid, align 8
  store i64 %55, i64* %10, align 8
  br label %94

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = load i32**, i32*** %6, align 8
  %59 = call i64 @kull_m_string_args_byName(i32 %57, i32** %58, i8* bitcast ([16 x i32]* @.str.5 to i8*), i8** null, i8* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* @WinAccountEnterpriseAdminsSid, align 8
  store i64 %62, i64* %10, align 8
  br label %93

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = load i32**, i32*** %6, align 8
  %66 = call i64 @kull_m_string_args_byName(i32 %64, i32** %65, i8* bitcast ([6 x i32]* @.str.6 to i8*), i8** null, i8* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @WinBuiltinAdministratorsSid, align 8
  store i64 %69, i64* %10, align 8
  br label %92

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %5, align 4
  %79 = load i32**, i32*** %6, align 8
  %80 = call i64 @kull_m_string_args_byName(i32 %78, i32** %79, i8* bitcast ([7 x i32]* @.str.7 to i8*), i8** null, i8* null)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77, %73
  %83 = load i64, i64* @WinLocalSystemSid, align 8
  store i64 %83, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = call i32 @PRINT_ERROR(i8* bitcast ([35 x i32]* @.str.8 to i8*))
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i8* null, i8** %89, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %77
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %61
  br label %94

94:                                               ; preds = %93, %54
  br label %95

95:                                               ; preds = %94, %45
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @WinAccountDomainAdminsSid, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @WinAccountEnterpriseAdminsSid, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99, %95
  %104 = call i32 @kull_m_net_getCurrentDomainInfo(%struct.TYPE_6__** %14)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([45 x i32]* @.str.9 to i8*))
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* %10, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %213

126:                                              ; preds = %122, %119, %115, %112, %109
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  br label %136

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i8* [ %134, %132 ], [ bitcast ([1 x i32]* @.str.11 to i8*), %135 ]
  %138 = call i32 (i8*, ...) @kprintf(i8* bitcast ([43 x i32]* @.str.10 to i8*), i64 %128, i8* %137)
  %139 = load i64, i64* %10, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %136
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %144 = icmp ne %struct.TYPE_6__* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  br label %150

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi i32* [ %148, %145 ], [ null, %149 ]
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %153 = call i64 @kull_m_net_CreateWellKnownSid(i64 %142, i32* %151, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @kull_m_token_getNameDomainFromSID(i32 %157, i32* %11, i32* %12, i32* null, i32* null)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.12 to i8*), i32 %161, i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @LocalFree(i32 %164)
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @LocalFree(i32 %166)
  br label %170

168:                                              ; preds = %155
  %169 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([34 x i32]* @.str.13 to i8*))
  br label %170

170:                                              ; preds = %168, %160
  br label %173

171:                                              ; preds = %150
  %172 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([44 x i32]* @.str.14 to i8*))
  br label %173

173:                                              ; preds = %171, %170
  br label %176

174:                                              ; preds = %136
  %175 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.15 to i8*))
  br label %176

176:                                              ; preds = %174, %173
  %177 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.15 to i8*))
  %178 = load i64, i64* %7, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load i64, i64* %8, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %191, %187, %183, %180, %176
  %196 = load i32, i32* @kuhl_m_token_list_or_elevate_callback, align 4
  %197 = call i32 @kull_m_token_getTokensUnique(i32 %196, %struct.TYPE_7__* %9)
  br label %198

198:                                              ; preds = %195, %191
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @LocalFree(i32 %204)
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %208 = icmp ne %struct.TYPE_6__* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %211 = call i32 @LsaFreeMemory(%struct.TYPE_6__* %210)
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %122
  %214 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %214
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i8**, i8*) #1

declare dso_local i64 @wcstoul(i8*, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @kull_m_net_getCurrentDomainInfo(%struct.TYPE_6__**) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @kull_m_net_CreateWellKnownSid(i64, i32*, i32*) #1

declare dso_local i64 @kull_m_token_getNameDomainFromSID(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @kull_m_token_getTokensUnique(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @LsaFreeMemory(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
