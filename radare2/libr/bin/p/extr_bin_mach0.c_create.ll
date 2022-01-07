; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mach0.c_create.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mach0.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"TODO: Please use mach064 instead of mach0\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\CE\FA\ED\FE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"__PAGEZERO\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"__TEXT\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"__text\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"__data\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"__DATA\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"__LINKEDIT\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"/usr/lib/dyld\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"/usr/lib/libSystem.B.dylib\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i8*, i32, %struct.TYPE_3__*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 4096, i32* %36, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %6
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br label %48

48:                                               ; preds = %45, %6
  %49 = phi i1 [ false, %6 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @r_return_val_if_fail(i32 %50, i32* null)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strstr(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %55, i32* %37, align 4
  %56 = call i32* (...) @r_buf_new()
  store i32* %56, i32** %38, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 64
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32*, i32** %38, align 8
  %64 = call i32 @free(i32* %63)
  store i32* null, i32** %7, align 8
  br label %499

65:                                               ; preds = %48
  %66 = load i32*, i32** %38, align 8
  %67 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %68 = load i32, i32* %37, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32*, i32** %38, align 8
  %72 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %71, i32 12)
  %73 = load i32*, i32** %38, align 8
  %74 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %73, i32 3)
  br label %80

75:                                               ; preds = %65
  %76 = load i32*, i32** %38, align 8
  %77 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %76, i32 7)
  %78 = load i32*, i32** %38, align 8
  %79 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %78, i32 3)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32*, i32** %38, align 8
  %82 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %81, i32 2)
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 3, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %90

89:                                               ; preds = %85, %80
  store i32 2, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %22, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %22, align 4
  %93 = load i32, i32* %22, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = add nsw i32 %95, 3
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %22, align 4
  %99 = load i32*, i32** %38, align 8
  %100 = load i32, i32* %22, align 4
  %101 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %99, i32 %100)
  %102 = load i32*, i32** %38, align 8
  %103 = call i32 @r_buf_size(i32* %102)
  store i32 %103, i32* %33, align 4
  %104 = load i32*, i32** %38, align 8
  %105 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %104, i32 -1)
  %106 = load i32*, i32** %38, align 8
  %107 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %106, i32 0)
  %108 = load i32*, i32** %38, align 8
  %109 = call i32 @r_buf_size(i32* %108)
  store i32 %109, i32* %24, align 4
  %110 = load i32*, i32** %38, align 8
  %111 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %110, i32 1)
  %112 = load i32*, i32** %38, align 8
  %113 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %112, i32 56)
  %114 = load i32*, i32** %38, align 8
  %115 = call i32 @r_buf_size(i32* %114)
  store i32 %115, i32* %35, align 4
  %116 = load i32*, i32** %38, align 8
  %117 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %116, i32 16)
  %118 = load i32*, i32** %38, align 8
  %119 = load i32, i32* %35, align 4
  %120 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %121 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %118, i32 %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %38, align 8
  %123 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %122, i32 0)
  %124 = load i32*, i32** %38, align 8
  %125 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %124, i32 4096)
  %126 = load i32*, i32** %38, align 8
  %127 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %126, i32 0)
  %128 = load i32*, i32** %38, align 8
  %129 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %128, i32 0)
  %130 = load i32*, i32** %38, align 8
  %131 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %130, i32 0)
  %132 = load i32*, i32** %38, align 8
  %133 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %132, i32 0)
  %134 = load i32*, i32** %38, align 8
  %135 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %134, i32 0)
  %136 = load i32*, i32** %38, align 8
  %137 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %136, i32 0)
  %138 = load i32*, i32** %38, align 8
  %139 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %138, i32 1)
  %140 = load i32*, i32** %38, align 8
  %141 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %140, i32 124)
  %142 = load i32*, i32** %38, align 8
  %143 = call i32 @r_buf_size(i32* %142)
  store i32 %143, i32* %35, align 4
  %144 = load i32*, i32** %38, align 8
  %145 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %144, i32 16)
  %146 = load i32*, i32** %38, align 8
  %147 = load i32, i32* %35, align 4
  %148 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %149 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %146, i32 %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** %38, align 8
  %151 = load i32, i32* %36, align 4
  %152 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %150, i32 %151)
  %153 = load i32*, i32** %38, align 8
  %154 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %153, i32 4096)
  %155 = load i32*, i32** %38, align 8
  %156 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %155, i32 0)
  %157 = load i32*, i32** %38, align 8
  %158 = call i32 @r_buf_size(i32* %157)
  store i32 %158, i32* %25, align 4
  %159 = load i32*, i32** %38, align 8
  %160 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %159, i32 -1)
  %161 = load i32*, i32** %38, align 8
  %162 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %161, i32 7)
  %163 = load i32*, i32** %38, align 8
  %164 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %163, i32 5)
  %165 = load i32*, i32** %38, align 8
  %166 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %165, i32 1)
  %167 = load i32*, i32** %38, align 8
  %168 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %167, i32 0)
  %169 = load i32*, i32** %38, align 8
  %170 = call i32 @r_buf_size(i32* %169)
  store i32 %170, i32* %35, align 4
  %171 = load i32*, i32** %38, align 8
  %172 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %171, i32 16)
  %173 = load i32*, i32** %38, align 8
  %174 = load i32, i32* %35, align 4
  %175 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %176 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %173, i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load i32*, i32** %38, align 8
  %178 = call i32 @r_buf_size(i32* %177)
  store i32 %178, i32* %35, align 4
  %179 = load i32*, i32** %38, align 8
  %180 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %179, i32 16)
  %181 = load i32*, i32** %38, align 8
  %182 = load i32, i32* %35, align 4
  %183 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %184 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %181, i32 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  %185 = load i32*, i32** %38, align 8
  %186 = call i32 @r_buf_size(i32* %185)
  store i32 %186, i32* %26, align 4
  %187 = load i32*, i32** %38, align 8
  %188 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %187, i32 -1)
  %189 = load i32*, i32** %38, align 8
  %190 = call i32 @r_buf_size(i32* %189)
  store i32 %190, i32* %27, align 4
  %191 = load i32*, i32** %38, align 8
  %192 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %191, i32 -1)
  %193 = load i32*, i32** %38, align 8
  %194 = call i32 @r_buf_size(i32* %193)
  store i32 %194, i32* %28, align 4
  %195 = load i32*, i32** %38, align 8
  %196 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %195, i32 -1)
  %197 = load i32*, i32** %38, align 8
  %198 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %197, i32 0)
  %199 = load i32*, i32** %38, align 8
  %200 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %199, i32 0)
  %201 = load i32*, i32** %38, align 8
  %202 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %201, i32 0)
  %203 = load i32*, i32** %38, align 8
  %204 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %203, i32 0)
  %205 = load i32*, i32** %38, align 8
  %206 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %205, i32 0)
  %207 = load i32*, i32** %38, align 8
  %208 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %207, i32 0)
  %209 = load i8*, i8** %11, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %284

