; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdAccounts.c_cmdAccounts.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdAccounts.c_cmdAccounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i32] [i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_ACCOUNTS_SYNTAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@MSG_ACCOUNTS_HELP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 47, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 0], align 4
@StdErr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i32] [i32 84, i32 104, i32 101, i32 32, i32 47, i32 68, i32 79, i32 77, i32 65, i32 73, i32 78, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 32, i32 121, i32 101, i32 116, i32 46, i32 10, i32 0], align 4
@NERR_Success = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i32] [i32 47, i32 102, i32 111, i32 114, i32 99, i32 101, i32 108, i32 111, i32 103, i32 111, i32 102, i32 102, i32 58, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 110, i32 111, i32 0], align 4
@TIMEQ_FOREVER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i32] [i32 47, i32 70, i32 79, i32 82, i32 67, i32 69, i32 76, i32 79, i32 71, i32 79, i32 70, i32 70, i32 0], align 4
@.str.8 = private unnamed_addr constant [11 x i32] [i32 47, i32 109, i32 105, i32 110, i32 112, i32 119, i32 108, i32 101, i32 110, i32 58, i32 0], align 4
@.str.9 = private unnamed_addr constant [10 x i32] [i32 47, i32 77, i32 73, i32 78, i32 80, i32 87, i32 76, i32 69, i32 78, i32 0], align 4
@.str.10 = private unnamed_addr constant [11 x i32] [i32 47, i32 109, i32 97, i32 120, i32 112, i32 119, i32 97, i32 103, i32 101, i32 58, i32 0], align 4
@.str.11 = private unnamed_addr constant [10 x i32] [i32 117, i32 110, i32 108, i32 105, i32 109, i32 105, i32 116, i32 101, i32 100, i32 0], align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i32] [i32 47, i32 77, i32 65, i32 88, i32 80, i32 87, i32 76, i32 69, i32 78, i32 0], align 4
@.str.13 = private unnamed_addr constant [11 x i32] [i32 47, i32 109, i32 105, i32 110, i32 112, i32 119, i32 97, i32 103, i32 101, i32 58, i32 0], align 4
@.str.14 = private unnamed_addr constant [10 x i32] [i32 47, i32 77, i32 73, i32 78, i32 80, i32 87, i32 65, i32 71, i32 69, i32 0], align 4
@.str.15 = private unnamed_addr constant [11 x i32] [i32 47, i32 117, i32 110, i32 105, i32 113, i32 117, i32 101, i32 112, i32 119, i32 58, i32 0], align 4
@.str.16 = private unnamed_addr constant [10 x i32] [i32 47, i32 85, i32 78, i32 73, i32 81, i32 85, i32 69, i32 80, i32 87, i32 0], align 4
@.str.17 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@.str.18 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@UAS_ROLE_PRIMARY = common dso_local global i64 0, align 8
@NtProductLanManNt = common dso_local global i64 0, align 8
@NtProductServer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cmdAccounts(i64 %0, i64** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64** %1, i64*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %15, align 8
  store i64 58, i64* %16, align 8
  store i64 0, i64* %18, align 8
  store i64 2, i64* %14, align 8
  br label %20

20:                                               ; preds = %63, %2
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load i64**, i64*** %5, align 8
  %26 = load i64, i64* %14, align 8
  %27 = getelementptr inbounds i64*, i64** %25, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = call i64 @_wcsicmp(i64* %28, i8* bitcast ([5 x i32]* @.str to i8*))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = call i32 @PrintMessageString(i32 4381)
  %33 = load i32, i32* @StdOut, align 4
  %34 = call i32 @ConPuts(i32 %33, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %35 = load i32, i32* @MSG_ACCOUNTS_SYNTAX, align 4
  %36 = call i32 @PrintNetMessage(i32 %35)
  store i64 0, i64* %3, align 8
  br label %403

37:                                               ; preds = %24
  %38 = load i64**, i64*** %5, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i64*, i64** %38, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = call i64 @_wcsicmp(i64* %41, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = call i32 @PrintMessageString(i32 4381)
  %46 = load i32, i32* @StdOut, align 4
  %47 = call i32 @ConPuts(i32 %46, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %48 = load i32, i32* @MSG_ACCOUNTS_SYNTAX, align 4
  %49 = call i32 @PrintNetMessage(i32 %48)
  %50 = load i32, i32* @MSG_ACCOUNTS_HELP, align 4
  %51 = call i32 @PrintNetMessage(i32 %50)
  store i64 0, i64* %3, align 8
  br label %403

52:                                               ; preds = %37
  %53 = load i64**, i64*** %5, align 8
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds i64*, i64** %53, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = call i64 @_wcsicmp(i64* %56, i8* bitcast ([8 x i32]* @.str.3 to i8*))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @StdErr, align 4
  %61 = call i32 @ConPuts(i32 %60, i8* bitcast ([42 x i32]* @.str.4 to i8*))
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %14, align 8
  br label %20

66:                                               ; preds = %20
  %67 = bitcast %struct.TYPE_5__** %6 to i32*
  %68 = call i64 @NetUserModalsGet(i32* null, i32 0, i32* %67)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @NERR_Success, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %383

73:                                               ; preds = %66
  store i64 2, i64* %14, align 8
  br label %74

74:                                               ; preds = %231, %73
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %4, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %234

78:                                               ; preds = %74
  %79 = load i64**, i64*** %5, align 8
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds i64*, i64** %79, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = call i64 @_wcsnicmp(i64* %82, i8* bitcast ([14 x i32]* @.str.5 to i8*), i32 13)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %78
  %86 = load i64**, i64*** %5, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i64*, i64** %86, i64 %87
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 13
  store i64* %90, i64** %10, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = call i64 @wcsicmp(i64* %91, i8* bitcast ([3 x i32]* @.str.6 to i8*))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load i32, i32* @TIMEQ_FOREVER, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i64, i64* @TRUE, align 8
  store i64 %98, i64* %15, align 8
  br label %113

99:                                               ; preds = %85
  %100 = load i64*, i64** %10, align 8
  %101 = call i32 @wcstoul(i64* %100, i64** %11, i32 10)
  store i32 %101, i32* %13, align 4
  %102 = load i64*, i64** %11, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([13 x i32]* @.str.7 to i8*))
  store i64 1, i64* %18, align 8
  br label %383

107:                                              ; preds = %99
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 %108, 60
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i64, i64* @TRUE, align 8
  store i64 %112, i64* %15, align 8
  br label %113

113:                                              ; preds = %107, %94
  br label %230

114:                                              ; preds = %78
  %115 = load i64**, i64*** %5, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i64*, i64** %115, i64 %116
  %118 = load i64*, i64** %117, align 8
  %119 = call i64 @_wcsnicmp(i64* %118, i8* bitcast ([11 x i32]* @.str.8 to i8*), i32 10)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %114
  %122 = load i64**, i64*** %5, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds i64*, i64** %122, i64 %123
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 10
  store i64* %126, i64** %10, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = call i32 @wcstoul(i64* %127, i64** %11, i32 10)
  store i32 %128, i32* %13, align 4
  %129 = load i64*, i64** %11, align 8
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([10 x i32]* @.str.9 to i8*))
  store i64 1, i64* %18, align 8
  br label %383

134:                                              ; preds = %121
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %15, align 8
  br label %229

139:                                              ; preds = %114
  %140 = load i64**, i64*** %5, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i64*, i64** %140, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = call i64 @_wcsnicmp(i64* %143, i8* bitcast ([11 x i32]* @.str.10 to i8*), i32 10)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %175

146:                                              ; preds = %139
  %147 = load i64**, i64*** %5, align 8
  %148 = load i64, i64* %14, align 8
  %149 = getelementptr inbounds i64*, i64** %147, i64 %148
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 10
  store i64* %151, i64** %10, align 8
  %152 = load i64*, i64** %10, align 8
  %153 = call i64 @wcsicmp(i64* %152, i8* bitcast ([10 x i32]* @.str.11 to i8*))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %146
  %156 = load i32, i32* @ULONG_MAX, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i64, i64* @TRUE, align 8
  store i64 %159, i64* %15, align 8
  br label %174

160:                                              ; preds = %146
  %161 = load i64*, i64** %10, align 8
  %162 = call i32 @wcstoul(i64* %161, i64** %11, i32 10)
  store i32 %162, i32* %13, align 4
  %163 = load i64*, i64** %11, align 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([10 x i32]* @.str.12 to i8*))
  store i64 1, i64* %18, align 8
  br label %383

168:                                              ; preds = %160
  %169 = load i32, i32* %13, align 4
  %170 = mul nsw i32 %169, 86400
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load i64, i64* @TRUE, align 8
  store i64 %173, i64* %15, align 8
  br label %174

174:                                              ; preds = %168, %155
  br label %228

175:                                              ; preds = %139
  %176 = load i64**, i64*** %5, align 8
  %177 = load i64, i64* %14, align 8
  %178 = getelementptr inbounds i64*, i64** %176, i64 %177
  %179 = load i64*, i64** %178, align 8
  %180 = call i64 @_wcsnicmp(i64* %179, i8* bitcast ([11 x i32]* @.str.13 to i8*), i32 10)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %175
  %183 = load i64**, i64*** %5, align 8
  %184 = load i64, i64* %14, align 8
  %185 = getelementptr inbounds i64*, i64** %183, i64 %184
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 10
  store i64* %187, i64** %10, align 8
  %188 = load i64*, i64** %10, align 8
  %189 = call i32 @wcstoul(i64* %188, i64** %11, i32 10)
  store i32 %189, i32* %13, align 4
  %190 = load i64*, i64** %11, align 8
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([10 x i32]* @.str.14 to i8*))
  store i64 1, i64* %18, align 8
  br label %383

