; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrUser.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [20 x i32] [i32 42, i32 42, i32 32, i32 83, i32 65, i32 77, i32 32, i32 65, i32 67, i32 67, i32 79, i32 85, i32 78, i32 84, i32 32, i32 42, i32 42, i32 10, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i32] [i32 83, i32 65, i32 77, i32 32, i32 85, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@szOID_ANSI_sAMAccountName = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 85, i32 115, i32 101, i32 114, i32 32, i32 80, i32 114, i32 105, i32 110, i32 99, i32 105, i32 112, i32 97, i32 108, i32 32, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@szOID_ANSI_userPrincipalName = common dso_local global i32 0, align 4
@szOID_ANSI_sAMAccountType = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i32] [i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 32, i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 32, i32 37, i32 115, i32 32, i32 41, i32 10, i32 0], align 4
@szOID_ANSI_userAccountControl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i32] [i32 85, i32 115, i32 101, i32 114, i32 32, i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 32, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 32, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 40, i32 32, i32 0], align 4
@KUHL_M_LSADUMP_UF_FLAG = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 41, i32 10, i32 0], align 4
@szOID_ANSI_accountExpires = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i32] [i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 32, i32 101, i32 120, i32 112, i32 105, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@szOID_ANSI_pwdLastSet = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i32] [i32 80, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 32, i32 108, i32 97, i32 115, i32 116, i32 32, i32 99, i32 104, i32 97, i32 110, i32 103, i32 101, i32 32, i32 58, i32 32, i32 0], align 4
@szOID_ANSI_sIDHistory = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i32] [i32 83, i32 73, i32 68, i32 32, i32 104, i32 105, i32 115, i32 116, i32 111, i32 114, i32 121, i32 58, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [3 x i32] [i32 32, i32 32, i32 0], align 4
@szOID_ANSI_objectSid = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i32] [i32 79, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 83, i32 101, i32 99, i32 117, i32 114, i32 105, i32 116, i32 121, i32 32, i32 73, i32 68, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.13 = private unnamed_addr constant [27 x i32] [i32 79, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 82, i32 101, i32 108, i32 97, i32 116, i32 105, i32 118, i32 101, i32 32, i32 73, i32 68, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [15 x i32] [i32 10, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 58, i32 10, i32 0], align 4
@szOID_ANSI_unicodePwd = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i32] [i32 78, i32 84, i32 76, i32 77, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@szOID_ANSI_ntPwdHistory = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i32] [i32 110, i32 116, i32 108, i32 109, i32 0], align 4
@szOID_ANSI_dBCSPwd = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i32] [i32 76, i32 77, i32 32, i32 32, i32 0], align 4
@szOID_ANSI_lmPwdHistory = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i32] [i32 108, i32 109, i32 32, i32 32, i32 0], align 4
@szOID_ANSI_supplementalCredentials = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i32] [i32 10, i32 83, i32 117, i32 112, i32 112, i32 108, i32 101, i32 109, i32 101, i32 110, i32 116, i32 97, i32 108, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 58, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_lsadump_dcsync_descrUser(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str to i8*))
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @szOID_ANSI_sAMAccountName, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @kull_m_rpc_drsr_findPrintMonoAttr(i8* bitcast ([24 x i32]* @.str.1 to i8*), i32* %12, i32* %13, i32 %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @szOID_ANSI_userPrincipalName, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @kull_m_rpc_drsr_findPrintMonoAttr(i8* bitcast ([24 x i32]* @.str.2 to i8*), i32* %17, i32* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @szOID_ANSI_sAMAccountType, align 4
  %25 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %22, i32* %23, i32 %24, i64* %9, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i64, i64* %9, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %9, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kuhl_m_lsadump_samAccountType_toString(i32 %33)
  %35 = call i32 (i8*, ...) @kprintf(i8* bitcast ([36 x i32]* @.str.3 to i8*), i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %27, %2
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @szOID_ANSI_userAccountControl, align 4
  %40 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %37, i32* %38, i32 %39, i64* %9, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.4 to i8*), i32 %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %69, %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** @KUHL_M_LSADUMP_UF_FLAG, align 8
  %50 = call i32 @ARRAYSIZE(i32* %49)
  %51 = call i32 @min(i32 %50, i32 32)
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 1, %54
  %56 = load i64, i64* %9, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i32*, i32** @KUHL_M_LSADUMP_UF_FLAG, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.5 to i8*), i32 %66)
  br label %68

68:                                               ; preds = %61, %53
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %47