211:                                              ; preds = %90
  %212 = load i32, i32* %12, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %284

214:                                              ; preds = %211
  %215 = load i32*, i32** %38, align 8
  %216 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %215, i32 1)
  %217 = load i32*, i32** %38, align 8
  %218 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %217, i32 124)
  %219 = load i32*, i32** %38, align 8
  %220 = call i32 @r_buf_size(i32* %219)
  store i32 %220, i32* %35, align 4
  %221 = load i32*, i32** %38, align 8
  %222 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %221, i32 16)
  %223 = load i32*, i32** %38, align 8
  %224 = load i32, i32* %35, align 4
  %225 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %223, i32 %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %226 = load i32*, i32** %38, align 8
  %227 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %226, i32 8192)
  %228 = load i32*, i32** %38, align 8
  %229 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %228, i32 4096)
  %230 = load i32*, i32** %38, align 8
  %231 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %230, i32 0)
  %232 = load i32*, i32** %38, align 8
  %233 = call i32 @r_buf_size(i32* %232)
  store i32 %233, i32* %29, align 4
  %234 = load i32*, i32** %38, align 8
  %235 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %234, i32 -1)
  %236 = load i32*, i32** %38, align 8
  %237 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %236, i32 6)
  %238 = load i32*, i32** %38, align 8
  %239 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %238, i32 6)
  %240 = load i32*, i32** %38, align 8
  %241 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %240, i32 1)
  %242 = load i32*, i32** %38, align 8
  %243 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %242, i32 0)
  %244 = load i32*, i32** %38, align 8
  %245 = call i32 @r_buf_size(i32* %244)
  store i32 %245, i32* %35, align 4
  %246 = load i32*, i32** %38, align 8
  %247 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %246, i32 16)
  %248 = load i32*, i32** %38, align 8
  %249 = load i32, i32* %35, align 4
  %250 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %251 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %248, i32 %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %250)
  %252 = load i32*, i32** %38, align 8
  %253 = call i32 @r_buf_size(i32* %252)
  store i32 %253, i32* %35, align 4
  %254 = load i32*, i32** %38, align 8
  %255 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %254, i32 16)
  %256 = load i32*, i32** %38, align 8
  %257 = load i32, i32* %35, align 4
  %258 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %259 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %256, i32 %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %258)
  %260 = load i32*, i32** %38, align 8
  %261 = call i32 @r_buf_size(i32* %260)
  store i32 %261, i32* %30, align 4
  %262 = load i32*, i32** %38, align 8
  %263 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %262, i32 -1)
  %264 = load i32*, i32** %38, align 8
  %265 = call i32 @r_buf_size(i32* %264)
  store i32 %265, i32* %31, align 4
  %266 = load i32*, i32** %38, align 8
  %267 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %266, i32 -1)
  %268 = load i32*, i32** %38, align 8
  %269 = call i32 @r_buf_size(i32* %268)
  store i32 %269, i32* %32, align 4
  %270 = load i32*, i32** %38, align 8
  %271 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %270, i32 -1)
  %272 = load i32*, i32** %38, align 8
  %273 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %272, i32 2)
  %274 = load i32*, i32** %38, align 8
  %275 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %274, i32 0)
  %276 = load i32*, i32** %38, align 8
  %277 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %276, i32 0)
  %278 = load i32*, i32** %38, align 8
  %279 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %278, i32 0)
  %280 = load i32*, i32** %38, align 8
  %281 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %280, i32 0)
  %282 = load i32*, i32** %38, align 8
  %283 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %282, i32 0)
  br label %284

