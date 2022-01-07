; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_rdm.c_rdm_send_receive.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_rdm.c_rdm_send_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 62, i32 62, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@RDM_SLEEP_BEFORE_SEND = common dso_local global i32 0, align 4
@RDM_SLEEP_BEFORE_RECV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 60, i32 60, i32 32, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i32] [i32 115, i32 101, i32 116, i32 32, i32 79, i32 75, i32 0], align 4
@.str.4 = private unnamed_addr constant [12 x i32] [i32 115, i32 101, i32 116, i32 32, i32 102, i32 97, i32 105, i32 108, i32 117, i32 114, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [21 x i32] [i32 114, i32 101, i32 97, i32 100, i32 101, i32 114, i32 32, i32 114, i32 101, i32 112, i32 108, i32 121, i32 32, i32 116, i32 105, i32 109, i32 101, i32 111, i32 117, i32 116, i32 0], align 4
@.str.6 = private unnamed_addr constant [20 x i32] [i32 99, i32 97, i32 114, i32 100, i32 32, i32 100, i32 111, i32 101, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 101, i32 120, i32 105, i32 115, i32 116, i32 0], align 4
@.str.7 = private unnamed_addr constant [28 x i32] [i32 100, i32 97, i32 116, i32 97, i32 32, i32 114, i32 101, i32 115, i32 112, i32 111, i32 110, i32 115, i32 101, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 116, i32 104, i32 101, i32 32, i32 99, i32 97, i32 114, i32 100, i32 0], align 4
@.str.8 = private unnamed_addr constant [35 x i32] [i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 32, i32 111, i32 114, i32 32, i32 112, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 32, i32 111, i32 102, i32 32, i32 116, i32 104, i32 101, i32 32, i32 99, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 0], align 4
@.str.9 = private unnamed_addr constant [23 x i32] [i32 117, i32 110, i32 107, i32 110, i32 111, i32 119, i32 110, i32 32, i32 105, i32 110, i32 116, i32 101, i32 114, i32 110, i32 97, i32 108, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 0], align 4
@.str.10 = private unnamed_addr constant [16 x i32] [i32 105, i32 110, i32 105, i32 116, i32 86, i32 97, i32 108, i32 32, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.11 = private unnamed_addr constant [31 x i32] [i32 119, i32 114, i32 111, i32 110, i32 103, i32 32, i32 83, i32 78, i32 82, i32 32, i32 100, i32 117, i32 114, i32 105, i32 110, i32 103, i32 32, i32 97, i32 110, i32 116, i32 105, i32 99, i32 111, i32 108, i32 108, i32 105, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@.str.12 = private unnamed_addr constant [23 x i32] [i32 97, i32 117, i32 116, i32 104, i32 101, i32 110, i32 116, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 102, i32 97, i32 105, i32 108, i32 117, i32 114, i32 101, i32 0], align 4
@.str.13 = private unnamed_addr constant [32 x i32] [i32 114, i32 101, i32 97, i32 100, i32 101, i32 114, i32 32, i32 114, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 117, i32 110, i32 107, i32 110, i32 111, i32 119, i32 110, i32 32, i32 99, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 0], align 4
@.str.14 = private unnamed_addr constant [35 x i32] [i32 99, i32 97, i32 114, i32 100, i32 32, i32 100, i32 111, i32 101, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 32, i32 116, i32 104, i32 105, i32 115, i32 32, i32 99, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 0], align 4
@.str.15 = private unnamed_addr constant [22 x i32] [i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 32, i32 111, i32 102, i32 32, i32 116, i32 104, i32 101, i32 32, i32 99, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 0], align 4
@.str.16 = private unnamed_addr constant [29 x i32] [i32 100, i32 111, i32 101, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 109, i32 111, i32 100, i32 101, i32 0], align 4
@.str.17 = private unnamed_addr constant [21 x i32] [i32 98, i32 108, i32 111, i32 99, i32 107, i32 32, i32 100, i32 111, i32 101, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 101, i32 120, i32 105, i32 115, i32 116, i32 0], align 4
@.str.18 = private unnamed_addr constant [23 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 104, i32 97, i32 115, i32 32, i32 98, i32 101, i32 101, i32 110, i32 32, i32 108, i32 111, i32 99, i32 107, i32 101, i32 100, i32 0], align 4
@.str.19 = private unnamed_addr constant [31 x i32] [i32 108, i32 111, i32 99, i32 107, i32 32, i32 111, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 100, i32 105, i32 100, i32 32, i32 110, i32 111, i32 116, i32 32, i32 115, i32 117, i32 99, i32 99, i32 101, i32 101, i32 100, i32 0], align 4
@.str.20 = private unnamed_addr constant [26 x i32] [i32 111, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 100, i32 105, i32 100, i32 32, i32 110, i32 111, i32 116, i32 32, i32 115, i32 117, i32 99, i32 99, i32 101, i32 101, i32 100, i32 0], align 4
@.str.21 = private unnamed_addr constant [19 x i32] [i32 117, i32 110, i32 107, i32 110, i32 111, i32 119, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 99, i32 111, i32 100, i32 101, i32 33, i32 0], align 4
@.str.22 = private unnamed_addr constant [30 x i32] [i32 67, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 32, i32 102, i32 97, i32 105, i32 108, i32 117, i32 114, i32 101, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.23 = private unnamed_addr constant [61 x i32] [i32 100, i32 97, i32 116, i32 97, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 49, i32 32, i32 119, i32 104, i32 101, i32 110, i32 32, i32 100, i32 101, i32 97, i32 108, i32 105, i32 110, i32 103, i32 32, i32 119, i32 104, i32 101, i32 110, i32 32, i32 97, i32 110, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 32, i32 115, i32 116, i32 97, i32 116, i32 117, i32 115, i32 32, i32 40, i32 37, i32 104, i32 104, i32 117, i32 41, i32 10, i32 0], align 4
@.str.24 = private unnamed_addr constant [9 x i32] [i32 99, i32 104, i32 101, i32 99, i32 107, i32 115, i32 117, i32 109, i32 0], align 4
@.str.25 = private unnamed_addr constant [22 x i32] [i32 110, i32 111, i32 116, i32 32, i32 67, i32 79, i32 77, i32 32, i32 112, i32 111, i32 114, i32 116, i32 32, i32 115, i32 101, i32 108, i32 101, i32 99, i32 116, i32 101, i32 100, i32 0], align 4
@.str.26 = private unnamed_addr constant [14 x i32] [i32 116, i32 105, i32 109, i32 101, i32 111, i32 117, i32 116, i32 32, i32 114, i32 101, i32 112, i32 108, i32 121, i32 0], align 4
@.str.27 = private unnamed_addr constant [15 x i32] [i32 99, i32 104, i32 101, i32 99, i32 107, i32 32, i32 115, i32 101, i32 113, i32 117, i32 101, i32 110, i32 99, i32 101, i32 0], align 4
@.str.28 = private unnamed_addr constant [8 x i32] [i32 114, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 0], align 4
@.str.29 = private unnamed_addr constant [29 x i32] [i32 112, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 32, i32 118, i32 97, i32 108, i32 117, i32 101, i32 32, i32 111, i32 117, i32 116, i32 32, i32 111, i32 102, i32 32, i32 114, i32 97, i32 110, i32 103, i32 101, i32 0], align 4
@.str.30 = private unnamed_addr constant [29 x i32] [i32 83, i32 116, i32 97, i32 116, i32 117, i32 115, i32 32, i32 102, i32 97, i32 105, i32 108, i32 117, i32 114, i32 101, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 32, i32 45, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.31 = private unnamed_addr constant [27 x i32] [i32 66, i32 97, i32 100, i32 32, i32 67, i32 104, i32 105, i32 110, i32 97, i32 32, i32 102, i32 111, i32 111, i32 116, i32 101, i32 114, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.32 = private unnamed_addr constant [28 x i32] [i32 66, i32 97, i32 100, i32 32, i32 67, i32 82, i32 67, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 32, i32 45, i32 45, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.33 = private unnamed_addr constant [46 x i32] [i32 66, i32 97, i32 100, i32 32, i32 72, i32 73, i32 68, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 118, i32 115, i32 32, i32 68, i32 97, i32 116, i32 97, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 32, i32 45, i32 45, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.34 = private unnamed_addr constant [27 x i32] [i32 66, i32 97, i32 100, i32 32, i32 67, i32 104, i32 105, i32 110, i32 97, i32 32, i32 104, i32 101, i32 97, i32 100, i32 101, i32 114, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.35 = private unnamed_addr constant [21 x i32] [i32 66, i32 97, i32 100, i32 32, i32 72, i32 73, i32 68, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 40, i32 37, i32 104, i32 104, i32 117, i32 41, i32 10, i32 0], align 4
@.str.36 = private unnamed_addr constant [25 x i32] [i32 66, i32 97, i32 100, i32 32, i32 72, i32 73, i32 68, i32 32, i32 104, i32 101, i32 97, i32 100, i32 101, i32 114, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.37 = private unnamed_addr constant [16 x i32] [i32 72, i32 105, i32 100, i32 68, i32 95, i32 71, i32 101, i32 116, i32 70, i32 101, i32 97, i32 116, i32 117, i32 114, i32 101, i32 0], align 4
@.str.38 = private unnamed_addr constant [16 x i32] [i32 72, i32 105, i32 100, i32 68, i32 95, i32 83, i32 101, i32 116, i32 70, i32 101, i32 97, i32 116, i32 117, i32 114, i32 101, i32 0], align 4
@.str.39 = private unnamed_addr constant [20 x i32] [i32 83, i32 105, i32 122, i32 101, i32 32, i32 62, i32 61, i32 32, i32 50, i32 52, i32 50, i32 32, i32 40, i32 37, i32 104, i32 104, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdm_send_receive(i32 %0, i32 %1, i32* %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %13, align 4
  %20 = bitcast [256 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 1024, i1 false)
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 6, %28
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds i32, i32* %27, i64 1
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 170, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds i32, i32* %33, i64 1
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sle i32 %38, 242
  br i1 %39, label %40, label %290

40:                                               ; preds = %6
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %45 = getelementptr inbounds i32, i32* %44, i64 12
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @RtlCopyMemory(i32* %45, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %40
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 2
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 10, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 12, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 12, %72
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %75
  store i32 187, i32* %76, align 4
  %77 = call i32 @kprintf(i8* bitcast ([4 x i32]* @.str to i8*))
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 14, %79
  %81 = call i32 @kull_m_string_wprintf_hex(i32* %78, i32 %80, i32 1)
  %82 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %83 = load i32, i32* @RDM_SLEEP_BEFORE_SEND, align 4
  %84 = call i32 @Sleep(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %87 = call i64 @HidD_SetFeature(i32 %85, i32* %86, i32 1024)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %287

89:                                               ; preds = %66
  %90 = load i32, i32* @RDM_SLEEP_BEFORE_RECV, align 4
  %91 = call i32 @Sleep(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %94 = call i64 @HidD_GetFeature(i32 %92, i32* %93, i32 1024)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %284

96:                                               ; preds = %89
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %279

100:                                              ; preds = %96
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp sge i32 %104, 6
  br i1 %105, label %106, label %275

106:                                              ; preds = %100
  %107 = load i32, i32* %17, align 4
  %108 = icmp sle i32 %107, 248
  br i1 %108, label %109, label %275

109:                                              ; preds = %106
  %110 = call i32 @kprintf(i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %111 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 8
  %114 = call i32 @kull_m_string_wprintf_hex(i32* %111, i32 %113, i32 1)
  %115 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %116 = load i32, i32* %17, align 4
  %117 = sub nsw i32 %116, 6
  store i32 %117, i32* %10, align 4
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 8
  %119 = load i32, i32* %118, align 16
  %120 = icmp eq i32 %119, 170
  br i1 %120, label %121, label %270

121:                                              ; preds = %109
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 10
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %263

127:                                              ; preds = %121
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %128

128:                                              ; preds = %141, %127
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 2
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 10, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = xor i32 %139, %138
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %128

144:                                              ; preds = %128
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 12, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %145, %150
  br i1 %151, label %152, label %254

152:                                              ; preds = %144
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 12, %153
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %156
  store i32 187, i32* %157, align 4
  br i1 true, label %158, label %245

158:                                              ; preds = %152
  %159 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 11
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %235 [
    i32 0, label %161
    i32 255, label %161
    i32 1, label %195
    i32 2, label %229
    i32 3, label %230
    i32 4, label %231
    i32 5, label %232
    i32 7, label %233
    i32 10, label %234
  ]

161:                                              ; preds = %158, %158
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %13, align 4
  %163 = load i32**, i32*** %11, align 8
  %164 = icmp ne i32** %163, null
  br i1 %164, label %165, label %194

165:                                              ; preds = %161
  %166 = load i32*, i32** %12, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %194

168:                                              ; preds = %165
  %169 = load i32**, i32*** %11, align 8
  store i32* null, i32** %169, align 8
  %170 = load i32*, i32** %12, align 8
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %168
  %174 = load i32, i32* @LPTR, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @LocalAlloc(i32 %174, i32 %175)
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i32*
  %179 = load i32**, i32*** %11, align 8
  store i32* %178, i32** %179, align 8
  %180 = icmp ne i32* %178, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %173
  %182 = load i32**, i32*** %11, align 8
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %185 = getelementptr inbounds i32, i32* %184, i64 12
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @RtlCopyMemory(i32* %183, i32* %185, i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = load i32*, i32** %12, align 8
  store i32 %188, i32* %189, align 4
  br label %192

190:                                              ; preds = %173
  %191 = load i32, i32* @FALSE, align 4
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %190, %181
  br label %193

193:                                              ; preds = %192, %168
  br label %194

194:                                              ; preds = %193, %165, %161
  store i8* null, i8** %18, align 8
  br label %236

195:                                              ; preds = %158
  %196 = load i32, i32* %10, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %225

198:                                              ; preds = %195
  %199 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 12
  %200 = load i32, i32* %199, align 16
  switch i32 %200, label %219 [
    i32 128, label %201
    i32 129, label %202
    i32 130, label %203
    i32 131, label %204
    i32 132, label %205
    i32 133, label %206
    i32 135, label %207
    i32 138, label %208
    i32 139, label %209
    i32 140, label %210
    i32 143, label %211
    i32 144, label %212
    i32 145, label %213
    i32 146, label %214
    i32 147, label %215
    i32 148, label %216
    i32 149, label %217
    i32 150, label %218
  ]

201:                                              ; preds = %198
  store i8* bitcast ([7 x i32]* @.str.3 to i8*), i8** %18, align 8
  br label %220

202:                                              ; preds = %198
  store i8* bitcast ([12 x i32]* @.str.4 to i8*), i8** %18, align 8
  br label %220

203:                                              ; preds = %198
  store i8* bitcast ([21 x i32]* @.str.5 to i8*), i8** %18, align 8
  br label %220

204:                                              ; preds = %198
  store i8* bitcast ([20 x i32]* @.str.6 to i8*), i8** %18, align 8
  br label %220

205:                                              ; preds = %198
  store i8* bitcast ([28 x i32]* @.str.7 to i8*), i8** %18, align 8
  br label %220

206:                                              ; preds = %198
  store i8* bitcast ([35 x i32]* @.str.8 to i8*), i8** %18, align 8
  br label %220

207:                                              ; preds = %198
  store i8* bitcast ([23 x i32]* @.str.9 to i8*), i8** %18, align 8
  br label %220

208:                                              ; preds = %198
  store i8* bitcast ([16 x i32]* @.str.10 to i8*), i8** %18, align 8
  br label %220

209:                                              ; preds = %198
  store i8* bitcast ([31 x i32]* @.str.11 to i8*), i8** %18, align 8
  br label %220

210:                                              ; preds = %198
  store i8* bitcast ([23 x i32]* @.str.12 to i8*), i8** %18, align 8
  br label %220

211:                                              ; preds = %198
  store i8* bitcast ([32 x i32]* @.str.13 to i8*), i8** %18, align 8
  br label %220

212:                                              ; preds = %198
  store i8* bitcast ([35 x i32]* @.str.14 to i8*), i8** %18, align 8
  br label %220

213:                                              ; preds = %198
  store i8* bitcast ([22 x i32]* @.str.15 to i8*), i8** %18, align 8
  br label %220

214:                                              ; preds = %198
  store i8* bitcast ([29 x i32]* @.str.16 to i8*), i8** %18, align 8
  br label %220

215:                                              ; preds = %198
  store i8* bitcast ([21 x i32]* @.str.17 to i8*), i8** %18, align 8
  br label %220

216:                                              ; preds = %198
  store i8* bitcast ([23 x i32]* @.str.18 to i8*), i8** %18, align 8
  br label %220

217:                                              ; preds = %198
  store i8* bitcast ([31 x i32]* @.str.19 to i8*), i8** %18, align 8
  br label %220

218:                                              ; preds = %198
  store i8* bitcast ([26 x i32]* @.str.20 to i8*), i8** %18, align 8
  br label %220

219:                                              ; preds = %198
  br label %220

220:                                              ; preds = %219, %218, %217, %216, %215, %214, %213, %212, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201
  %221 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 12
  %222 = load i32, i32* %221, align 16
  %223 = load i8*, i8** %18, align 8
  %224 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([30 x i32]* @.str.22 to i8*), i32 %222, i8* %223)
  br label %228

225:                                              ; preds = %195
  %226 = load i32, i32* %10, align 4
  %227 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([61 x i32]* @.str.23 to i8*), i32 %226)
  br label %228

228:                                              ; preds = %225, %220
  store i8* null, i8** %18, align 8
  br label %236

229:                                              ; preds = %158
  store i8* bitcast ([9 x i32]* @.str.24 to i8*), i8** %18, align 8
  br label %236

230:                                              ; preds = %158
  store i8* bitcast ([22 x i32]* @.str.25 to i8*), i8** %18, align 8
  br label %236

231:                                              ; preds = %158
  store i8* bitcast ([14 x i32]* @.str.26 to i8*), i8** %18, align 8
  br label %236

232:                                              ; preds = %158
  store i8* bitcast ([15 x i32]* @.str.27 to i8*), i8** %18, align 8
  br label %236

233:                                              ; preds = %158
  store i8* bitcast ([8 x i32]* @.str.28 to i8*), i8** %18, align 8
  br label %236

234:                                              ; preds = %158
  store i8* bitcast ([29 x i32]* @.str.29 to i8*), i8** %18, align 8
  br label %236

235:                                              ; preds = %158
  store i8* bitcast ([19 x i32]* @.str.21 to i8*), i8** %18, align 8
  br label %236

236:                                              ; preds = %235, %234, %233, %232, %231, %230, %229, %228, %194
  %237 = load i8*, i8** %18, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 11
  %241 = load i32, i32* %240, align 4
  %242 = load i8*, i8** %18, align 8
  %243 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.30 to i8*), i32 %241, i8* %242)
  br label %244

244:                                              ; preds = %239, %236
  br label %253

245:                                              ; preds = %152
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 12, %246
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.31 to i8*), i32 %251)
  br label %253

253:                                              ; preds = %245, %244
  br label %262

254:                                              ; preds = %144
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 12, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([28 x i32]* @.str.32 to i8*), i32 %255, i32 %260)
  br label %262

262:                                              ; preds = %254, %253
  br label %269

263:                                              ; preds = %121
  %264 = load i32, i32* %10, align 4
  %265 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 10
  %266 = load i32, i32* %265, align 8
  %267 = sub nsw i32 %266, 1
  %268 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([46 x i32]* @.str.33 to i8*), i32 %264, i32 %267)
  br label %269

269:                                              ; preds = %263, %262
  br label %274

270:                                              ; preds = %109
  %271 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 8
  %272 = load i32, i32* %271, align 16
  %273 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.34 to i8*), i32 %272)
  br label %274

274:                                              ; preds = %270, %269
  br label %278

275:                                              ; preds = %106, %100
  %276 = load i32, i32* %17, align 4
  %277 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str.35 to i8*), i32 %276)
  br label %278

278:                                              ; preds = %275, %274
  br label %283

279:                                              ; preds = %96
  %280 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %281 = load i32, i32* %280, align 16
  %282 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.36 to i8*), i32 %281)
  br label %283

283:                                              ; preds = %279, %278
  br label %286

284:                                              ; preds = %89
  %285 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([16 x i32]* @.str.37 to i8*))
  br label %286

286:                                              ; preds = %284, %283
  br label %289

287:                                              ; preds = %66
  %288 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([16 x i32]* @.str.38 to i8*))
  br label %289

289:                                              ; preds = %287, %286
  br label %293

290:                                              ; preds = %6
  %291 = load i32, i32* %10, align 4
  %292 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([20 x i32]* @.str.39 to i8*), i32 %291)
  br label %293

293:                                              ; preds = %290, %289
  %294 = load i32, i32* %13, align 4
  ret i32 %294
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #2

declare dso_local i32 @kprintf(i8*) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @HidD_SetFeature(i32, i32*, i32) #2

declare dso_local i64 @HidD_GetFeature(i32, i32*, i32) #2

declare dso_local i32 @LocalAlloc(i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*, i32, ...) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