72:                                               ; preds = %47
  %73 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.6 to i8*))
  br label %74

74:                                               ; preds = %72, %36
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @szOID_ANSI_accountExpires, align 4
  %78 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %75, i32* %76, i32 %77, i64* %9, i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.7 to i8*))
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @kull_m_string_displayLocalFileTime(i32 %83)
  %85 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.8 to i8*))
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @szOID_ANSI_pwdLastSet, align 4
  %90 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %87, i32* %88, i32 %89, i64* %9, i32* null)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.9 to i8*))
  %94 = load i64, i64* %9, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @kull_m_string_displayLocalFileTime(i32 %95)
  %97 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.8 to i8*))
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @szOID_ANSI_sIDHistory, align 4
  %102 = call %struct.TYPE_5__* @kull_m_rpc_drsr_findAttr(i32* %99, i32* %100, i32 %101)
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %10, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.10 to i8*))
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.11 to i8*))
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @kull_m_string_displaySID(i64 %121)
  %123 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.8 to i8*))
  br label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %106

127:                                              ; preds = %106
  br label %128

128:                                              ; preds = %127, %98
  %129 = load i32*, i32** %3, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* @szOID_ANSI_objectSid, align 4
  %132 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %129, i32* %130, i32 %131, i64* %9, i32* null)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %197

134:                                              ; preds = %128
  %135 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.12 to i8*))
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @kull_m_string_displaySID(i64 %136)
  %138 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.8 to i8*))
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %9, align 8
  %141 = call i64* @GetSidSubAuthorityCount(i64 %140)
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, 1
  %144 = call i32* @GetSidSubAuthority(i64 %139, i64 %143)
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.13 to i8*), i32 %146)
  %148 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.14 to i8*))
  %149 = load i32*, i32** %3, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* @szOID_ANSI_unicodePwd, align 4
  %152 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %149, i32* %150, i32 %151, i64* %7, i32* %8)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %134
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @FALSE, align 4
  %159 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %155, i32 %156, i32 %157, i8* bitcast ([5 x i32]* @.str.15 to i8*), i32 %158)
  br label %160

160:                                              ; preds = %154, %134
  %161 = load i32*, i32** %3, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* @szOID_ANSI_ntPwdHistory, align 4
  %164 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %161, i32* %162, i32 %163, i64* %7, i32* %8)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load i64, i64* %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @TRUE, align 4
  %171 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %167, i32 %168, i32 %169, i8* bitcast ([5 x i32]* @.str.16 to i8*), i32 %170)
  br label %172

172:                                              ; preds = %166, %160
  %173 = load i32*, i32** %3, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* @szOID_ANSI_dBCSPwd, align 4
  %176 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %173, i32* %174, i32 %175, i64* %7, i32* %8)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load i64, i64* %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @FALSE, align 4
  %183 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %179, i32 %180, i32 %181, i8* bitcast ([5 x i32]* @.str.17 to i8*), i32 %182)
  br label %184

184:                                              ; preds = %178, %172
  %185 = load i32*, i32** %3, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* @szOID_ANSI_lmPwdHistory, align 4
  %188 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %185, i32* %186, i32 %187, i64* %7, i32* %8)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load i64, i64* %7, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @TRUE, align 4
  %195 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %191, i32 %192, i32 %193, i8* bitcast ([5 x i32]* @.str.18 to i8*), i32 %194)
  br label %196

196:                                              ; preds = %190, %184
  br label %197

197:                                              ; preds = %196, %128
  %198 = load i32*, i32** %3, align 8
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* @szOID_ANSI_supplementalCredentials, align 4
  %201 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %198, i32* %199, i32 %200, i64* %7, i32* %8)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.19 to i8*))
  %205 = load i64, i64* %7, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @kuhl_m_lsadump_dcsync_descrUserProperties(i32 %206)
  br label %208

208:                                              ; preds = %203, %197
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_rpc_drsr_findPrintMonoAttr(i8*, i32*, i32*, i32, i32) #1

declare dso_local i64 @kull_m_rpc_drsr_findMonoAttr(i32*, i32*, i32, i64*, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_samAccountType_toString(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @kull_m_string_displayLocalFileTime(i32) #1

declare dso_local %struct.TYPE_5__* @kull_m_rpc_drsr_findAttr(i32*, i32*, i32) #1

declare dso_local i32 @kull_m_string_displaySID(i64) #1

declare dso_local i32* @GetSidSubAuthority(i64, i64) #1

declare dso_local i64* @GetSidSubAuthorityCount(i64) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_decrypt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_descrUserProperties(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
