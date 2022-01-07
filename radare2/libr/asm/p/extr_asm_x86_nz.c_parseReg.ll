; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_parseReg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_nz.c_parseReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"eax\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ecx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"edx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ebx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"esp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ebp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"esi\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"edi\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"eip\00", align 1
@__const.parseReg.regs = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"r8d\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"r9d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"r10d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"r11d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"r12d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"r13d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"r14d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"r15d\00", align 1
@__const.parseReg.regsext = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str.17 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ah\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"bh\00", align 1
@__const.parseReg.regs8 = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [3 x i8] c"ax\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"bx\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@__const.parseReg.regs16 = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* null], align 16
@.str.33 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"rdx\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"rbx\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"rip\00", align 1
@__const.parseReg.regs64 = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* null], align 16
@.str.42 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"r12\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"r14\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"r15\00", align 1
@__const.parseReg.regs64ext = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* null], align 16
@.str.50 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"gs\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"cr0\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"cr1\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"cr2\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"cr3\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"cr4\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"cr5\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"cr6\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"cr7\00", align 1
@__const.parseReg.cregs = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16
@.str.64 = private unnamed_addr constant [4 x i8] c"dr0\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"dr1\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"dr2\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"dr3\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"dr4\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"dr5\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"dr6\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"dr7\00", align 1
@__const.parseReg.dregs = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* null], align 16
@OT_GPREG = common dso_local global i32 0, align 4
@OT_DWORD = common dso_local global i32 0, align 4
@OT_CONTROLREG = common dso_local global i32 0, align 4
@OT_DEBUGREG = common dso_local global i32 0, align 4
@OT_BYTE = common dso_local global i32 0, align 4
@OT_WORD = common dso_local global i32 0, align 4
@OT_SEGMENTREG = common dso_local global i32 0, align 4
@OT_QWORD = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@OT_FPUREG = common dso_local global i32 0, align 4
@OT_REGALL = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@OT_MMXREG = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [4 x i8] c"xmm\00", align 1
@OT_XMMREG = common dso_local global i32 0, align 4
@X86R_UNDEFINED = common dso_local global i32 0, align 4
@TT_SPECIAL = common dso_local global i64 0, align 8
@TT_NUMBER = common dso_local global i64 0, align 8
@.str.75 = private unnamed_addr constant [31 x i8] c"Expected register number '%s'\0A\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Too large register index!\0A\00", align 1
@OT_REGTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64*, i32*)* @parseReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseReg(%struct.TYPE_4__* %0, i8* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8*], align 16
  %12 = alloca [9 x i8*], align 16
  %13 = alloca [9 x i8*], align 16
  %14 = alloca [9 x i8*], align 16
  %15 = alloca [10 x i8*], align 16
  %16 = alloca [9 x i8*], align 16
  %17 = alloca [7 x i8*], align 16
  %18 = alloca [9 x i8*], align 16
  %19 = alloca [9 x i8*], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = bitcast [10 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([10 x i8*]* @__const.parseReg.regs to i8*), i64 80, i1 false)
  %25 = bitcast [9 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([9 x i8*]* @__const.parseReg.regsext to i8*), i64 72, i1 false)
  %26 = bitcast [9 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([9 x i8*]* @__const.parseReg.regs8 to i8*), i64 72, i1 false)
  %27 = bitcast [9 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([9 x i8*]* @__const.parseReg.regs16 to i8*), i64 72, i1 false)
  %28 = bitcast [10 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([10 x i8*]* @__const.parseReg.regs64 to i8*), i64 80, i1 false)
  %29 = bitcast [9 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([9 x i8*]* @__const.parseReg.regs64ext to i8*), i64 72, i1 false)
  %30 = bitcast [7 x i8*]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 56, i1 false)
  %31 = bitcast i8* %30 to [7 x i8*]*
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8** %32, align 16
  %33 = getelementptr inbounds [7 x i8*], [7 x i8*]* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i8** %33, align 8
  %34 = getelementptr inbounds [7 x i8*], [7 x i8*]* %31, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8** %34, align 16
  %35 = getelementptr inbounds [7 x i8*], [7 x i8*]* %31, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8** %35, align 8
  %36 = getelementptr inbounds [7 x i8*], [7 x i8*]* %31, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8** %36, align 16
  %37 = getelementptr inbounds [7 x i8*], [7 x i8*]* %31, i32 0, i32 5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8** %37, align 8
  %38 = bitcast [9 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([9 x i8*]* @__const.parseReg.cregs to i8*), i64 72, i1 false)
  %39 = bitcast [9 x i8*]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 bitcast ([9 x i8*]* @__const.parseReg.dregs to i8*), i64 72, i1 false)
  %40 = load i8*, i8** %7, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = call i64 @getToken(i8* %40, i64* %41, i64* %20)
  %43 = load i8*, i8** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %22, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %47, %49
  store i64 %50, i64* %21, align 8
  %51 = load i64, i64* %20, align 8
  %52 = load i64*, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %21, align 8
  %54 = icmp eq i64 %53, 3
  br i1 %54, label %55, label %92

