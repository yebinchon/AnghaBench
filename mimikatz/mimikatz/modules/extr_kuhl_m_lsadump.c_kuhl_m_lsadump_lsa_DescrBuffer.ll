; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_lsa_DescrBuffer.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_lsa_DescrBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i32] [i32 10, i32 32, i32 42, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@KUHL_M_LSADUMP_SAMRPC_SUPPCRED_TYPE = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i32] [i32 117, i32 110, i32 107, i32 110, i32 111, i32 119, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 32, i32 32, i32 78, i32 84, i32 76, i32 77, i32 32, i32 58, i32 32, i32 0], align 4
@LM_NTLM_HASH_LENGTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i32] [i32 10, i32 32, i32 32, i32 32, i32 32, i32 76, i32 77, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [5 x i32] [i32 78, i32 84, i32 76, i32 77, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i32] [i32 110, i32 116, i32 108, i32 109, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i32] [i32 76, i32 77, i32 32, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [5 x i32] [i32 108, i32 109, i32 32, i32 32, i32 0], align 4
@.str.9 = private unnamed_addr constant [10 x i32] [i32 32, i32 32, i32 32, i32 32, i32 37, i32 46, i32 42, i32 115, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [11 x i32] [i32 32, i32 32, i32 32, i32 32, i32 37, i32 48, i32 50, i32 117, i32 32, i32 32, i32 0], align 4
@MD5_DIGEST_LENGTH = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [25 x i32] [i32 32, i32 32, i32 32, i32 32, i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 32, i32 83, i32 97, i32 108, i32 116, i32 32, i32 58, i32 32, i32 37, i32 46, i32 42, i32 115, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [12 x i32] [i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 0], align 4
@.str.13 = private unnamed_addr constant [15 x i32] [i32 79, i32 108, i32 100, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 0], align 4
@.str.14 = private unnamed_addr constant [53 x i32] [i32 32, i32 32, i32 32, i32 32, i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 32, i32 83, i32 97, i32 108, i32 116, i32 32, i32 58, i32 32, i32 37, i32 46, i32 42, i32 115, i32 10, i32 32, i32 32, i32 32, i32 32, i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 32, i32 73, i32 116, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 115, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [19 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 0], align 4
@.str.16 = private unnamed_addr constant [17 x i32] [i32 79, i32 108, i32 100, i32 101, i32 114, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 0], align 4
@.str.17 = private unnamed_addr constant [20 x i32] [i32 32, i32 32, i32 32, i32 32, i32 82, i32 97, i32 110, i32 100, i32 111, i32 109, i32 32, i32 86, i32 97, i32 108, i32 117, i32 101, i32 32, i32 58, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_lsadump_lsa_DescrBuffer(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i8**, i8*** @KUHL_M_LSADUMP_SAMRPC_SUPPCRED_TYPE, align 8
  %19 = call i64 @ARRAYSIZE(i8** %18)
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i8**, i8*** @KUHL_M_LSADUMP_SAMRPC_SUPPCRED_TYPE, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i8* [ %25, %21 ], [ bitcast ([8 x i32]* @.str.1 to i8*), %26 ]
  %29 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str to i8*), i8* %28)
  %30 = load i64, i64* %5, align 8
  switch i64 %30, label %252 [
    i64 0, label %31
    i64 1, label %135
    i64 2, label %140
    i64 3, label %167
    i64 4, label %199
    i64 5, label %246
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %15, align 8
  %35 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.2 to i8*))
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @LM_NTLM_HASH_LENGTH, align 8
  %47 = call i32 @kull_m_string_wprintf_hex(i32 %45, i64 %46, i32 0)
  br label %48

48:                                               ; preds = %41, %31
  %49 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str.3 to i8*))
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @LM_NTLM_HASH_LENGTH, align 8
  %61 = call i32 @kull_m_string_wprintf_hex(i32 %59, i64 %60, i32 0)
  br label %62

62:                                               ; preds = %55, %48
  %63 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %134

68:                                               ; preds = %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %16, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LM_NTLM_HASH_LENGTH, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %81, i64 %82, i64 %83, i8* bitcast ([5 x i32]* @.str.5 to i8*), i32 %84)
  br label %86

86:                                               ; preds = %78, %68
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %94, i64 %97, i64 %98, i8* bitcast ([5 x i32]* @.str.6 to i8*), i32 %99)
  br label %101

101:                                              ; preds = %91, %86
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @LM_NTLM_HASH_LENGTH, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %109, i64 %110, i64 %111, i8* bitcast ([5 x i32]* @.str.7 to i8*), i32 %112)
  br label %114

