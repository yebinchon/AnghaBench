; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_Cfile.c_r_egg_Cfile_set_cEnv.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_Cfile.c_r_egg_Cfile_set_cEnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cEnv_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"SFLIBPATH\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"r2 -hh | grep INCDIR | awk '{print $2}'\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Cannot find SFLIBPATH env var.\0APlease define it, or fix r2 installation.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s/sflib\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"gobjcopy\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"mach0\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"-arch i386 -fPIC -fPIE\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"-arch i386 -shared -c -fPIC -fPIE -pie\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"-arch x86_64 -fPIC -fPIE\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"-arch x86_64 -shared -c -fPIC -fPIE -pie\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"-shared -c -fPIC -pie -fPIE\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\0A.text\0A%s _main\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"objcopy\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"\0A.section .text\0A.globl  main\0A// .type   main, @function\0A%s main\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"-fPIC -fPIE -pie -fpic -m32\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"-fPIC -fPIE -pie -fpic -m64\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"-fPIC -fPIE -pie -fpic -nostartfiles\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%s-%s-%d\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"pe\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"0..__text\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"darwin-arm-64\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"xcrun --sdk iphoneos gcc -arch arm64 -miphoneos-version-min=0.0\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"0.__TEXT.__text\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"darwin-arm-32\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"xcrun --sdk iphoneos gcc -arch armv7 -miphoneos-version-min=0.0\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"%s -fno-stack-protector -nostdinc -include '%s'/'%s'/sflib.h\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"%s -fomit-frame-pointer -fno-zero-initialized-in-bss\00", align 1
@.str.33 = private unnamed_addr constant [85 x i8] c"%s -z execstack -fomit-frame-pointer -finline-functions -fno-zero-initialized-in-bss\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%s -nostdlib\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Error with cEnv allocation!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cEnv_t* (i8*, i8*, i32)* @r_egg_Cfile_set_cEnv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cEnv_t* @r_egg_Cfile_set_cEnv(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cEnv_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cEnv_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.cEnv_t* @calloc(i32 1, i32 80)
  store %struct.cEnv_t* %12, %struct.cEnv_t** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %14 = icmp ne %struct.cEnv_t* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.cEnv_t* null, %struct.cEnv_t** %4, align 8
  br label %306

16:                                               ; preds = %3
  %17 = call i8* (...) @r_egg_Cfile_getCompiler()
  %18 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %19 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = icmp ne i8* %17, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %299

22:                                               ; preds = %16
  %23 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %25 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %27 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %26, i32 0, i32 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %22
  %31 = call i8* @r_sys_cmd_strf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %30
  %41 = call i32 @eprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %299

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %52 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = icmp ne i8* %50, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %299

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @r_egg_Cfile_armOrMips(i8* %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %62 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %63 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @isXNU(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %107

67:                                               ; preds = %56
  %68 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %69 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %68, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %69, align 8
  %70 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %71 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %70, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %71, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = call i8* @strdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %80 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %81 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = call i8* @strdup(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %83 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %84 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  br label %92

85:                                               ; preds = %75
  %86 = call i8* @strdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %87 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %88 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = call i8* @strdup(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %90 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %91 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %85, %78
  br label %100

93:                                               ; preds = %67
  %94 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %95 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %96 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %98 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %99 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %92
  %101 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %102 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %103)
  %105 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %106 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %105, i32 0, i32 9
  store i8* %104, i8** %106, align 8
  br label %147

107:                                              ; preds = %56
  %108 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %109 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %108, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %109, align 8
  %110 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %111 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %110, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %111, align 8
  %112 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %113 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0), i8* %114)
  %116 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %117 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %116, i32 0, i32 9
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, 32
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %126 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %127 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %129 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %130 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  br label %138

131:                                              ; preds = %121
  %132 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %133 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %134 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %136 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %137 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %136, i32 0, i32 5
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %131, %124
  br label %146

139:                                              ; preds = %107
  %140 = call i8* @strdup(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %141 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %142 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = call i8* @strdup(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %144 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %145 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %139, %138
  br label %147

147:                                              ; preds = %146, %100
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* %148, i8* %149, i32 %150)
  %152 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %153 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %152, i32 0, i32 6
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %147
  %158 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %159 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %158, i32 0, i32 7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8** %159, align 8
  %160 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %161 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %160, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8** %161, align 8
  br label %173

162:                                              ; preds = %147
  %163 = load i8*, i8** %6, align 8
  %164 = call i64 @isXNU(i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %168 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %167, i32 0, i32 7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8** %168, align 8
  br label %172

169:                                              ; preds = %162
  %170 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %171 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %170, i32 0, i32 7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8** %171, align 8
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %172, %157
  store i32 0, i32* %9, align 4
  %174 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %175 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %173
  %180 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %181 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @free(i8* %182)
  %184 = call i8* @strdup(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0))
  %185 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %186 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  store i32 1, i32* %9, align 4
  %187 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %188 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %187, i32 0, i32 7
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %188, align 8
  br label %206

189:                                              ; preds = %173
  %190 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %191 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %190, i32 0, i32 6
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %189
  %196 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %197 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @free(i8* %198)
  %200 = call i8* @strdup(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0))
  %201 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %202 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  store i32 1, i32* %9, align 4
  %203 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %204 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %203, i32 0, i32 7
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %204, align 8
  br label %205

205:                                              ; preds = %195, %189
  br label %206

206:                                              ; preds = %205, %179
  %207 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %208 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %207, i32 0, i32 4
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %211 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %210, i32 0, i32 8
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %214 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %213, i32 0, i32 6
  %215 = load i8*, i8** %214, align 8
  %216 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i64 0, i64 0), i8* %209, i8* %212, i8* %215)
  store i8* %216, i8** %10, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %206
  br label %299

