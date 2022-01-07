; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_tcc_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_tcc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@tcc_state = common dso_local global %struct.TYPE_6__* null, align 8
@TCC_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@TOK___LINE__ = common dso_local global i32 0, align 4
@MACRO_OBJ = common dso_local global i32 0, align 4
@TOK___FILE__ = common dso_local global i32 0, align 4
@TOK___DATE__ = common dso_local global i32 0, align 4
@TOK___TIME__ = common dso_local global i32 0, align 4
@TCC_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"__TINYC__\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"__R2TINYC__\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"__STDC__\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"__STDC_VERSION__\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"199901L\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"__STDC_HOSTED__\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ut8\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"uint8_t\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ut16\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"uint16_t\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ut32\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ut64\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"st8\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"int8_t\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"st16\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"int16_t\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"st32\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"int32_t\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"st64\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__i386__\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"__i386\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"__x86_64__\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"__ARM_ARCH_4__\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"__arm_elf__\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"__arm_elf\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"arm_elf\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"__arm__\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"__arm\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"__APCS_32__\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"__WINDOWS__\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"_WIN64\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"__unix__\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"__unix\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"__linux__\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"__linux\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"freebsd\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"__FreeBSD__\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"__SIZE_TYPE__\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"__PTRDIFF_TYPE__\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"__WCHAR_TYPE__\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"__REDIRECT(name, proto, alias)\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"name proto __asm__(#alias)\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"__REDIRECT_NTH(name, proto, alias)\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"name proto __asm__(#alias) __THROW\00", align 1
@__FreeBSD__ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @tcc_new(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %227

19:                                               ; preds = %15
  %20 = call i32 (...) @tcc_cleanup()
  %21 = call %struct.TYPE_6__* @tcc_mallocz(i32 56)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %227

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** @tcc_state, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strdup(i8* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @TCC_OUTPUT_MEMORY, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = call i32 (...) @preprocess_new()
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @TOK___LINE__, align 4
  %48 = load i32, i32* @MACRO_OBJ, align 4
  %49 = call i32 @define_push(i32 %47, i32 %48, i32* null, i32* null)
  %50 = load i32, i32* @TOK___FILE__, align 4
  %51 = load i32, i32* @MACRO_OBJ, align 4
  %52 = call i32 @define_push(i32 %50, i32 %51, i32* null, i32* null)
  %53 = load i32, i32* @TOK___DATE__, align 4
  %54 = load i32, i32* @MACRO_OBJ, align 4
  %55 = call i32 @define_push(i32 %53, i32 %54, i32* null, i32* null)
  %56 = load i32, i32* @TOK___TIME__, align 4
  %57 = load i32, i32* @MACRO_OBJ, align 4
  %58 = call i32 @define_push(i32 %56, i32 %57, i32* null, i32* null)
  %59 = load i32, i32* @TCC_VERSION, align 4
  %60 = call i32 @sscanf(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11, i32* %12)
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %62, 10000
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %64, 100
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %72 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %75 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 3)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %25
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 32
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 16
  br i1 %106, label %107, label %114

107:                                              ; preds = %104, %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* null)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* null)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* null)
  br label %117

114:                                              ; preds = %104
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* null)
  br label %117

117:                                              ; preds = %114, %107
  br label %140

118:                                              ; preds = %25
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @strncmp(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 3)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* null)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* null)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* null)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %130 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8* null)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* null)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* null)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* null)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* null)
  br label %139

139:                                              ; preds = %122, %118
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 7)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %146 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* null)
  %147 = load i32, i32* %6, align 4
  %148 = icmp eq i32 %147, 64
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %151 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* null)
  br label %152

152:                                              ; preds = %149, %144
  br label %176

153:                                              ; preds = %140
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i8* null)
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %157 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* null)
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %159 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8* null)
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @strncmp(i8* %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i32 5)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %153
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %165 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* null)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* null)
  br label %168

168:                                              ; preds = %163, %153
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i32 7)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %174 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %168
  br label %176

176:                                              ; preds = %175, %152
  %177 = load i8*, i8** %7, align 8
  %178 = call i32 @strncmp(i8* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 7)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %181, 64
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %185 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0))
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %187 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  br label %193

188:                                              ; preds = %180, %176
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %190 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0))
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %192 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0))
  br label %193

193:                                              ; preds = %188, %183
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 @strncmp(i8* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 7)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %199 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0))
  br label %207

200:                                              ; preds = %193
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %202 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0))
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %204 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0))
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %206 = call i32 @tcc_define_symbol(%struct.TYPE_6__* %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0))
  br label %207

207:                                              ; preds = %200, %197
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  store i32 1, i32* %211, align 8
  %212 = load i8*, i8** %5, align 8
  %213 = call i32 @strncmp(i8* %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 3)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %6, align 4
  %217 = icmp eq i32 %216, 32
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %6, align 4
  %220 = icmp eq i32 %219, 16
  br i1 %220, label %221, label %224

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 5
  store i32 32, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %218
  br label %225

225:                                              ; preds = %224, %207
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %226, %struct.TYPE_6__** %4, align 8
  br label %227

227:                                              ; preds = %225, %24, %18
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %228
}

declare dso_local i32 @tcc_cleanup(...) #1

declare dso_local %struct.TYPE_6__* @tcc_mallocz(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @preprocess_new(...) #1

declare dso_local i32 @define_push(i32, i32, i32*, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @tcc_define_symbol(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