114:                                              ; preds = %106, %101
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %122, %125
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = call i32 @kuhl_m_lsadump_dcsync_decrypt(i64 %126, i64 %129, i64 %130, i8* bitcast ([5 x i32]* @.str.8 to i8*), i32 %131)
  br label %133

133:                                              ; preds = %119, %114
  br label %134

134:                                              ; preds = %133, %62
  br label %257

135:                                              ; preds = %27
  %136 = load i64, i64* %8, align 8
  %137 = udiv i64 %136, 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.9 to i8*), i64 %137, i32 %138)
  br label %257

140:                                              ; preds = %27
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %10, align 8
  store i64 0, i64* %9, align 8
  br label %144

144:                                              ; preds = %163, %140
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ult i64 %145, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %144
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %151, 1
  %153 = call i32 (i8*, ...) @kprintf(i8* bitcast ([11 x i32]* @.str.10 to i8*), i64 %152)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* @MD5_DIGEST_LENGTH, align 8
  %161 = call i32 @kull_m_string_wprintf_hex(i32 %159, i64 %160, i32 0)
  %162 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %163

163:                                              ; preds = %150
  %164 = load i64, i64* %9, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %9, align 8
  br label %144

166:                                              ; preds = %144
  br label %257

167:                                              ; preds = %27
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %170, %struct.TYPE_14__** %11, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = udiv i64 %174, 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %177 = ptrtoint %struct.TYPE_14__* %176 to i64
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = call i32 (i8*, ...) @kprintf(i8* bitcast ([25 x i32]* @.str.11 to i8*), i64 %175, i64 %181)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %184 = ptrtoint %struct.TYPE_14__* %183 to i64
  %185 = add i64 %184, 4
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %12, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @kuhl_m_lsadump_lsa_keyDataInfo(%struct.TYPE_14__* %187, i32 %188, i32 %191, i8* bitcast ([12 x i32]* @.str.12 to i8*))
  store i32 %192, i32* %12, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @kuhl_m_lsadump_lsa_keyDataInfo(%struct.TYPE_14__* %193, i32 %194, i32 %197, i8* bitcast ([15 x i32]* @.str.13 to i8*))
  br label %257

199:                                              ; preds = %27
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %202, %struct.TYPE_13__** %13, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = udiv i64 %206, 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %209 = ptrtoint %struct.TYPE_13__* %208 to i64
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 6
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, ...) @kprintf(i8* bitcast ([53 x i32]* @.str.14 to i8*), i64 %207, i64 %213, i32 %216)
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %219 = ptrtoint %struct.TYPE_13__* %218 to i64
  %220 = add i64 %219, 4
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %14, align 4
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %223 = load i32, i32* %14, align 4
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @kuhl_m_lsadump_lsa_keyDataNewInfo(%struct.TYPE_13__* %222, i32 %223, i32 %226, i8* bitcast ([12 x i32]* @.str.12 to i8*))
  store i32 %227, i32* %14, align 4
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @kuhl_m_lsadump_lsa_keyDataNewInfo(%struct.TYPE_13__* %228, i32 %229, i32 %232, i8* bitcast ([19 x i32]* @.str.15 to i8*))
  store i32 %233, i32* %14, align 4
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %235 = load i32, i32* %14, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @kuhl_m_lsadump_lsa_keyDataNewInfo(%struct.TYPE_13__* %234, i32 %235, i32 %238, i8* bitcast ([15 x i32]* @.str.13 to i8*))
  store i32 %239, i32* %14, align 4
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @kuhl_m_lsadump_lsa_keyDataNewInfo(%struct.TYPE_13__* %240, i32 %241, i32 %244, i8* bitcast ([17 x i32]* @.str.16 to i8*))
  br label %257

246:                                              ; preds = %27
  %247 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.17 to i8*))
  %248 = load i32, i32* %7, align 4
  %249 = load i64, i64* %8, align 8
  %250 = call i32 @kull_m_string_wprintf_hex(i32 %248, i64 %249, i32 0)
  %251 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %257

252:                                              ; preds = %27
  %253 = load i32, i32* %7, align 4
  %254 = load i64, i64* %8, align 8
  %255 = call i32 @kull_m_string_wprintf_hex(i32 %253, i64 %254, i32 1)
  %256 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %257

257:                                              ; preds = %252, %246, %199, %167, %166, %135, %134
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @ARRAYSIZE(i8**) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i64, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_decrypt(i64, i64, i64, i8*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_lsa_keyDataInfo(%struct.TYPE_14__*, i32, i32, i8*) #1

declare dso_local i32 @kuhl_m_lsadump_lsa_keyDataNewInfo(%struct.TYPE_13__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