55:                                               ; preds = %4
  %56 = load i8*, i8** %22, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 101
  br i1 %60, label %61, label %92

61:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %22, align 8
  %74 = load i64, i64* %21, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @r_str_ncasecmp(i8* %72, i8* %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @OT_GPREG, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @OT_REG(i32 %80)
  %82 = and i32 %79, %81
  %83 = load i32, i32* @OT_DWORD, align 4
  %84 = or i32 %82, %83
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %524

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %62

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %55, %4
  %93 = load i64, i64* %21, align 8
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load i8*, i8** %22, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 99
  br i1 %100, label %101, label %132

101:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %128, %101
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [9 x i8*], [9 x i8*]* %18, i64 0, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [9 x i8*], [9 x i8*]* %18, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %22, align 8
  %114 = load i64, i64* %21, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @r_str_ncasecmp(i8* %112, i8* %113, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* @OT_CONTROLREG, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @OT_REG(i32 %120)
  %122 = and i32 %119, %121
  %123 = load i32, i32* @OT_DWORD, align 4
  %124 = or i32 %122, %123
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %524

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %102

131:                                              ; preds = %102
  br label %132

132:                                              ; preds = %131, %95, %92
  %133 = load i64, i64* %21, align 8
  %134 = icmp eq i64 %133, 3
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  %136 = load i8*, i8** %22, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 100
  br i1 %140, label %141, label %172

141:                                              ; preds = %135
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %168, %141
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [9 x i8*], [9 x i8*]* %18, i64 0, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %142
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [9 x i8*], [9 x i8*]* %19, i64 0, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** %22, align 8
  %154 = load i64, i64* %21, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @r_str_ncasecmp(i8* %152, i8* %153, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* @OT_DEBUGREG, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @OT_REG(i32 %160)
  %162 = and i32 %159, %161
  %163 = load i32, i32* @OT_DWORD, align 4
  %164 = or i32 %162, %163
  %165 = load i32*, i32** %9, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %5, align 4
  br label %524

167:                                              ; preds = %148
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %142

171:                                              ; preds = %142
  br label %172

172:                                              ; preds = %171, %135, %132
  %173 = load i64, i64* %21, align 8
  %174 = icmp eq i64 %173, 2
  br i1 %174, label %175, label %279

175:                                              ; preds = %172
  %176 = load i8*, i8** %22, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 108
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load i8*, i8** %22, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 104
  br i1 %186, label %187, label %218

187:                                              ; preds = %181, %175
  store i32 0, i32* %10, align 4
  br label %188

188:                                              ; preds = %214, %187
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %217

194:                                              ; preds = %188
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** %22, align 8
  %200 = load i64, i64* %21, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @r_str_ncasecmp(i8* %198, i8* %199, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %194
  %205 = load i32, i32* @OT_GPREG, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @OT_REG(i32 %206)
  %208 = and i32 %205, %207
  %209 = load i32, i32* @OT_BYTE, align 4
  %210 = or i32 %208, %209
  %211 = load i32*, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %5, align 4
  br label %524

213:                                              ; preds = %194
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %188

217:                                              ; preds = %188
  br label %218

218:                                              ; preds = %217, %181
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %245, %218
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %248

225:                                              ; preds = %219
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = load i8*, i8** %22, align 8
  %231 = load i64, i64* %21, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i32 @r_str_ncasecmp(i8* %229, i8* %230, i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %244, label %235

235:                                              ; preds = %225
  %236 = load i32, i32* @OT_GPREG, align 4
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @OT_REG(i32 %237)
  %239 = and i32 %236, %238
  %240 = load i32, i32* @OT_WORD, align 4
  %241 = or i32 %239, %240
  %242 = load i32*, i32** %9, align 8
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* %5, align 4
  br label %524

244:                                              ; preds = %225
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  br label %219

248:                                              ; preds = %219
  store i32 0, i32* %10, align 4
  br label %249

249:                                              ; preds = %275, %248
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %278

255:                                              ; preds = %249
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [7 x i8*], [7 x i8*]* %17, i64 0, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** %22, align 8
  %261 = load i64, i64* %21, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 @r_str_ncasecmp(i8* %259, i8* %260, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %255
  %266 = load i32, i32* @OT_SEGMENTREG, align 4
  %267 = load i32, i32* %10, align 4
  %268 = call i32 @OT_REG(i32 %267)
  %269 = and i32 %266, %268
  %270 = load i32, i32* @OT_WORD, align 4
  %271 = or i32 %269, %270
  %272 = load i32*, i32** %9, align 8
  store i32 %271, i32* %272, align 4
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %5, align 4
  br label %524

274:                                              ; preds = %255
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %10, align 4
  br label %249

278:                                              ; preds = %249
  br label %279

279:                                              ; preds = %278, %172
  %280 = load i8*, i8** %22, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 0
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 114
  br i1 %284, label %285, label %390

285:                                              ; preds = %279
  store i32 0, i32* %10, align 4
  br label %286

286:                                              ; preds = %314, %285
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %317

292:                                              ; preds = %286
  %293 = load i32, i32* %10, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [10 x i8*], [10 x i8*]* %15, i64 0, i64 %294
  %296 = load i8*, i8** %295, align 8
  %297 = load i8*, i8** %22, align 8
  %298 = load i64, i64* %21, align 8
  %299 = trunc i64 %298 to i32
  %300 = call i32 @r_str_ncasecmp(i8* %296, i8* %297, i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %313, label %302

302:                                              ; preds = %292
  %303 = load i32, i32* @OT_GPREG, align 4
  %304 = load i32, i32* %10, align 4
  %305 = call i32 @OT_REG(i32 %304)
  %306 = and i32 %303, %305
  %307 = load i32, i32* @OT_QWORD, align 4
  %308 = or i32 %306, %307
  %309 = load i32*, i32** %9, align 8
  store i32 %308, i32* %309, align 4
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  store i32 64, i32* %311, align 4
  %312 = load i32, i32* %10, align 4
  store i32 %312, i32* %5, align 4
  br label %524

313:                                              ; preds = %292
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  br label %286

317:                                              ; preds = %286
  store i32 0, i32* %10, align 4
  br label %318

318:                                              ; preds = %347, %317
  %319 = load i32, i32* %10, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [9 x i8*], [9 x i8*]* %16, i64 0, i64 %320
  %322 = load i8*, i8** %321, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %350

324:                                              ; preds = %318
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [9 x i8*], [9 x i8*]* %16, i64 0, i64 %326
  %328 = load i8*, i8** %327, align 8
  %329 = load i8*, i8** %22, align 8
  %330 = load i64, i64* %21, align 8
  %331 = trunc i64 %330 to i32
  %332 = call i32 @r_str_ncasecmp(i8* %328, i8* %329, i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %346, label %334

334:                                              ; preds = %324
  %335 = load i32, i32* @OT_GPREG, align 4
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @OT_REG(i32 %336)
  %338 = and i32 %335, %337
  %339 = load i32, i32* @OT_QWORD, align 4
  %340 = or i32 %338, %339
  %341 = load i32*, i32** %9, align 8
  store i32 %340, i32* %341, align 4
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  store i32 64, i32* %343, align 4
  %344 = load i32, i32* %10, align 4
  %345 = add nsw i32 %344, 9
  store i32 %345, i32* %5, align 4
  br label %524

346:                                              ; preds = %324
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %10, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %10, align 4
  br label %318

350:                                              ; preds = %318
  store i32 0, i32* %10, align 4
  br label %351

351:                                              ; preds = %386, %350
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [9 x i8*], [9 x i8*]* %12, i64 0, i64 %353
  %355 = load i8*, i8** %354, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %357, label %389

357:                                              ; preds = %351
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [9 x i8*], [9 x i8*]* %12, i64 0, i64 %359
  %361 = load i8*, i8** %360, align 8
  %362 = load i8*, i8** %22, align 8
  %363 = load i64, i64* %21, align 8
  %364 = trunc i64 %363 to i32
  %365 = call i32 @r_str_ncasecmp(i8* %361, i8* %362, i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %385, label %367

367:                                              ; preds = %357
  %368 = load i32, i32* @OT_GPREG, align 4
  %369 = load i32, i32* %10, align 4
  %370 = call i32 @OT_REG(i32 %369)
  %371 = and i32 %368, %370
  %372 = load i32, i32* @OT_DWORD, align 4
  %373 = or i32 %371, %372
  %374 = load i32*, i32** %9, align 8
  store i32 %373, i32* %374, align 4
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = icmp slt i32 %377, 32
  br i1 %378, label %379, label %382

379:                                              ; preds = %367
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  store i32 32, i32* %381, align 4
  br label %382

382:                                              ; preds = %379, %367
  %383 = load i32, i32* %10, align 4
  %384 = add nsw i32 %383, 9
  store i32 %384, i32* %5, align 4
  br label %524

385:                                              ; preds = %357
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %10, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %10, align 4
  br label %351

389:                                              ; preds = %351
  br label %390

390:                                              ; preds = %389, %279
  %391 = load i8*, i8** %22, align 8
  %392 = call i32 @r_str_ncasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), i8* %391, i32 2)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %401, label %394

394:                                              ; preds = %390
  %395 = load i32, i32* @OT_FPUREG, align 4
  %396 = load i32, i32* @OT_REGALL, align 4
  %397 = xor i32 %396, -1
  %398 = and i32 %395, %397
  %399 = load i32*, i32** %9, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i64*, i64** %8, align 8
  store i64 2, i64* %400, align 8
  br label %401

401:                                              ; preds = %394, %390
  %402 = load i8*, i8** %22, align 8
  %403 = call i32 @r_str_ncasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* %402, i32 2)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %412, label %405

405:                                              ; preds = %401
  %406 = load i32, i32* @OT_MMXREG, align 4
  %407 = load i32, i32* @OT_REGALL, align 4
  %408 = xor i32 %407, -1
  %409 = and i32 %406, %408
  %410 = load i32*, i32** %9, align 8
  store i32 %409, i32* %410, align 4
  %411 = load i64*, i64** %8, align 8
  store i64 2, i64* %411, align 8
  br label %412

412:                                              ; preds = %405, %401
  %413 = load i8*, i8** %22, align 8
  %414 = call i32 @r_str_ncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* %413, i32 3)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %423, label %416

416:                                              ; preds = %412
  %417 = load i32, i32* @OT_XMMREG, align 4
  %418 = load i32, i32* @OT_REGALL, align 4
  %419 = xor i32 %418, -1
  %420 = and i32 %417, %419
  %421 = load i32*, i32** %9, align 8
  store i32 %420, i32* %421, align 4
  %422 = load i64*, i64** %8, align 8
  store i64 3, i64* %422, align 8
  br label %423

423:                                              ; preds = %416, %412
  %424 = load i32*, i32** %9, align 8
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @OT_FPUREG, align 4
  %427 = load i32, i32* @OT_MMXREG, align 4
  %428 = or i32 %426, %427
  %429 = load i32, i32* @OT_XMMREG, align 4
  %430 = or i32 %428, %429
  %431 = and i32 %425, %430
  %432 = load i32, i32* @OT_REGALL, align 4
  %433 = xor i32 %432, -1
  %434 = and i32 %431, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %522

436:                                              ; preds = %423
  %437 = load i32, i32* @X86R_UNDEFINED, align 4
  store i32 %437, i32* %23, align 4
  %438 = load i8*, i8** %22, align 8
  %439 = load i64*, i64** %8, align 8
  %440 = call i64 @getToken(i8* %438, i64* %439, i64* %20)
  %441 = load i64, i64* @TT_SPECIAL, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %454

443:                                              ; preds = %436
  %444 = load i8*, i8** %22, align 8
  %445 = load i64*, i64** %8, align 8
  %446 = load i64, i64* %445, align 8
  %447 = getelementptr inbounds i8, i8* %444, i64 %446
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp eq i32 %449, 40
  br i1 %450, label %451, label %454

451:                                              ; preds = %443
  %452 = load i64, i64* %20, align 8
  %453 = load i64*, i64** %8, align 8
  store i64 %452, i64* %453, align 8
  br label %454

454:                                              ; preds = %451, %443, %436
  %455 = load i8*, i8** %22, align 8
  %456 = load i64*, i64** %8, align 8
  %457 = call i64 @getToken(i8* %455, i64* %456, i64* %20)
  %458 = load i64, i64* @TT_NUMBER, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %460, label %467

460:                                              ; preds = %454
  %461 = load i8*, i8** %7, align 8
  %462 = load i64*, i64** %8, align 8
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr inbounds i8, i8* %461, i64 %463
  %465 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i64 0, i64 0), i8* %464)
  %466 = load i32, i32* @X86R_UNDEFINED, align 4
  store i32 %466, i32* %5, align 4
  br label %524

467:                                              ; preds = %454
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %469 = load i8*, i8** %22, align 8
  %470 = load i64*, i64** %8, align 8
  %471 = load i64, i64* %470, align 8
  %472 = getelementptr inbounds i8, i8* %469, i64 %471
  %473 = call i32 @getnum(%struct.TYPE_4__* %468, i8* %472)
  store i32 %473, i32* %23, align 4
  %474 = load i32, i32* %23, align 4
  %475 = icmp sgt i32 %474, 15
  br i1 %475, label %490, label %476

476:                                              ; preds = %467
  %477 = load i32*, i32** %9, align 8
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* @OT_FPUREG, align 4
  %480 = load i32, i32* @OT_MMXREG, align 4
  %481 = or i32 %479, %480
  %482 = and i32 %478, %481
  %483 = load i32, i32* @OT_REGALL, align 4
  %484 = xor i32 %483, -1
  %485 = and i32 %482, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %476
  %488 = load i32, i32* %23, align 4
  %489 = icmp sgt i32 %488, 7
  br i1 %489, label %490, label %493

490:                                              ; preds = %487, %467
  %491 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0))
  %492 = load i32, i32* @X86R_UNDEFINED, align 4
  store i32 %492, i32* %5, align 4
  br label %524

493:                                              ; preds = %487, %476
  %494 = load i64, i64* %20, align 8
  %495 = load i64*, i64** %8, align 8
  store i64 %494, i64* %495, align 8
  %496 = load i8*, i8** %22, align 8
  %497 = load i64*, i64** %8, align 8
  %498 = call i64 @getToken(i8* %496, i64* %497, i64* %20)
  %499 = load i64, i64* @TT_SPECIAL, align 8
  %500 = icmp eq i64 %498, %499
  br i1 %500, label %501, label %512

501:                                              ; preds = %493
  %502 = load i8*, i8** %22, align 8
  %503 = load i64*, i64** %8, align 8
  %504 = load i64, i64* %503, align 8
  %505 = getelementptr inbounds i8, i8* %502, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = sext i8 %506 to i32
  %508 = icmp eq i32 %507, 41
  br i1 %508, label %509, label %512

509:                                              ; preds = %501
  %510 = load i64, i64* %20, align 8
  %511 = load i64*, i64** %8, align 8
  store i64 %510, i64* %511, align 8
  br label %512

512:                                              ; preds = %509, %501, %493
  %513 = load i32, i32* %23, align 4
  %514 = call i32 @OT_REG(i32 %513)
  %515 = load i32, i32* @OT_REGTYPE, align 4
  %516 = xor i32 %515, -1
  %517 = and i32 %514, %516
  %518 = load i32*, i32** %9, align 8
  %519 = load i32, i32* %518, align 4
  %520 = or i32 %519, %517
  store i32 %520, i32* %518, align 4
  %521 = load i32, i32* %23, align 4
  store i32 %521, i32* %5, align 4
  br label %524

522:                                              ; preds = %423
  %523 = load i32, i32* @X86R_UNDEFINED, align 4
  store i32 %523, i32* %5, align 4
  br label %524

524:                                              ; preds = %522, %512, %490, %460, %382, %334, %302, %265, %235, %204, %158, %118, %78
  %525 = load i32, i32* %5, align 4
  ret i32 %525
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @getToken(i8*, i64*, i64*) #2

declare dso_local i32 @r_str_ncasecmp(i8*, i8*, i32) #2

declare dso_local i32 @OT_REG(i32) #2

declare dso_local i32 @eprintf(i8*, ...) #2

declare dso_local i32 @getnum(%struct.TYPE_4__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