220:                                              ; preds = %206
  %221 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %222 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %221, i32 0, i32 4
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @free(i8* %223)
  %225 = load i8*, i8** %10, align 8
  %226 = call i8* @strdup(i8* %225)
  %227 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %228 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %227, i32 0, i32 4
  store i8* %226, i8** %228, align 8
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %250

231:                                              ; preds = %220
  %232 = load i8*, i8** %10, align 8
  %233 = call i32 @free(i8* %232)
  %234 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %235 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %234, i32 0, i32 4
  %236 = load i8*, i8** %235, align 8
  %237 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0), i8* %236)
  store i8* %237, i8** %10, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %231
  br label %299

241:                                              ; preds = %231
  %242 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %243 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %242, i32 0, i32 4
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @free(i8* %244)
  %246 = load i8*, i8** %10, align 8
  %247 = call i8* @strdup(i8* %246)
  %248 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %249 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %248, i32 0, i32 4
  store i8* %247, i8** %249, align 8
  br label %269

250:                                              ; preds = %220
  %251 = load i8*, i8** %10, align 8
  %252 = call i32 @free(i8* %251)
  %253 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %254 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %253, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %256 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.33, i64 0, i64 0), i8* %255)
  store i8* %256, i8** %10, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %250
  br label %299

260:                                              ; preds = %250
  %261 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %262 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %261, i32 0, i32 4
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @free(i8* %263)
  %265 = load i8*, i8** %10, align 8
  %266 = call i8* @strdup(i8* %265)
  %267 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %268 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %267, i32 0, i32 4
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %260, %241
  %270 = load i8*, i8** %10, align 8
  %271 = call i32 @free(i8* %270)
  %272 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %273 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %272, i32 0, i32 5
  %274 = load i8*, i8** %273, align 8
  %275 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %274)
  store i8* %275, i8** %10, align 8
  %276 = load i8*, i8** %10, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %269
  br label %299

279:                                              ; preds = %269
  %280 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %281 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %280, i32 0, i32 5
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @free(i8* %282)
  %284 = load i8*, i8** %10, align 8
  %285 = call i8* @strdup(i8* %284)
  %286 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %287 = getelementptr inbounds %struct.cEnv_t, %struct.cEnv_t* %286, i32 0, i32 5
  store i8* %285, i8** %287, align 8
  %288 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %289 = call i64 @r_egg_Cfile_check_cEnv(%struct.cEnv_t* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %279
  %292 = call i32 @eprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0))
  br label %299

293:                                              ; preds = %279
  %294 = load i8*, i8** %10, align 8
  %295 = call i32 @free(i8* %294)
  %296 = load i8*, i8** %11, align 8
  %297 = call i32 @free(i8* %296)
  %298 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  store %struct.cEnv_t* %298, %struct.cEnv_t** %4, align 8
  br label %306

299:                                              ; preds = %291, %278, %259, %240, %219, %54, %40, %21
  %300 = load i8*, i8** %10, align 8
  %301 = call i32 @free(i8* %300)
  %302 = load i8*, i8** %11, align 8
  %303 = call i32 @free(i8* %302)
  %304 = load %struct.cEnv_t*, %struct.cEnv_t** %8, align 8
  %305 = call i32 @r_egg_Cfile_free_cEnv(%struct.cEnv_t* %304)
  store %struct.cEnv_t* null, %struct.cEnv_t** %4, align 8
  br label %306

306:                                              ; preds = %299, %293, %15
  %307 = load %struct.cEnv_t*, %struct.cEnv_t** %4, align 8
  ret %struct.cEnv_t* %307
}

declare dso_local %struct.cEnv_t* @calloc(i32, i32) #1

declare dso_local i8* @r_egg_Cfile_getCompiler(...) #1

declare dso_local i8* @r_sys_getenv(i8*) #1

declare dso_local i8* @r_sys_cmd_strf(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, ...) #1

declare dso_local i64 @r_egg_Cfile_armOrMips(i8*) #1

declare dso_local i64 @isXNU(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @r_egg_Cfile_check_cEnv(%struct.cEnv_t*) #1

declare dso_local i32 @r_egg_Cfile_free_cEnv(%struct.cEnv_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
