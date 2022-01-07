; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_compress_functions.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_compress_functions.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Argument 1 (iterations) must be > 0.\00", align 1
@.str.1 = private unnamed_addr constant [2000 x i8] c"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus purus et risus vulputate, et mollis orci ullamcorper. Nulla facilisi. Fusce in ligula sed purus varius aliquet interdum vitae justo. Proin quis diam velit. Nulla varius iaculis auctor. Cras volutpat, justo eu dictum pulvinar, elit sem porttitor metus, et imperdiet metus sapien et ante. Nullam nisi nulla, ornare eu tristique eu, dignissim vitae diam. Nulla sagittis porta libero, a accumsan felis sagittis scelerisque.  Integer laoreet eleifend congue. Etiam rhoncus leo vel dolor fermentum, quis luctus nisl iaculis. Praesent a erat sapien. Aliquam semper mi in lorem ultrices ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat risus sed enim ultrices, at sodales nulla tristique. Maecenas eget pellentesque justo, sed pellentesque lectus. Fusce sagittis sit amet elit vel varius. Donec sed ligula nec ligula vulputate rutrum sed ut lectus. Etiam congue pharetra leo vitae cursus. Morbi enim ante, porttitor ut varius vel, tincidunt quis justo. Nunc iaculis, risus id ultrices semper, metus est efficitur ligula, vel posuere risus nunc eget purus. Ut lorem turpis, condimentum at sem sed, porta aliquam turpis. In ut sapien a nulla dictum tincidunt quis sit amet lorem. Fusce at est egestas, luctus neque eu, consectetur tortor. Phasellus eleifend ultricies nulla ac lobortis.  Morbi maximus quam cursus vehicula iaculis. Maecenas cursus vel justo ut rutrum. Curabitur magna orci, dignissim eget dapibus vitae, finibus id lacus. Praesent rhoncus mattis augue vitae bibendum. Praesent porta mauris non ultrices fermentum. Quisque vulputate ipsum in sodales pulvinar. Aliquam nec mollis felis. Donec vitae augue pulvinar, congue nisl sed, pretium purus. Fusce lobortis mi ac neque scelerisque semper. Pellentesque vel est vitae magna aliquet aliquet. Nam non dolor. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ac lacinia felis metus.\00", align 1
@.str.2 = private unnamed_addr constant [2000 x i8] c"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Couldn't allocate memory for the destination buffers.  Sad :(\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"Couldn't create a known-good destination buffer for comparison... this is bad.\00", align 1
@.str.5 = private unnamed_addr constant [101 x i8] c"Couldn't create a known-good (highly compressible) destination buffer for comparison... this is bad.\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"Failed to compress src using LZ4_compress_fast.  echo $? for return code.\00", align 1
@.str.7 = private unnamed_addr constant [120 x i8] c"According to memcmp(), the value we got in dst from LZ4_compress_fast doesn't match the known-good value.  This is bad.\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"Failed to compress src using LZ4_compress_fast_extState.  echo $? for return code.\00", align 1
@.str.9 = private unnamed_addr constant [129 x i8] c"According to memcmp(), the value we got in dst from LZ4_compress_fast_extState doesn't match the known-good value.  This is bad.\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\0AStarting suite A:  Normal compressible text.\0A\00", align 1
@ID__LZ4_COMPRESS_DEFAULT = common dso_local global i32 0, align 4
@ID__LZ4_COMPRESS_FAST = common dso_local global i32 0, align 4
@ID__LZ4_COMPRESS_FAST_EXTSTATE = common dso_local global i32 0, align 4
@ID__LZ4_DECOMPRESS_SAFE = common dso_local global i32 0, align 4
@ID__LZ4_DECOMPRESS_FAST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"\0AStarting suite B:  Highly compressible text.\0A\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"|%-14s|%-30s|%'14.9f|%'16d|%'14d|%'13.2f%%|\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"|%-14s|%-30s|%14s|%16s|%14s|%14s|\0A\00", align 1
@.str.15 = private unnamed_addr constant [111 x i8] c"+--------------+------------------------------+--------------+----------------+--------------+--------------+\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Function Benchmarked\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Total Seconds\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Iterations/sec\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"ns/Iteration\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"% of default\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Normal Text\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"LZ4_compress_default()\00", align 1
@BILLION = common dso_local global double 0.000000e+00, align 8
@.str.26 = private unnamed_addr constant [20 x i8] c"LZ4_compress_fast()\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"LZ4_compress_fast_extState()\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"LZ4_decompress_safe()\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"LZ4_decompress_fast()\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Compressible\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"All done, ran %d iterations per test.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000000, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @usage(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  store i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @LZ4_compressBound(i64 %49)
  store i64 %50, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i8* @calloc(i32 1, i64 %51)
  store i8* %52, i8** %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i8* @calloc(i32 1, i64 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i8* @calloc(i32 1, i64 %55)
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %44
  %60 = load i8*, i8** %13, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %14, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %59, %44
  %66 = call i32 @run_screaming(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @LZ4_compress_default(i8* %68, i8* %69, i64 %70, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = call i32 @run_screaming(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %77

77:                                               ; preds = %75, %67
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %15, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @LZ4_compress_default(i8* %80, i8* %81, i64 %82, i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 @run_screaming(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %89

89:                                               ; preds = %87, %77
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %16, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @memset(i8* %92, i32 0, i64 %93)
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i32 @LZ4_compress_fast(i8* %95, i8* %96, i64 %97, i64 %98, i32 1)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @run_screaming(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %89
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i64 @memcmp(i8* %106, i8* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @run_screaming(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %113

113:                                              ; preds = %111, %105
  %114 = load i8*, i8** %12, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @memset(i8* %114, i32 0, i64 %115)
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @LZ4_compress_fast_extState(i32* %17, i8* %117, i8* %118, i64 %119, i64 %120, i32 1)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @run_screaming(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %124, %113
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i64 @memcmp(i8* %128, i8* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 @run_screaming(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.9, i64 0, i64 0), i32 1)
  br label %135

135:                                              ; preds = %133, %127
  %136 = load i64, i64* %9, align 8
  %137 = call i8* @calloc(i32 1, i64 %136)
  store i8* %137, i8** %18, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @memset(i8* %138, i32 0, i64 %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* @ID__LZ4_COMPRESS_DEFAULT, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %15, align 8
  %150 = call double @bench(i8* %142, i32 %143, i32 %144, i8* %145, i8* %146, i64 %147, i64 %148, i64 %149)
  store double %150, double* %19, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i32, i32* @ID__LZ4_COMPRESS_FAST, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %15, align 8
  %159 = call double @bench(i8* %151, i32 %152, i32 %153, i8* %154, i8* %155, i64 %156, i64 %157, i64 %158)
  store double %159, double* %20, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = load i32, i32* @ID__LZ4_COMPRESS_FAST_EXTSTATE, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* %15, align 8
  %168 = call double @bench(i8* %160, i32 %161, i32 %162, i8* %163, i8* %164, i64 %165, i64 %166, i64 %167)
  store double %168, double* %21, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* @ID__LZ4_DECOMPRESS_SAFE, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i8*, i8** %13, align 8
  %173 = load i8*, i8** %18, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call double @bench(i8* %169, i32 %170, i32 %171, i8* %172, i8* %173, i64 %174, i64 %175, i64 %176)
  store double %177, double* %22, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = load i32, i32* @ID__LZ4_DECOMPRESS_FAST, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i8*, i8** %13, align 8
  %182 = load i8*, i8** %18, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %15, align 8
  %186 = call double @bench(i8* %178, i32 %179, i32 %180, i8* %181, i8* %182, i64 %183, i64 %184, i64 %185)
  store double %186, double* %23, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = load i64, i64* %10, align 8
  %189 = call i32 @memset(i8* %187, i32 0, i64 %188)
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %191 = load i8*, i8** %14, align 8
  %192 = load i32, i32* @ID__LZ4_COMPRESS_DEFAULT, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i8*, i8** %8, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i64, i64* %9, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* %16, align 8
  %199 = call double @bench(i8* %191, i32 %192, i32 %193, i8* %194, i8* %195, i64 %196, i64 %197, i64 %198)
  store double %199, double* %24, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = load i32, i32* @ID__LZ4_COMPRESS_FAST, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load i8*, i8** %8, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* %16, align 8
  %208 = call double @bench(i8* %200, i32 %201, i32 %202, i8* %203, i8* %204, i64 %205, i64 %206, i64 %207)
  store double %208, double* %25, align 8
  %209 = load i8*, i8** %14, align 8
  %210 = load i32, i32* @ID__LZ4_COMPRESS_FAST_EXTSTATE, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load i8*, i8** %8, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = load i64, i64* %9, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* %16, align 8
  %217 = call double @bench(i8* %209, i32 %210, i32 %211, i8* %212, i8* %213, i64 %214, i64 %215, i64 %216)
  store double %217, double* %26, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = load i32, i32* @ID__LZ4_DECOMPRESS_SAFE, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load i8*, i8** %14, align 8
  %222 = load i8*, i8** %18, align 8
  %223 = load i64, i64* %9, align 8
  %224 = load i64, i64* %10, align 8
  %225 = load i64, i64* %16, align 8
  %226 = call double @bench(i8* %218, i32 %219, i32 %220, i8* %221, i8* %222, i64 %223, i64 %224, i64 %225)
  store double %226, double* %27, align 8
  %227 = load i8*, i8** %8, align 8
  %228 = load i32, i32* @ID__LZ4_DECOMPRESS_FAST, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load i8*, i8** %14, align 8
  %231 = load i8*, i8** %18, align 8
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* %10, align 8
  %234 = load i64, i64* %16, align 8
  %235 = call double @bench(i8* %227, i32 %228, i32 %229, i8* %230, i8* %231, i64 %232, i64 %233, i64 %234)
  store double %235, double* %28, align 8
  %236 = load i32, i32* @LC_ALL, align 4
  %237 = call i32 @setlocale(i32 %236, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8** %29, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %30, align 8
  store i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.15, i64 0, i64 0), i8** %31, align 8
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %239 = load i8*, i8** %31, align 8
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %239)
  %241 = load i8*, i8** %30, align 8
  %242 = call i32 (i8*, ...) @printf(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %243 = load i8*, i8** %31, align 8
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %243)
  %245 = load i8*, i8** %29, align 8
  %246 = load double, double* %19, align 8
  %247 = load double, double* @BILLION, align 8
  %248 = fdiv double %246, %247
  %249 = load i32, i32* %6, align 4
  %250 = sitofp i32 %249 to double
  %251 = load double, double* %19, align 8
  %252 = load double, double* @BILLION, align 8
  %253 = fdiv double %251, %252
  %254 = fdiv double %250, %253
  %255 = fptosi double %254 to i32
  %256 = load double, double* %19, align 8
  %257 = fptosi double %256 to i32
  %258 = load i32, i32* %6, align 4
  %259 = sdiv i32 %257, %258
  %260 = load double, double* %19, align 8
  %261 = fmul double %260, 1.000000e+02
  %262 = load double, double* %19, align 8
  %263 = fdiv double %261, %262
  %264 = call i32 (i8*, ...) @printf(i8* %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), double %248, i32 %255, i32 %259, double %263)
  %265 = load i8*, i8** %29, align 8
  %266 = load double, double* %20, align 8
  %267 = load double, double* @BILLION, align 8
  %268 = fdiv double %266, %267
  %269 = load i32, i32* %6, align 4
  %270 = sitofp i32 %269 to double
  %271 = load double, double* %20, align 8
  %272 = load double, double* @BILLION, align 8
  %273 = fdiv double %271, %272
  %274 = fdiv double %270, %273
  %275 = fptosi double %274 to i32
  %276 = load double, double* %20, align 8
  %277 = fptosi double %276 to i32
  %278 = load i32, i32* %6, align 4
  %279 = sdiv i32 %277, %278
  %280 = load double, double* %20, align 8
  %281 = fmul double %280, 1.000000e+02
  %282 = load double, double* %19, align 8
  %283 = fdiv double %281, %282
  %284 = call i32 (i8*, ...) @printf(i8* %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), double %268, i32 %275, i32 %279, double %283)
  %285 = load i8*, i8** %29, align 8
  %286 = load double, double* %21, align 8
  %287 = load double, double* @BILLION, align 8
  %288 = fdiv double %286, %287
  %289 = load i32, i32* %6, align 4
  %290 = sitofp i32 %289 to double
  %291 = load double, double* %21, align 8
  %292 = load double, double* @BILLION, align 8
  %293 = fdiv double %291, %292
  %294 = fdiv double %290, %293
  %295 = fptosi double %294 to i32
  %296 = load double, double* %21, align 8
  %297 = fptosi double %296 to i32
  %298 = load i32, i32* %6, align 4
  %299 = sdiv i32 %297, %298
  %300 = load double, double* %21, align 8
  %301 = fmul double %300, 1.000000e+02
  %302 = load double, double* %19, align 8
  %303 = fdiv double %301, %302
  %304 = call i32 (i8*, ...) @printf(i8* %285, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), double %288, i32 %295, i32 %299, double %303)
  %305 = load i8*, i8** %29, align 8
  %306 = load double, double* %22, align 8
  %307 = load double, double* @BILLION, align 8
  %308 = fdiv double %306, %307
  %309 = load i32, i32* %6, align 4
  %310 = sitofp i32 %309 to double
  %311 = load double, double* %22, align 8
  %312 = load double, double* @BILLION, align 8
  %313 = fdiv double %311, %312
  %314 = fdiv double %310, %313
  %315 = fptosi double %314 to i32
  %316 = load double, double* %22, align 8
  %317 = fptosi double %316 to i32
  %318 = load i32, i32* %6, align 4
  %319 = sdiv i32 %317, %318
  %320 = load double, double* %22, align 8
  %321 = fmul double %320, 1.000000e+02
  %322 = load double, double* %19, align 8
  %323 = fdiv double %321, %322
  %324 = call i32 (i8*, ...) @printf(i8* %305, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), double %308, i32 %315, i32 %319, double %323)
  %325 = load i8*, i8** %29, align 8
  %326 = load double, double* %23, align 8
  %327 = load double, double* @BILLION, align 8
  %328 = fdiv double %326, %327
  %329 = load i32, i32* %6, align 4
  %330 = sitofp i32 %329 to double
  %331 = load double, double* %23, align 8
  %332 = load double, double* @BILLION, align 8
  %333 = fdiv double %331, %332
  %334 = fdiv double %330, %333
  %335 = fptosi double %334 to i32
  %336 = load double, double* %23, align 8
  %337 = fptosi double %336 to i32
  %338 = load i32, i32* %6, align 4
  %339 = sdiv i32 %337, %338
  %340 = load double, double* %23, align 8
  %341 = fmul double %340, 1.000000e+02
  %342 = load double, double* %19, align 8
  %343 = fdiv double %341, %342
  %344 = call i32 (i8*, ...) @printf(i8* %325, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), double %328, i32 %335, i32 %339, double %343)
  %345 = load i8*, i8** %30, align 8
  %346 = call i32 (i8*, ...) @printf(i8* %345, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %347 = load i8*, i8** %29, align 8
  %348 = load double, double* %24, align 8
  %349 = load double, double* @BILLION, align 8
  %350 = fdiv double %348, %349
  %351 = load i32, i32* %6, align 4
  %352 = sitofp i32 %351 to double
  %353 = load double, double* %24, align 8
  %354 = load double, double* @BILLION, align 8
  %355 = fdiv double %353, %354
  %356 = fdiv double %352, %355
  %357 = fptosi double %356 to i32
  %358 = load double, double* %24, align 8
  %359 = fptosi double %358 to i32
  %360 = load i32, i32* %6, align 4
  %361 = sdiv i32 %359, %360
  %362 = load double, double* %24, align 8
  %363 = fmul double %362, 1.000000e+02
  %364 = load double, double* %24, align 8
  %365 = fdiv double %363, %364
  %366 = call i32 (i8*, ...) @printf(i8* %347, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), double %350, i32 %357, i32 %361, double %365)
  %367 = load i8*, i8** %29, align 8
  %368 = load double, double* %25, align 8
  %369 = load double, double* @BILLION, align 8
  %370 = fdiv double %368, %369
  %371 = load i32, i32* %6, align 4
  %372 = sitofp i32 %371 to double
  %373 = load double, double* %25, align 8
  %374 = load double, double* @BILLION, align 8
  %375 = fdiv double %373, %374
  %376 = fdiv double %372, %375
  %377 = fptosi double %376 to i32
  %378 = load double, double* %25, align 8
  %379 = fptosi double %378 to i32
  %380 = load i32, i32* %6, align 4
  %381 = sdiv i32 %379, %380
  %382 = load double, double* %25, align 8
  %383 = fmul double %382, 1.000000e+02
  %384 = load double, double* %24, align 8
  %385 = fdiv double %383, %384
  %386 = call i32 (i8*, ...) @printf(i8* %367, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), double %370, i32 %377, i32 %381, double %385)
  %387 = load i8*, i8** %29, align 8
  %388 = load double, double* %26, align 8
  %389 = load double, double* @BILLION, align 8
  %390 = fdiv double %388, %389
  %391 = load i32, i32* %6, align 4
  %392 = sitofp i32 %391 to double
  %393 = load double, double* %26, align 8
  %394 = load double, double* @BILLION, align 8
  %395 = fdiv double %393, %394
  %396 = fdiv double %392, %395
  %397 = fptosi double %396 to i32
  %398 = load double, double* %26, align 8
  %399 = fptosi double %398 to i32
  %400 = load i32, i32* %6, align 4
  %401 = sdiv i32 %399, %400
  %402 = load double, double* %26, align 8
  %403 = fmul double %402, 1.000000e+02
  %404 = load double, double* %24, align 8
  %405 = fdiv double %403, %404
  %406 = call i32 (i8*, ...) @printf(i8* %387, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), double %390, i32 %397, i32 %401, double %405)
  %407 = load i8*, i8** %29, align 8
  %408 = load double, double* %27, align 8
  %409 = load double, double* @BILLION, align 8
  %410 = fdiv double %408, %409
  %411 = load i32, i32* %6, align 4
  %412 = sitofp i32 %411 to double
  %413 = load double, double* %27, align 8
  %414 = load double, double* @BILLION, align 8
  %415 = fdiv double %413, %414
  %416 = fdiv double %412, %415
  %417 = fptosi double %416 to i32
  %418 = load double, double* %27, align 8
  %419 = fptosi double %418 to i32
  %420 = load i32, i32* %6, align 4
  %421 = sdiv i32 %419, %420
  %422 = load double, double* %27, align 8
  %423 = fmul double %422, 1.000000e+02
  %424 = load double, double* %24, align 8
  %425 = fdiv double %423, %424
  %426 = call i32 (i8*, ...) @printf(i8* %407, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), double %410, i32 %417, i32 %421, double %425)
  %427 = load i8*, i8** %29, align 8
  %428 = load double, double* %28, align 8
  %429 = load double, double* @BILLION, align 8
  %430 = fdiv double %428, %429
  %431 = load i32, i32* %6, align 4
  %432 = sitofp i32 %431 to double
  %433 = load double, double* %28, align 8
  %434 = load double, double* @BILLION, align 8
  %435 = fdiv double %433, %434
  %436 = fdiv double %432, %435
  %437 = fptosi double %436 to i32
  %438 = load double, double* %28, align 8
  %439 = fptosi double %438 to i32
  %440 = load i32, i32* %6, align 4
  %441 = sdiv i32 %439, %440
  %442 = load double, double* %28, align 8
  %443 = fmul double %442, 1.000000e+02
  %444 = load double, double* %24, align 8
  %445 = fdiv double %443, %444
  %446 = call i32 (i8*, ...) @printf(i8* %427, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), double %430, i32 %437, i32 %441, double %445)
  %447 = load i8*, i8** %31, align 8
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %447)
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %450 = load i32, i32* %6, align 4
  %451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i32 %450)
  ret i32 0
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @LZ4_compressBound(i64) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @run_screaming(i8*, i32) #1

declare dso_local i32 @LZ4_compress_default(i8*, i8*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @LZ4_compress_fast(i8*, i8*, i64, i64, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @LZ4_compress_fast_extState(i32*, i8*, i8*, i64, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local double @bench(i8*, i32, i32, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @setlocale(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