195:                                              ; preds = %182
  %196 = load i32, i32* %13, align 4
  %197 = mul nsw i32 %196, 86400
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load i64, i64* @TRUE, align 8
  store i64 %200, i64* %15, align 8
  br label %227

201:                                              ; preds = %175
  %202 = load i64**, i64*** %5, align 8
  %203 = load i64, i64* %14, align 8
  %204 = getelementptr inbounds i64*, i64** %202, i64 %203
  %205 = load i64*, i64** %204, align 8
  %206 = call i64 @_wcsnicmp(i64* %205, i8* bitcast ([11 x i32]* @.str.15 to i8*), i32 10)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %201
  %209 = load i64**, i64*** %5, align 8
  %210 = load i64, i64* %14, align 8
  %211 = getelementptr inbounds i64*, i64** %209, i64 %210
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 10
  store i64* %213, i64** %10, align 8
  %214 = load i64*, i64** %10, align 8
  %215 = call i32 @wcstoul(i64* %214, i64** %11, i32 10)
  store i32 %215, i32* %13, align 4
  %216 = load i64*, i64** %11, align 8
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %208
  %220 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([10 x i32]* @.str.16 to i8*))
  store i64 1, i64* %18, align 8
  br label %383

221:                                              ; preds = %208
  %222 = load i32, i32* %13, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  %225 = load i64, i64* @TRUE, align 8
  store i64 %225, i64* %15, align 8
  br label %226

