; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_6502_pseudo.c_replace.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_6502_pseudo.c_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"lda\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a = 1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"a = (1+2)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ldx\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"x = 1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"x = (1+2)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ldy\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"y = 1\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"y = (1+2)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sta\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"[1] = a\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"[1+2 ] = a\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"stx\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"[1] = x\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"[1+2] = x\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"sty\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"[1] = y\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"[1+2] = y\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"1--\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"(1+2)--\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dcx\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"x--\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"dcy\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"y--\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"1++\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"(1+2)++\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"inx\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"x++\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"iny\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"y++\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"a += 1\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"a += (1+2)\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"sbc\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"a -= 1\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"a -= (1+2)\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"pha\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"push a\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"a &= 1\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"a &= (1+2)\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"eor\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"a ^= 1\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"a ^= (1+2)\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"ora\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"a |= 1\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"a |= (1+2)\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"tax\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"x = a\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"tay\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"y = a\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"txa\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"a = x\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"tya\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"a = y\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"tsx\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"x = s\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"txs\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"s = x\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"brk\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"clc\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"clear_carry\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"cld\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"clear_decimal\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"cli\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"clear_interrupt\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"clv\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"clear_overflow\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"set_carry\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"sed\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"set_decimal\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"sei\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"set_interrupt\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"jsr\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"1()\00", align 1
@__const.replace.ops = private unnamed_addr constant [47 x %struct.anon] [%struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0) }, %struct.anon { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str.79 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, i32)* @replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace(i32 %0, i8** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [47 x %struct.anon], align 16
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = bitcast [47 x %struct.anon]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([47 x %struct.anon]* @__const.replace.ops to i8*), i64 1128, i1 false)
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %199

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %164, %19
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %167

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %164

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %50, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %163, label %56

56:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %127, %56
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %132

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @IS_DIGIT(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %69
  %82 = load i8**, i8*** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 48
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %82, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %81
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @strcpy(i8* %103, i8* %104)
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %99, %81
  br label %126

112:                                              ; preds = %69
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [47 x %struct.anon], [47 x %struct.anon]* %13, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 %121, i8* %125, align 1
  br label %126

126:                                              ; preds = %112, %111
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %57

132:                                              ; preds = %57
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 4
  br i1 %138, label %139, label %162

139:                                              ; preds = %132
  %140 = load i8**, i8*** %7, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 2
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 91
  br i1 %146, label %147, label %162

147:                                              ; preds = %139
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = call i32 @strcat(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0))
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = getelementptr inbounds i8, i8* %156, i64 3
  %158 = load i8**, i8*** %7, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strcat(i8* %157, i8* %160)
  br label %162

162:                                              ; preds = %147, %139, %132
  store i32 1, i32* %5, align 4
  br label %199

163:                                              ; preds = %45
  br label %164

164:                                              ; preds = %163, %43
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %20

167:                                              ; preds = %20
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 0, i8* %169, align 1
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %195, %167
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %198

174:                                              ; preds = %170
  %175 = load i8*, i8** %8, align 8
  %176 = load i8**, i8*** %7, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strcat(i8* %175, i8* %180)
  %182 = load i8*, i8** %8, align 8
  %183 = load i32, i32* %10, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %174
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %6, align 4
  %188 = sub nsw i32 %187, 1
  %189 = icmp eq i32 %186, %188
  br label %190

190:                                              ; preds = %185, %174
  %191 = phi i1 [ true, %174 ], [ %189, %185 ]
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0)
  %194 = call i32 @strcat(i8* %182, i8* %193)
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  br label %170

198:                                              ; preds = %170
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %162, %18
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @IS_DIGIT(i8 signext) #2

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
