; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_chip8.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_chip8.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"scd 0x%01x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"scr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"jp 0x%03x\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"call 0x%03x\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"se v%1x, 0x%02x\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"sne v%1x, 0x%02x\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"se v%1x, v%1x\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ld v%1x, 0x%02x\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"add v%1x, 0x%02x\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"ld v%1x, v%1x\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"or v%1x, v%1x\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"and v%1x, v%1x\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"xor v%1x, v%1x\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"add v%1x, v%1x\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sub v%1x, v%1x\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"shr v%1x, v%1x\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"subn v%1x, v%1x\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"shl v%1x, v%1x\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sne v%1x, v%1x\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"ld i, 0x%03x\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"jp v0, 0x%03x\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"rnd v%1x, 0x%02x\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"drw v%1x, v%1x, 0x%01x\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"skp v%1x\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sknp v%1x\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"ld v%1x, dt\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ld v%1x, k\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"ld dt, v%1x\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ld st, v%1x\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"add i, v%1x\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"ld f, v%1x\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"ld b, v%1x\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"ld [i], v%1x\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"ld v%1x, [i]\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"ld hf, v%1x\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"ld r, v%1x\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ld v%1x, r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @r_read_be16(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 15
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 15
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 4095
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 255
  store i32 %29, i32* %14, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 61440
  switch i32 %31, label %212 [
    i32 0, label %32
    i32 4096, label %75
    i32 8192, label %78
    i32 12288, label %81
    i32 16384, label %85
    i32 20480, label %89
    i32 24576, label %93
    i32 28672, label %97
    i32 32768, label %101
    i32 36864, label %140
    i32 40960, label %144
    i32 45056, label %147
    i32 49152, label %150
    i32 53248, label %154
    i32 57344, label %159
    i32 61440, label %173
  ]

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 224
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %74

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 238
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %73

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 65520
  %43 = icmp eq i32 %42, 192
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  store i8* %46, i8** %15, align 8
  br label %72

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 251
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %71

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 252
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %70

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 253
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  br label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 254
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %15, align 8
  br label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 255
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %15, align 8
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %35
  br label %212

75:                                               ; preds = %4
  %76 = load i32, i32* %13, align 4
  %77 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %76)
  store i8* %77, i8** %15, align 8
  br label %212

78:                                               ; preds = %4
  %79 = load i32, i32* %13, align 4
  %80 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  store i8* %80, i8** %15, align 8
  br label %212

81:                                               ; preds = %4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %82, i32 %83)
  store i8* %84, i8** %15, align 8
  br label %212

85:                                               ; preds = %4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %86, i32 %87)
  store i8* %88, i8** %15, align 8
  br label %212

89:                                               ; preds = %4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %90, i32 %91)
  store i8* %92, i8** %15, align 8
  br label %212

93:                                               ; preds = %4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %94, i32 %95)
  store i8* %96, i8** %15, align 8
  br label %212

97:                                               ; preds = %4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %98, i32 %99)
  store i8* %100, i8** %15, align 8
  br label %212

101:                                              ; preds = %4
  %102 = load i32, i32* %12, align 4
  switch i32 %102, label %139 [
    i32 0, label %103
    i32 1, label %107
    i32 2, label %111
    i32 3, label %115
    i32 4, label %119
    i32 5, label %123
    i32 6, label %127
    i32 7, label %131
    i32 14, label %135
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %104, i32 %105)
  store i8* %106, i8** %15, align 8
  br label %139

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %108, i32 %109)
  store i8* %110, i8** %15, align 8
  br label %139

111:                                              ; preds = %101
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %112, i32 %113)
  store i8* %114, i8** %15, align 8
  br label %139

115:                                              ; preds = %101
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %116, i32 %117)
  store i8* %118, i8** %15, align 8
  br label %139

119:                                              ; preds = %101
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %120, i32 %121)
  store i8* %122, i8** %15, align 8
  br label %139

123:                                              ; preds = %101
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %124, i32 %125)
  store i8* %126, i8** %15, align 8
  br label %139

127:                                              ; preds = %101
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 %128, i32 %129)
  store i8* %130, i8** %15, align 8
  br label %139

131:                                              ; preds = %101
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %132, i32 %133)
  store i8* %134, i8** %15, align 8
  br label %139

135:                                              ; preds = %101
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %136, i32 %137)
  store i8* %138, i8** %15, align 8
  br label %139