226:                                              ; preds = %221, %201
  br label %227

227:                                              ; preds = %226, %195
  br label %228

228:                                              ; preds = %227, %174
  br label %229

229:                                              ; preds = %228, %134
  br label %230

230:                                              ; preds = %229, %113
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %14, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %14, align 8
  br label %74

234:                                              ; preds = %74
  %235 = load i64, i64* %15, align 8
  %236 = load i64, i64* @TRUE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %234
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = ptrtoint %struct.TYPE_5__* %239 to i32
  %241 = call i64 @NetUserModalsSet(i32* null, i32 0, i32 %240, i32* %12)
  store i64 %241, i64* %17, align 8
  %242 = load i64, i64* %17, align 8
  %243 = load i64, i64* @NERR_Success, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %383

246:                                              ; preds = %238
  br label %382

247:                                              ; preds = %234
  %248 = bitcast %struct.TYPE_5__** %7 to i32*
  %249 = call i64 @NetUserModalsGet(i32* null, i32 1, i32* %248)
  store i64 %249, i64* %17, align 8
  %250 = load i64, i64* %17, align 8
  %251 = load i64, i64* @NERR_Success, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  br label %383

254:                                              ; preds = %247
  %255 = bitcast %struct.TYPE_5__** %8 to i32*
  %256 = call i64 @NetUserModalsGet(i32* null, i32 3, i32* %255)
  store i64 %256, i64* %17, align 8
  %257 = load i64, i64* %17, align 8
  %258 = load i64, i64* @NERR_Success, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  br label %383

