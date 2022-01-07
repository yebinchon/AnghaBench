; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_avr_pseudo.c_replace.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_avr_pseudo.c_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"A += B\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"A += B + carry\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"adiw\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"A+1:A += B\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"A -= B\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"subi\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sbc\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"A -= (B + carry)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"sbci\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sbiw\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"A+1:A -= B\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"A &= B\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"andi\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"A |= B\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ori\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"eor\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"A ^= B\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"A = 0xff - A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"A = -A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"sbr\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"A &= (0xff - B)\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"A++\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"A--\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"tst\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"A &= A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"clr\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"A ^= A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"A = 0xff\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"r1:r0 = A * B\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"rjmp\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"goto A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"ijmp\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"goto z\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"rcall\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"icall\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"iret\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"return_interrupt()\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"var = A - B\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"cpc\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"var = A - B - carry\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"cpi\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"breq\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"if(!var) goto A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"brne\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"if(var) goto A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"brsh\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"if(var >= 0) goto A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"brlo\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"if(var < 0) goto A\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"brmi\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"brpl\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"if(var > 0) goto A\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"brge\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"brlt\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"A = B\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"movw\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"A+1:A = B+1:B\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"ldi\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"lds\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"A = *(B)\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"ldd\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"lpm\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"r0 = z\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"push(A)\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"A = pop()\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"lsl\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"A <<= 1\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"lsr\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"A >>= 1\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"rol\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"A = (A << 1) | (A >> 7)\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"A = (A << 7) | (A >> 1)\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"asr\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.98 = private unnamed_addr constant [42 x i8] c"A = ((A & 0xf0) >> 4) | ((A & 0x0f) << 4)\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"c = 1\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"clc\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"c = 0\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"sen\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"n = 1\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"cln\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"n = 0\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"sez\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"z = 1\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"clz\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"z = 0\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"sei\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"i = 1\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"cli\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"i = 0\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"ses\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"s = 1\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"s = 0\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"sev\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"v = 1\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"clv\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"v = 0\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"t = 1\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"clt\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"t = 0\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"seh\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"h = 1\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"clh\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"h = 0\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"_halt()\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"wdr\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"_watchdog_reset()\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"*(A) = B\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"sts\00", align 1
@__const.replace.ops = private unnamed_addr constant [82 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.95, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.98, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str.141 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c", \00", align 1
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
  %11 = alloca [82 x %struct.anon], align 16
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = bitcast [82 x %struct.anon]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([82 x %struct.anon]* @__const.replace.ops to i8*), i64 1312, i1 false)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %130, %3
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [82 x %struct.anon], [82 x %struct.anon]* %11, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 16
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %133

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [82 x %struct.anon], [82 x %struct.anon]* %11, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 16
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %26, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %129, label %32

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %128

35:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %118, %35
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [82 x %struct.anon], [82 x %struct.anon]* %11, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %123

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [82 x %struct.anon], [82 x %struct.anon]* %11, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 65
  br i1 %59, label %60, label %103

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [82 x %struct.anon], [82 x %struct.anon]* %11, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 74
  br i1 %71, label %72, label %103

72:                                               ; preds = %60
  %73 = load i8**, i8*** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [82 x %struct.anon], [82 x %struct.anon]* %11, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 64
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %73, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %72
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @strcpy(i8* %94, i8* %95)
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %90, %72
  br label %117

103:                                              ; preds = %60, %48
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [82 x %struct.anon], [82 x %struct.anon]* %11, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  br label %117

117:                                              ; preds = %103, %102
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %36

123:                                              ; preds = %36
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %123, %32
  store i32 1, i32* %4, align 4
  br label %169

129:                                              ; preds = %21
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %14

133:                                              ; preds = %14
  %134 = load i8*, i8** %7, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %168

136:                                              ; preds = %133
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 0, i8* %138, align 1
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %164, %136
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %167

143:                                              ; preds = %139
  %144 = load i8*, i8** %7, align 8
  %145 = load i8**, i8*** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strcat(i8* %144, i8* %149)
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %5, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp eq i32 %155, %157
  br label %159

159:                                              ; preds = %154, %143
  %160 = phi i1 [ true, %143 ], [ %158, %154 ]
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.141, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0)
  %163 = call i32 @strcat(i8* %151, i8* %162)
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %139

167:                                              ; preds = %139
  br label %168

168:                                              ; preds = %167, %133
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %128
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

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
