; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_smd.c_symbols.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_smd.c_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rom_start\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rom_end\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ram_start\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ram_end\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"DomesticName\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"OverseasName\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ProductCode\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Checksum: 0x%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Peripherials\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"SramCode\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ModemCode\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"CountryCode\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"SSP\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"BusErr\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"AdrErr\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"InvOpCode\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"DivBy0\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Check\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"TrapV\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"GPF\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Trace\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Reserv0\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Reserv1\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Reserv2\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Reserv3\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Reserv4\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"BadInt\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Reserv10\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Reserv11\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Reserv12\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Reserv13\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Reserv14\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Reserv15\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"Reserv16\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Reserv17\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"BadIRQ\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"IRQ1\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"EXT\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"IRQ3\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"HBLANK\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"IRQ5\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"VBLANK\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"IRQ7\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Trap0\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"Trap1\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Trap2\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Trap3\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Trap4\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Trap5\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"Trap6\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"Trap7\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Trap8\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Trap9\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Trap10\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Trap11\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Trap12\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"Trap13\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Trap14\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Trap15\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Reserv30\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"Reserv31\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"Reserv32\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"Reserv33\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Reserv34\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Reserv35\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"Reserv36\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"Reserv37\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Reserv38\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Reserv39\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"Reserv3A\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"Reserv3B\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"Reserv3C\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"Reserv3D\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"Reserv3E\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"Reserv3F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @symbols(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i64], align 16
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = load i32, i32* @free, align 4
  %12 = call i32* @r_list_newf(i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %169

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %struct.TYPE_4__* %7 to i32*
  %20 = call i32 @r_buf_read_at(i32 %18, i32 256, i32* %19, i32 72)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 72
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %169

25:                                               ; preds = %15
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 12
  %28 = call i64 @r_read_be32(i64* %27)
  %29 = call i32 @addsym(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  %32 = call i64 @r_read_be32(i64* %31)
  %33 = call i32 @addsym(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 10
  %36 = call i64 @r_read_be32(i64* %35)
  %37 = call i32 @addsym(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  %40 = call i64 @r_read_be32(i64* %39)
  %41 = call i32 @addsym(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @showstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 32)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @showstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %46, i32 48)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @showstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %49, i32 48)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @showstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %52, i32 14)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @showstr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %59, i32 16)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @showstr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %62, i32 12)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @showstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %65, i32 12)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @showstr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %68, i32 16)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = bitcast [64 x i64]* %9 to i32*
  %74 = call i32 @r_buf_read_at(i32 %72, i32 0, i32* %73, i32 512)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %164, %25
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 64
  br i1 %77, label %78, label %167

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  switch i32 %79, label %144 [
    i32 0, label %80
    i32 1, label %81
    i32 2, label %82
    i32 3, label %83
    i32 4, label %84
    i32 5, label %85
    i32 6, label %86
    i32 7, label %87
    i32 8, label %88
    i32 9, label %89
    i32 10, label %90
    i32 11, label %91
    i32 12, label %92
    i32 13, label %93
    i32 14, label %94
    i32 15, label %95
    i32 16, label %96
    i32 17, label %97
    i32 18, label %98
    i32 19, label %99
    i32 20, label %100
    i32 21, label %101
    i32 22, label %102
    i32 23, label %103
    i32 24, label %104
    i32 25, label %105
    i32 26, label %106
    i32 27, label %107
    i32 28, label %108
    i32 29, label %109
    i32 30, label %110
    i32 31, label %111
    i32 32, label %112
    i32 33, label %113
    i32 34, label %114
    i32 35, label %115
    i32 36, label %116
    i32 37, label %117
    i32 38, label %118
    i32 39, label %119
    i32 40, label %120
    i32 41, label %121
    i32 42, label %122
    i32 43, label %123
    i32 44, label %124
    i32 45, label %125
    i32 46, label %126
    i32 47, label %127
    i32 48, label %128
    i32 49, label %129
    i32 50, label %130
    i32 51, label %131
    i32 52, label %132
    i32 53, label %133
    i32 54, label %134
    i32 55, label %135
    i32 56, label %136
    i32 57, label %137
    i32 58, label %138
    i32 59, label %139
    i32 60, label %140
    i32 61, label %141
    i32 62, label %142
    i32 63, label %143
  ]