284:                                              ; preds = %214, %211, %90
  %285 = load i32*, i32** %38, align 8
  %286 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %285, i32 1)
  %287 = load i32*, i32** %38, align 8
  %288 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %287, i32 56)
  %289 = load i32*, i32** %38, align 8
  %290 = call i32 @r_buf_size(i32* %289)
  store i32 %290, i32* %35, align 4
  %291 = load i32*, i32** %38, align 8
  %292 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %291, i32 16)
  %293 = load i32*, i32** %38, align 8
  %294 = load i32, i32* %35, align 4
  %295 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %296 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %293, i32 %294, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %295)
  %297 = load i32*, i32** %38, align 8
  %298 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %297, i32 12288)
  %299 = load i32*, i32** %38, align 8
  %300 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %299, i32 4096)
  %301 = load i32*, i32** %38, align 8
  %302 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %301, i32 4096)
  %303 = load i32*, i32** %38, align 8
  %304 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %303, i32 0)
  %305 = load i32*, i32** %38, align 8
  %306 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %305, i32 7)
  %307 = load i32*, i32** %38, align 8
  %308 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %307, i32 1)
  %309 = load i32*, i32** %38, align 8
  %310 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %309, i32 0)
  %311 = load i32*, i32** %38, align 8
  %312 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %311, i32 0)
  %313 = load i32*, i32** %38, align 8
  %314 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %313, i32 2)
  %315 = load i32*, i32** %38, align 8
  %316 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %315, i32 24)
  %317 = load i32*, i32** %38, align 8
  %318 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %317, i32 4096)
  %319 = load i32*, i32** %38, align 8
  %320 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %319, i32 0)
  %321 = load i32*, i32** %38, align 8
  %322 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %321, i32 4096)
  %323 = load i32*, i32** %38, align 8
  %324 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %323, i32 0)
  %325 = load i32*, i32** %38, align 8
  %326 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %325, i32 11)
  %327 = load i32*, i32** %38, align 8
  %328 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %327, i32 80)
  %329 = load i32*, i32** %38, align 8
  %330 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i64, ...)*)(i32* %329, i64 72)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %39, align 8
  %331 = load i8*, i8** %39, align 8
  %332 = call i32 @strlen(i8* %331)
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %40, align 4
  %334 = load i32*, i32** %38, align 8
  %335 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %334, i32 14)
  %336 = load i32*, i32** %38, align 8
  %337 = load i32, i32* %40, align 4
  %338 = add nsw i32 12, %337
  %339 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %336, i32 %338)
  %340 = load i32*, i32** %38, align 8
  %341 = load i32, i32* %40, align 4
  %342 = sub nsw i32 %341, 2
  %343 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %340, i32 %342)
  %344 = load i32*, i32** %38, align 8
  %345 = call i32 @r_buf_size(i32* %344)
  store i32 %345, i32* %35, align 4
  %346 = load i32*, i32** %38, align 8
  %347 = load i32, i32* %40, align 4
  %348 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %346, i32 %347)
  %349 = load i32*, i32** %38, align 8
  %350 = load i32, i32* %35, align 4
  %351 = load i8*, i8** %39, align 8
  %352 = load i8*, i8** %39, align 8
  %353 = call i32 @strlen(i8* %352)
  %354 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %349, i32 %350, i8* %351, i32 %353)
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %41, align 8
  %355 = load i8*, i8** %41, align 8
  %356 = call i32 @strlen(i8* %355)
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %42, align 4
  %358 = load i32*, i32** %38, align 8
  %359 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %358, i32 12)
  %360 = load i32*, i32** %38, align 8
  %361 = load i32, i32* %42, align 4
  %362 = add nsw i32 24, %361
  %363 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %360, i32 %362)
  %364 = load i32*, i32** %38, align 8
  %365 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %364, i32 24)
  %366 = load i32*, i32** %38, align 8
  %367 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %366, i32 2)
  %368 = load i32*, i32** %38, align 8
  %369 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %368, i32 1)
  %370 = load i32*, i32** %38, align 8
  %371 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %370, i32 1)
  %372 = load i32*, i32** %38, align 8
  %373 = call i32 @r_buf_size(i32* %372)
  store i32 %373, i32* %35, align 4
  %374 = load i32*, i32** %38, align 8
  %375 = load i32, i32* %42, align 4
  %376 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %374, i32 %375)
  %377 = load i32*, i32** %38, align 8
  %378 = load i32, i32* %35, align 4
  %379 = load i8*, i8** %41, align 8
  %380 = load i8*, i8** %41, align 8
  %381 = call i32 @strlen(i8* %380)
  %382 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %377, i32 %378, i8* %379, i32 %381)
  %383 = load i32*, i32** %38, align 8
  %384 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %383, i32 -2147483608)
  %385 = load i32*, i32** %38, align 8
  %386 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %385, i32 24)
  %387 = load i32*, i32** %38, align 8
  %388 = load i32, i32* %36, align 4
  %389 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %387, i32 %388)
  %390 = load i32*, i32** %38, align 8
  %391 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %390, i32 0)
  %392 = load i32*, i32** %38, align 8
  %393 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %392, i32 0)
  %394 = load i32*, i32** %38, align 8
  %395 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %394, i32 0)
  %396 = load i32*, i32** %38, align 8
  %397 = call i32 @r_buf_size(i32* %396)
  store i32 %397, i32* %35, align 4
  %398 = load i32*, i32** %38, align 8
  %399 = load i32*, i32** %38, align 8
  %400 = call i32 @r_buf_size(i32* %399)
  %401 = sub nsw i32 4096, %400
  %402 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %398, i32 %401)
  %403 = load i32*, i32** %38, align 8
  %404 = load i32, i32* %35, align 4
  %405 = call i32 @strlen(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %406 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %403, i32 %404, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %405)
  %407 = load i32*, i32** %38, align 8
  %408 = call i32 @r_buf_size(i32* %407)
  %409 = load i32, i32* %24, align 4
  %410 = sub nsw i32 %408, %409
  store i32 %410, i32* %23, align 4
  %411 = load i32*, i32** %38, align 8
  %412 = call i32 @r_buf_size(i32* %411)
  %413 = load i32, i32* %36, align 4
  %414 = add nsw i32 %412, %413
  store i32 %414, i32* %20, align 4
  %415 = load i32*, i32** %38, align 8
  %416 = call i32 @r_buf_size(i32* %415)
  %417 = load i32, i32* %10, align 4
  %418 = add nsw i32 %416, %417
  %419 = load i32, i32* %36, align 4
  %420 = add nsw i32 %418, %419
  store i32 %420, i32* %21, align 4
  %421 = load i32, i32* %34, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %284
  %424 = load i32*, i32** %38, align 8
  %425 = load i32, i32* %34, align 4
  %426 = bitcast i32* %20 to i8*
  %427 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %424, i32 %425, i8* %426, i32 4)
  br label %428