139:                                              ; preds = %101, %135, %131, %127, %123, %119, %115, %111, %107, %103
  br label %212

140:                                              ; preds = %4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 %141, i32 %142)
  store i8* %143, i8** %15, align 8
  br label %212

144:                                              ; preds = %4
  %145 = load i32, i32* %13, align 4
  %146 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %145)
  store i8* %146, i8** %15, align 8
  br label %212

147:                                              ; preds = %4
  %148 = load i32, i32* %13, align 4
  %149 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %148)
  store i8* %149, i8** %15, align 8
  br label %212

150:                                              ; preds = %4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %151, i32 %152)
  store i8* %153, i8** %15, align 8
  br label %212

154:                                              ; preds = %4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %155, i32 %156, i32 %157)
  store i8* %158, i8** %15, align 8
  br label %212

159:                                              ; preds = %4
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, 158
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %10, align 4
  %164 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 %163)
  store i8* %164, i8** %15, align 8
  br label %172

165:                                              ; preds = %159
  %166 = load i32, i32* %14, align 4
  %167 = icmp eq i32 %166, 161
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %10, align 4
  %170 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i32 %169)
  store i8* %170, i8** %15, align 8
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %162
  br label %212

173:                                              ; preds = %4
  %174 = load i32, i32* %14, align 4
  switch i32 %174, label %211 [
    i32 7, label %175
    i32 10, label %178
    i32 21, label %181
    i32 24, label %184
    i32 30, label %187
    i32 41, label %190
    i32 51, label %193
    i32 85, label %196
    i32 101, label %199
    i32 48, label %202
    i32 117, label %205
    i32 133, label %208
  ]

175:                                              ; preds = %173
  %176 = load i32, i32* %10, align 4
  %177 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 %176)
  store i8* %177, i8** %15, align 8
  br label %211

178:                                              ; preds = %173
  %179 = load i32, i32* %10, align 4
  %180 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32 %179)
  store i8* %180, i8** %15, align 8
  br label %211

181:                                              ; preds = %173
  %182 = load i32, i32* %10, align 4
  %183 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %182)
  store i8* %183, i8** %15, align 8
  br label %211

184:                                              ; preds = %173
  %185 = load i32, i32* %10, align 4
  %186 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 %185)
  store i8* %186, i8** %15, align 8
  br label %211

187:                                              ; preds = %173
  %188 = load i32, i32* %10, align 4
  %189 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %188)
  store i8* %189, i8** %15, align 8
  br label %211

190:                                              ; preds = %173
  %191 = load i32, i32* %10, align 4
  %192 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 %191)
  store i8* %192, i8** %15, align 8
  br label %211

193:                                              ; preds = %173
  %194 = load i32, i32* %10, align 4
  %195 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i32 %194)
  store i8* %195, i8** %15, align 8
  br label %211

196:                                              ; preds = %173
  %197 = load i32, i32* %10, align 4
  %198 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32 %197)
  store i8* %198, i8** %15, align 8
  br label %211

199:                                              ; preds = %173
  %200 = load i32, i32* %10, align 4
  %201 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i32 %200)
  store i8* %201, i8** %15, align 8
  br label %211

202:                                              ; preds = %173
  %203 = load i32, i32* %10, align 4
  %204 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 %203)
  store i8* %204, i8** %15, align 8
  br label %211

205:                                              ; preds = %173
  %206 = load i32, i32* %10, align 4
  %207 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 %206)
  store i8* %207, i8** %15, align 8
  br label %211

208:                                              ; preds = %173
  %209 = load i32, i32* %10, align 4
  %210 = call i8* (i8*, i32, ...) @sdb_fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i32 %209)
  store i8* %210, i8** %15, align 8
  br label %211

211:                                              ; preds = %173, %208, %205, %202, %199, %196, %193, %190, %187, %184, %181, %178, %175
  br label %212

212:                                              ; preds = %4, %211, %172, %154, %150, %147, %144, %140, %139, %97, %93, %89, %85, %81, %78, %75, %74
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i8*, i8** %15, align 8
  %216 = call i32 @r_strbuf_set(i32* %214, i8* %215)
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i32 2, i32* %218, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  ret i32 %221
}

declare dso_local i32 @r_read_be16(i32*) #1

declare dso_local i8* @sdb_fmt(i8*, i32, ...) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