80:                                               ; preds = %78
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %145

81:                                               ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %145

82:                                               ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %145

83:                                               ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  br label %145

84:                                               ; preds = %78
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %5, align 8
  br label %145

85:                                               ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %5, align 8
  br label %145

86:                                               ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  br label %145

87:                                               ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %5, align 8
  br label %145

88:                                               ; preds = %78
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %5, align 8
  br label %145

89:                                               ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %5, align 8
  br label %145

90:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %5, align 8
  br label %145

91:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %5, align 8
  br label %145

92:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %5, align 8
  br label %145

93:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %5, align 8
  br label %145

94:                                               ; preds = %78
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8** %5, align 8
  br label %145

95:                                               ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8** %5, align 8
  br label %145

96:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8** %5, align 8
  br label %145

97:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8** %5, align 8
  br label %145

98:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8** %5, align 8
  br label %145

99:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8** %5, align 8
  br label %145

100:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %5, align 8
  br label %145

101:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8** %5, align 8
  br label %145

102:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8** %5, align 8
  br label %145

103:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8** %5, align 8
  br label %145

104:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8** %5, align 8
  br label %145

105:                                              ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8** %5, align 8
  br label %145

106:                                              ; preds = %78
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8** %5, align 8
  br label %145

107:                                              ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8** %5, align 8
  br label %145

108:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8** %5, align 8
  br label %145

109:                                              ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8** %5, align 8
  br label %145

110:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8** %5, align 8
  br label %145

111:                                              ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8** %5, align 8
  br label %145

112:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8** %5, align 8
  br label %145

113:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8** %5, align 8
  br label %145

114:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8** %5, align 8
  br label %145

115:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i8** %5, align 8
  br label %145

116:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8** %5, align 8
  br label %145

117:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8** %5, align 8
  br label %145

118:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i8** %5, align 8
  br label %145

119:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8** %5, align 8
  br label %145

120:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8** %5, align 8
  br label %145

121:                                              ; preds = %78
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8** %5, align 8
  br label %145

122:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i8** %5, align 8
  br label %145

123:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8** %5, align 8
  br label %145

124:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8** %5, align 8
  br label %145

125:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i8** %5, align 8
  br label %145

126:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i8** %5, align 8
  br label %145

127:                                              ; preds = %78
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i8** %5, align 8
  br label %145

128:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8** %5, align 8
  br label %145

129:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8** %5, align 8
  br label %145

130:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8** %5, align 8
  br label %145

131:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8** %5, align 8
  br label %145

132:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i64 0, i64 0), i8** %5, align 8
  br label %145

133:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i64 0, i64 0), i8** %5, align 8
  br label %145

134:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i64 0, i64 0), i8** %5, align 8
  br label %145

135:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i8** %5, align 8
  br label %145

136:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i8** %5, align 8
  br label %145

137:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i8** %5, align 8
  br label %145

138:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8** %5, align 8
  br label %145

139:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8** %5, align 8
  br label %145

140:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i8** %5, align 8
  br label %145

141:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i8** %5, align 8
  br label %145

142:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0), i8** %5, align 8
  br label %145

143:                                              ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i8** %5, align 8
  br label %145

144:                                              ; preds = %78
  store i8* null, i8** %5, align 8
  br label %145

145:                                              ; preds = %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80
  %146 = load i8*, i8** %5, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %156
  %158 = call i64 @r_read_be32(i64* %157)
  store i64 %158, i64* %10, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call i32 @addsym(i32* %159, i8* %160, i64 %161)
  br label %163

163:                                              ; preds = %154, %148, %145
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %75

167:                                              ; preds = %75
  %168 = load i32*, i32** %4, align 8
  store i32* %168, i32** %2, align 8
  br label %169

169:                                              ; preds = %167, %24, %14
  %170 = load i32*, i32** %2, align 8
  ret i32* %170
}

declare dso_local i32* @r_list_newf(i32) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #1

declare dso_local i32 @addsym(i32*, i8*, i64) #1

declare dso_local i64 @r_read_be32(i64*) #1

declare dso_local i32 @showstr(i8*, i32, i32) #1

declare dso_local i32 @eprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
