; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_m68k_pseudo.c_replace.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_m68k_pseudo.c_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"2 = 1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"movea\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"moveq\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"movem\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lea\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bsr\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"1()\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"jsr\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"beq\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"if (==) jmp 1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"blt\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"if (<) jmp 1\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ble\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"if (<=) jmp 1\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"bgt\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"if (>) jmp 1\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"bge\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"if (>=) jmp 1\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"bcs\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"if (cs) jmp 1\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"bcc\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"if (cc) jmp 1\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"bra\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"jmp 1\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"btst\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"1 == 2\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"cmpi\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"2 == 1\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"1 += 2\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"addi\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"adda\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"subq\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"tst\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ori\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"2 |= 1\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"lsr\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"2 >>= 1\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"lsl\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"2 <<= 1\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"andi\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"2 &= 1\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.replace.ops = private unnamed_addr constant [33 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.50, i32 0, i32 0), i32 0 }, %struct.anon zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [33 x %struct.anon], align 16
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = bitcast [33 x %struct.anon]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([33 x %struct.anon]* @__const.replace.ops to i8*), i64 792, i1 false)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %120, %3
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* %11, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %123

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* %11, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %26, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %119, label %32

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %118

35:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %108, %35
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* %11, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %113

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* %11, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* %11, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @can_replace(i8* %53, i32 %54, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %48
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* %11, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %63, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %62
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @strcpy(i8* %84, i8* %85)
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %80, %62
  br label %107

93:                                               ; preds = %48
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [33 x %struct.anon], [33 x %struct.anon]* %11, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %102, i8* %106, align 1
  br label %107

107:                                              ; preds = %93, %92
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %36

113:                                              ; preds = %36
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %113, %32
  store i32 1, i32* %4, align 4
  br label %159

119:                                              ; preds = %21
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %14

123:                                              ; preds = %14
  %124 = load i8*, i8** %7, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %158

126:                                              ; preds = %123
  %127 = load i8*, i8** %7, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 0, i8* %128, align 1
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %154, %126
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  %135 = load i8**, i8*** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strcat(i8* %134, i8* %139)
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp eq i32 %145, %147
  br label %149

149:                                              ; preds = %144, %133
  %150 = phi i1 [ true, %133 ], [ %148, %144 ]
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)
  %153 = call i32 @strcat(i8* %141, i8* %152)
  br label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %129

157:                                              ; preds = %129
  br label %158

158:                                              ; preds = %157, %123
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %118
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @can_replace(i8*, i32, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