261:                                              ; preds = %254
  %262 = call i32 @RtlGetNtProductType(i64* %9)
  %263 = load i64, i64* %16, align 8
  %264 = call i32 @PrintPaddedMessageString(i32 4570, i64 %263)
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @TIMEQ_FOREVER, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %261
  %271 = call i32 @PrintMessageString(i32 4305)
  br label %278

272:                                              ; preds = %261
  %273 = load i32, i32* @StdOut, align 4
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @ConPrintf(i32 %273, i8* bitcast ([4 x i32]* @.str.17 to i8*), i32 %276)
  br label %278

278:                                              ; preds = %272, %270
  %279 = load i32, i32* @StdOut, align 4
  %280 = call i32 @ConPuts(i32 %279, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %281 = load i64, i64* %16, align 8
  %282 = call i32 @PrintPaddedMessageString(i32 4572, i64 %281)
  %283 = load i32, i32* @StdOut, align 4
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = sdiv i32 %286, 86400
  %288 = call i32 @ConPrintf(i32 %283, i8* bitcast ([5 x i32]* @.str.18 to i8*), i32 %287)
  %289 = load i64, i64* %16, align 8
  %290 = call i32 @PrintPaddedMessageString(i32 4573, i64 %289)
  %291 = load i32, i32* @StdOut, align 4
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = sdiv i32 %294, 86400
  %296 = call i32 @ConPrintf(i32 %291, i8* bitcast ([5 x i32]* @.str.18 to i8*), i32 %295)
  %297 = load i64, i64* %16, align 8
  %298 = call i32 @PrintPaddedMessageString(i32 4574, i64 %297)
  %299 = load i32, i32* @StdOut, align 4
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @ConPrintf(i32 %299, i8* bitcast ([5 x i32]* @.str.18 to i8*), i32 %302)
  %304 = load i64, i64* %16, align 8
  %305 = call i32 @PrintPaddedMessageString(i32 4575, i64 %304)
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %278
  %311 = call i32 @PrintMessageString(i32 4303)
  br label %318

312:                                              ; preds = %278
  %313 = load i32, i32* @StdOut, align 4
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @ConPrintf(i32 %313, i8* bitcast ([4 x i32]* @.str.17 to i8*), i32 %316)
  br label %318

318:                                              ; preds = %312, %310
  %319 = load i32, i32* @StdOut, align 4
  %320 = call i32 @ConPuts(i32 %319, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %321 = load i64, i64* %16, align 8
  %322 = call i32 @PrintPaddedMessageString(i32 4578, i64 %321)
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %318
  %328 = call i32 @PrintMessageString(i32 4305)
  br label %335

329:                                              ; preds = %318
  %330 = load i32, i32* @StdOut, align 4
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @ConPrintf(i32 %330, i8* bitcast ([4 x i32]* @.str.17 to i8*), i32 %333)
  br label %335

335:                                              ; preds = %329, %327
  %336 = load i32, i32* @StdOut, align 4
  %337 = call i32 @ConPuts(i32 %336, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %338 = load i64, i64* %16, align 8
  %339 = call i32 @PrintPaddedMessageString(i32 4579, i64 %338)
  %340 = load i32, i32* @StdOut, align 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = sdiv i32 %343, 60
  %345 = call i32 @ConPrintf(i32 %340, i8* bitcast ([5 x i32]* @.str.18 to i8*), i32 %344)
  %346 = load i64, i64* %16, align 8
  %347 = call i32 @PrintPaddedMessageString(i32 4580, i64 %346)
  %348 = load i32, i32* @StdOut, align 4
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 4
  %352 = sdiv i32 %351, 60
  %353 = call i32 @ConPrintf(i32 %348, i8* bitcast ([5 x i32]* @.str.18 to i8*), i32 %352)
  %354 = load i64, i64* %16, align 8
  %355 = call i32 @PrintPaddedMessageString(i32 4576, i64 %354)
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 8
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @UAS_ROLE_PRIMARY, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %377

361:                                              ; preds = %335
  %362 = load i64, i64* %9, align 8
  %363 = load i64, i64* @NtProductLanManNt, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = call i32 @PrintMessageString(i32 5070)
  br label %376

367:                                              ; preds = %361
  %368 = load i64, i64* %9, align 8
  %369 = load i64, i64* @NtProductServer, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = call i32 @PrintMessageString(i32 5073)
  br label %375

373:                                              ; preds = %367
  %374 = call i32 @PrintMessageString(i32 5072)
  br label %375

375:                                              ; preds = %373, %371
  br label %376

376:                                              ; preds = %375, %365
  br label %379

377:                                              ; preds = %335
  %378 = call i32 @PrintMessageString(i32 5071)
  br label %379

379:                                              ; preds = %377, %376
  %380 = load i32, i32* @StdOut, align 4
  %381 = call i32 @ConPuts(i32 %380, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %382

382:                                              ; preds = %379, %246
  br label %383

383:                                              ; preds = %382, %260, %253, %245, %219, %193, %166, %132, %105, %72
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %385 = icmp ne %struct.TYPE_5__* %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %388 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %387)
  br label %389

389:                                              ; preds = %386, %383
  %390 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %391 = icmp ne %struct.TYPE_5__* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %394 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %393)
  br label %395

395:                                              ; preds = %392, %389
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %397 = icmp ne %struct.TYPE_5__* %396, null
  br i1 %397, label %398, label %401

398:                                              ; preds = %395
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %400 = call i32 @NetApiBufferFree(%struct.TYPE_5__* %399)
  br label %401

401:                                              ; preds = %398, %395
  %402 = load i64, i64* %18, align 8
  store i64 %402, i64* %3, align 8
  br label %403

403:                                              ; preds = %401, %44, %31
  %404 = load i64, i64* %3, align 8
  ret i64 %404
}

declare dso_local i64 @_wcsicmp(i64*, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintNetMessage(i32) #1

declare dso_local i64 @NetUserModalsGet(i32*, i32, i32*) #1

declare dso_local i64 @_wcsnicmp(i64*, i8*, i32) #1

declare dso_local i64 @wcsicmp(i64*, i8*) #1

declare dso_local i32 @wcstoul(i64*, i64**, i32) #1

declare dso_local i32 @PrintMessageStringV(i32, i8*) #1

declare dso_local i64 @NetUserModalsSet(i32*, i32, i32, i32*) #1

declare dso_local i32 @RtlGetNtProductType(i64*) #1

declare dso_local i32 @PrintPaddedMessageString(i32, i64) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