428:                                              ; preds = %423, %284
  %429 = load i32*, i32** %38, align 8
  %430 = load i32, i32* %33, align 4
  %431 = bitcast i32* %23 to i8*
  %432 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %429, i32 %430, i8* %431, i32 4)
  %433 = load i32, i32* %24, align 4
  %434 = load i32, i32* %23, align 4
  %435 = add nsw i32 %433, %434
  %436 = load i32, i32* %10, align 4
  %437 = add nsw i32 %435, %436
  %438 = load i32, i32* %12, align 4
  %439 = add nsw i32 %437, %438
  store i32 %439, i32* %19, align 4
  %440 = load i32*, i32** %38, align 8
  %441 = load i32, i32* %25, align 4
  %442 = bitcast i32* %19 to i8*
  %443 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %440, i32 %441, i8* %442, i32 4)
  %444 = load i32*, i32** %38, align 8
  %445 = load i32, i32* %25, align 4
  %446 = sub nsw i32 %445, 8
  %447 = bitcast i32* %19 to i8*
  %448 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %444, i32 %446, i8* %447, i32 4)
  %449 = load i32*, i32** %38, align 8
  %450 = load i32, i32* %26, align 4
  %451 = bitcast i32* %20 to i8*
  %452 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %449, i32 %450, i8* %451, i32 4)
  %453 = load i32*, i32** %38, align 8
  %454 = load i32, i32* %27, align 4
  %455 = bitcast i32* %10 to i8*
  %456 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %453, i32 %454, i8* %455, i32 4)
  %457 = load i32, i32* %20, align 4
  %458 = load i32, i32* %36, align 4
  %459 = sub nsw i32 %457, %458
  store i32 %459, i32* %35, align 4
  %460 = load i32*, i32** %38, align 8
  %461 = load i32, i32* %28, align 4
  %462 = bitcast i32* %35 to i8*
  %463 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %460, i32 %461, i8* %462, i32 4)
  %464 = load i32*, i32** %38, align 8
  %465 = load i8*, i8** %9, align 8
  %466 = load i32, i32* %10, align 4
  %467 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %464, i8* %465, i32 %466)
  %468 = load i8*, i8** %11, align 8
  %469 = icmp ne i8* %468, null
  br i1 %469, label %470, label %497

470:                                              ; preds = %428
  %471 = load i32, i32* %12, align 4
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %497

473:                                              ; preds = %470
  %474 = load i32*, i32** %38, align 8
  %475 = load i32, i32* %29, align 4
  %476 = bitcast i32* %19 to i8*
  %477 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %474, i32 %475, i8* %476, i32 4)
  %478 = load i32*, i32** %38, align 8
  %479 = load i32, i32* %30, align 4
  %480 = bitcast i32* %21 to i8*
  %481 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %478, i32 %479, i8* %480, i32 4)
  %482 = load i32*, i32** %38, align 8
  %483 = load i32, i32* %31, align 4
  %484 = bitcast i32* %12 to i8*
  %485 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %482, i32 %483, i8* %484, i32 4)
  %486 = load i32, i32* %21, align 4
  %487 = load i32, i32* %36, align 4
  %488 = sub nsw i32 %486, %487
  store i32 %488, i32* %35, align 4
  %489 = load i32*, i32** %38, align 8
  %490 = load i32, i32* %32, align 4
  %491 = bitcast i32* %35 to i8*
  %492 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %489, i32 %490, i8* %491, i32 4)
  %493 = load i32*, i32** %38, align 8
  %494 = load i8*, i8** %11, align 8
  %495 = load i32, i32* %12, align 4
  %496 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %493, i8* %494, i32 %495)
  br label %497

497:                                              ; preds = %473, %470, %428
  %498 = load i32*, i32** %38, align 8
  store i32* %498, i32** %7, align 8
  br label %499

499:                                              ; preds = %497, %61
  %500 = load i32*, i32** %7, align 8
  ret i32* %500
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @r_buf_append_bytes(...) #1

declare dso_local i32 @r_buf_append_ut32(...) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_append_nbytes(...) #1

declare dso_local i32 @r_buf_write_at(...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
