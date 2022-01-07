; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mach064.c_create.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mach064.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\CF\FA\ED\FE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__PAGEZERO\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"__TEXT\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"__text\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"__data\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"__DATA\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"__LINKEDIT\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"/usr/lib/dyld\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"/usr/lib/libSystem.B.dylib\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STATESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i8*, i32, i32*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
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
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %24, align 4
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
  store i32 4096, i32* %35, align 4
  %42 = call i32* (...) @r_buf_new()
  store i32* %42, i32** %36, align 8
  %43 = load i32*, i32** %36, align 8
  %44 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %45 = load i32*, i32** %36, align 8
  %46 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %45, i32 16777223)
  %47 = load i32*, i32** %36, align 8
  %48 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %47, i32 -2147483645)
  %49 = load i32*, i32** %36, align 8
  %50 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %49, i32 2)
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %6
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br label %56

56:                                               ; preds = %53, %6
  %57 = phi i1 [ false, %6 ], [ %55, %53 ]
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 3, i32 2
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = add nsw i32 %64, 3
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %21, align 4
  %68 = load i32*, i32** %36, align 8
  %69 = load i32, i32* %21, align 4
  %70 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %68, i32 %69)
  %71 = load i32*, i32** %36, align 8
  %72 = call i32 @r_buf_size(i32* %71)
  store i32 %72, i32* %32, align 4
  %73 = load i32*, i32** %36, align 8
  %74 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %73, i32 -1)
  %75 = load i32*, i32** %36, align 8
  %76 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %75, i32 0)
  %77 = load i32*, i32** %36, align 8
  %78 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %77, i32 0)
  %79 = load i32*, i32** %36, align 8
  %80 = call i32 @r_buf_size(i32* %79)
  store i32 %80, i32* %22, align 4
  %81 = load i32*, i32** %36, align 8
  %82 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %81, i32 25)
  %83 = load i32*, i32** %36, align 8
  %84 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %83, i32 72)
  %85 = load i32*, i32** %36, align 8
  %86 = call i32 @r_buf_size(i32* %85)
  store i32 %86, i32* %34, align 4
  %87 = load i32*, i32** %36, align 8
  %88 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %87, i32 16)
  %89 = load i32*, i32** %36, align 8
  %90 = load i32, i32* %34, align 4
  %91 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %89, i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %36, align 8
  %94 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %93, i32 0)
  %95 = load i32*, i32** %36, align 8
  %96 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %95, i32 4096)
  %97 = load i32*, i32** %36, align 8
  %98 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %97, i32 0)
  %99 = load i32*, i32** %36, align 8
  %100 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %99, i32 0)
  %101 = load i32*, i32** %36, align 8
  %102 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %101, i32 0)
  %103 = load i32*, i32** %36, align 8
  %104 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %103, i32 0)
  %105 = load i32*, i32** %36, align 8
  %106 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %105, i32 0)
  %107 = load i32*, i32** %36, align 8
  %108 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %107, i32 0)
  %109 = load i32*, i32** %36, align 8
  %110 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %109, i32 25)
  %111 = load i32*, i32** %36, align 8
  %112 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %111, i32 152)
  %113 = load i32*, i32** %36, align 8
  %114 = call i32 @r_buf_size(i32* %113)
  store i32 %114, i32* %34, align 4
  %115 = load i32*, i32** %36, align 8
  %116 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %115, i32 16)
  %117 = load i32*, i32** %36, align 8
  %118 = load i32, i32* %34, align 4
  %119 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %120 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %117, i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %36, align 8
  %122 = load i32, i32* %35, align 4
  %123 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %121, i32 %122)
  %124 = load i32*, i32** %36, align 8
  %125 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %124, i32 4096)
  %126 = load i32*, i32** %36, align 8
  %127 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %126, i32 0)
  %128 = load i32*, i32** %36, align 8
  %129 = call i32 @r_buf_size(i32* %128)
  store i32 %129, i32* %24, align 4
  %130 = load i32*, i32** %36, align 8
  %131 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %130, i32 -1)
  %132 = load i32*, i32** %36, align 8
  %133 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %132, i32 7)
  %134 = load i32*, i32** %36, align 8
  %135 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %134, i32 5)
  %136 = load i32*, i32** %36, align 8
  %137 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %136, i32 1)
  %138 = load i32*, i32** %36, align 8
  %139 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %138, i32 0)
  %140 = load i32*, i32** %36, align 8
  %141 = call i32 @r_buf_size(i32* %140)
  store i32 %141, i32* %34, align 4
  %142 = load i32*, i32** %36, align 8
  %143 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %142, i32 16)
  %144 = load i32*, i32** %36, align 8
  %145 = load i32, i32* %34, align 4
  %146 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %147 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %144, i32 %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %36, align 8
  %149 = call i32 @r_buf_size(i32* %148)
  store i32 %149, i32* %34, align 4
  %150 = load i32*, i32** %36, align 8
  %151 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %150, i32 16)
  %152 = load i32*, i32** %36, align 8
  %153 = load i32, i32* %34, align 4
  %154 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %155 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %152, i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %36, align 8
  %157 = call i32 @r_buf_size(i32* %156)
  store i32 %157, i32* %25, align 4
  %158 = load i32*, i32** %36, align 8
  %159 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %158, i32 -1)
  %160 = load i32*, i32** %36, align 8
  %161 = call i32 @r_buf_size(i32* %160)
  store i32 %161, i32* %26, align 4
  %162 = load i32*, i32** %36, align 8
  %163 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %162, i32 -1)
  %164 = load i32*, i32** %36, align 8
  %165 = call i32 @r_buf_size(i32* %164)
  store i32 %165, i32* %27, align 4
  %166 = load i32*, i32** %36, align 8
  %167 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %166, i32 -1)
  %168 = load i32*, i32** %36, align 8
  %169 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %168, i32 2)
  %170 = load i32*, i32** %36, align 8
  %171 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %170, i32 0)
  %172 = load i32*, i32** %36, align 8
  %173 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %172, i32 0)
  %174 = load i32*, i32** %36, align 8
  %175 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %174, i32 0)
  %176 = load i32*, i32** %36, align 8
  %177 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %176, i32 0)
  %178 = load i32*, i32** %36, align 8
  %179 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %178, i32 0)
  %180 = load i32*, i32** %36, align 8
  %181 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %180, i32 0)
  %182 = load i8*, i8** %10, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %259

184:                                              ; preds = %56
  %185 = load i32, i32* %11, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %259

187:                                              ; preds = %184
  %188 = load i32*, i32** %36, align 8
  %189 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %188, i32 25)
  %190 = load i32*, i32** %36, align 8
  %191 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %190, i32 152)
  %192 = load i32*, i32** %36, align 8
  %193 = call i32 @r_buf_size(i32* %192)
  store i32 %193, i32* %34, align 4
  %194 = load i32*, i32** %36, align 8
  %195 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %194, i32 16)
  %196 = load i32*, i32** %36, align 8
  %197 = load i32, i32* %34, align 4
  %198 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %196, i32 %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %199 = load i32*, i32** %36, align 8
  %200 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %199, i32 8192)
  %201 = load i32*, i32** %36, align 8
  %202 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %201, i32 4096)
  %203 = load i32*, i32** %36, align 8
  %204 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %203, i32 0)
  %205 = load i32*, i32** %36, align 8
  %206 = call i32 @r_buf_size(i32* %205)
  store i32 %206, i32* %28, align 4
  %207 = load i32*, i32** %36, align 8
  %208 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %207, i32 -1)
  %209 = load i32*, i32** %36, align 8
  %210 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %209, i32 6)
  %211 = load i32*, i32** %36, align 8
  %212 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %211, i32 6)
  %213 = load i32*, i32** %36, align 8
  %214 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %213, i32 1)
  %215 = load i32*, i32** %36, align 8
  %216 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %215, i32 0)
  %217 = load i32*, i32** %36, align 8
  %218 = call i32 @r_buf_size(i32* %217)
  store i32 %218, i32* %34, align 4
  %219 = load i32*, i32** %36, align 8
  %220 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %219, i32 16)
  %221 = load i32*, i32** %36, align 8
  %222 = load i32, i32* %34, align 4
  %223 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %224 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %221, i32 %222, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %223)
  %225 = load i32*, i32** %36, align 8
  %226 = call i32 @r_buf_size(i32* %225)
  store i32 %226, i32* %34, align 4
  %227 = load i32*, i32** %36, align 8
  %228 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %227, i32 16)
  %229 = load i32*, i32** %36, align 8
  %230 = load i32, i32* %34, align 4
  %231 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %232 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %229, i32 %230, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %231)
  %233 = load i32*, i32** %36, align 8
  %234 = call i32 @r_buf_size(i32* %233)
  store i32 %234, i32* %29, align 4
  %235 = load i32*, i32** %36, align 8
  %236 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %235, i32 -1)
  %237 = load i32*, i32** %36, align 8
  %238 = call i32 @r_buf_size(i32* %237)
  store i32 %238, i32* %30, align 4
  %239 = load i32*, i32** %36, align 8
  %240 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %239, i32 -1)
  %241 = load i32*, i32** %36, align 8
  %242 = call i32 @r_buf_size(i32* %241)
  store i32 %242, i32* %31, align 4
  %243 = load i32*, i32** %36, align 8
  %244 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %243, i32 -1)
  %245 = load i32*, i32** %36, align 8
  %246 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %245, i32 2)
  %247 = load i32*, i32** %36, align 8
  %248 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %247, i32 0)
  %249 = load i32*, i32** %36, align 8
  %250 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %249, i32 0)
  %251 = load i32*, i32** %36, align 8
  %252 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %251, i32 0)
  %253 = load i32*, i32** %36, align 8
  %254 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %253, i32 0)
  %255 = load i32*, i32** %36, align 8
  %256 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %255, i32 0)
  %257 = load i32*, i32** %36, align 8
  %258 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %257, i32 0)
  br label %259

259:                                              ; preds = %187, %184, %56
  %260 = load i32*, i32** %36, align 8
  %261 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %260, i32 25)
  %262 = load i32*, i32** %36, align 8
  %263 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %262, i32 72)
  %264 = load i32*, i32** %36, align 8
  %265 = call i32 @r_buf_size(i32* %264)
  store i32 %265, i32* %34, align 4
  %266 = load i32*, i32** %36, align 8
  %267 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %266, i32 16)
  %268 = load i32*, i32** %36, align 8
  %269 = load i32, i32* %34, align 4
  %270 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %271 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %268, i32 %269, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %270)
  %272 = load i32*, i32** %36, align 8
  %273 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %272, i32 12288)
  %274 = load i32*, i32** %36, align 8
  %275 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %274, i32 4096)
  %276 = load i32*, i32** %36, align 8
  %277 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %276, i32 4096)
  %278 = load i32*, i32** %36, align 8
  %279 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut64 to i32 (i32*, i32, ...)*)(i32* %278, i32 0)
  %280 = load i32*, i32** %36, align 8
  %281 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %280, i32 7)
  %282 = load i32*, i32** %36, align 8
  %283 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %282, i32 3)
  %284 = load i32*, i32** %36, align 8
  %285 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %284, i32 0)
  %286 = load i32*, i32** %36, align 8
  %287 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %286, i32 0)
  %288 = load i32*, i32** %36, align 8
  %289 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %288, i32 2)
  %290 = load i32*, i32** %36, align 8
  %291 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %290, i32 24)
  %292 = load i32*, i32** %36, align 8
  %293 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %292, i32 4096)
  %294 = load i32*, i32** %36, align 8
  %295 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %294, i32 0)
  %296 = load i32*, i32** %36, align 8
  %297 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %296, i32 4096)
  %298 = load i32*, i32** %36, align 8
  %299 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %298, i32 0)
  %300 = load i32*, i32** %36, align 8
  %301 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %300, i32 11)
  %302 = load i32*, i32** %36, align 8
  %303 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %302, i32 80)
  %304 = load i32*, i32** %36, align 8
  %305 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i64, ...)*)(i32* %304, i64 72)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %37, align 8
  %306 = load i8*, i8** %37, align 8
  %307 = call i32 @strlen(i8* %306)
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %38, align 4
  %309 = load i32*, i32** %36, align 8
  %310 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %309, i32 14)
  %311 = load i32*, i32** %36, align 8
  %312 = load i32, i32* %38, align 4
  %313 = add nsw i32 12, %312
  %314 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %311, i32 %313)
  %315 = load i32*, i32** %36, align 8
  %316 = load i32, i32* %38, align 4
  %317 = sub nsw i32 %316, 2
  %318 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %315, i32 %317)
  %319 = load i32*, i32** %36, align 8
  %320 = call i32 @r_buf_size(i32* %319)
  store i32 %320, i32* %34, align 4
  %321 = load i32*, i32** %36, align 8
  %322 = load i32, i32* %38, align 4
  %323 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %321, i32 %322)
  %324 = load i32*, i32** %36, align 8
  %325 = load i32, i32* %34, align 4
  %326 = load i8*, i8** %37, align 8
  %327 = load i8*, i8** %37, align 8
  %328 = call i32 @strlen(i8* %327)
  %329 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %324, i32 %325, i8* %326, i32 %328)
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8** %39, align 8
  %330 = load i8*, i8** %39, align 8
  %331 = call i32 @strlen(i8* %330)
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %40, align 4
  %333 = load i32*, i32** %36, align 8
  %334 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %333, i32 12)
  %335 = load i32*, i32** %36, align 8
  %336 = load i32, i32* %40, align 4
  %337 = add nsw i32 24, %336
  %338 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %335, i32 %337)
  %339 = load i32*, i32** %36, align 8
  %340 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %339, i32 24)
  %341 = load i32*, i32** %36, align 8
  %342 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %341, i32 2)
  %343 = load i32*, i32** %36, align 8
  %344 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %343, i32 1)
  %345 = load i32*, i32** %36, align 8
  %346 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %345, i32 1)
  %347 = load i32*, i32** %36, align 8
  %348 = call i32 @r_buf_size(i32* %347)
  store i32 %348, i32* %34, align 4
  %349 = load i32*, i32** %36, align 8
  %350 = load i32, i32* %40, align 4
  %351 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %349, i32 %350)
  %352 = load i32*, i32** %36, align 8
  %353 = load i32, i32* %34, align 4
  %354 = load i8*, i8** %39, align 8
  %355 = load i8*, i8** %39, align 8
  %356 = call i32 @strlen(i8* %355)
  %357 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %352, i32 %353, i8* %354, i32 %356)
  %358 = load i32*, i32** %36, align 8
  %359 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %358, i32 -2147483608)
  %360 = load i32*, i32** %36, align 8
  %361 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %360, i32 24)
  %362 = load i32*, i32** %36, align 8
  %363 = load i32, i32* %35, align 4
  %364 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %362, i32 %363)
  %365 = load i32*, i32** %36, align 8
  %366 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %365, i32 0)
  %367 = load i32*, i32** %36, align 8
  %368 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %367, i32 0)
  %369 = load i32*, i32** %36, align 8
  %370 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_ut32 to i32 (i32*, i32, ...)*)(i32* %369, i32 0)
  %371 = load i32*, i32** %36, align 8
  %372 = call i32 @r_buf_size(i32* %371)
  store i32 %372, i32* %34, align 4
  %373 = load i32*, i32** %36, align 8
  %374 = load i32*, i32** %36, align 8
  %375 = call i32 @r_buf_size(i32* %374)
  %376 = sub nsw i32 4096, %375
  %377 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @r_buf_append_nbytes to i32 (i32*, i32, ...)*)(i32* %373, i32 %376)
  %378 = load i32*, i32** %36, align 8
  %379 = load i32, i32* %34, align 4
  %380 = call i32 @strlen(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %381 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %378, i32 %379, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 %380)
  %382 = load i32*, i32** %36, align 8
  %383 = call i32 @r_buf_size(i32* %382)
  %384 = load i32, i32* %22, align 4
  %385 = sub nsw i32 %383, %384
  store i32 %385, i32* %23, align 4
  %386 = load i32*, i32** %36, align 8
  %387 = call i32 @r_buf_size(i32* %386)
  %388 = load i32, i32* %35, align 4
  %389 = add nsw i32 %387, %388
  store i32 %389, i32* %19, align 4
  %390 = load i32*, i32** %36, align 8
  %391 = call i32 @r_buf_size(i32* %390)
  %392 = load i32, i32* %9, align 4
  %393 = add nsw i32 %391, %392
  %394 = load i32, i32* %35, align 4
  %395 = add nsw i32 %393, %394
  store i32 %395, i32* %20, align 4
  %396 = load i32, i32* %33, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %259
  %399 = load i32*, i32** %36, align 8
  %400 = load i32, i32* %33, align 4
  %401 = bitcast i32* %19 to i8*
  %402 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %399, i32 %400, i8* %401, i32 8)
  br label %403

403:                                              ; preds = %398, %259
  %404 = load i32*, i32** %36, align 8
  %405 = load i32, i32* %32, align 4
  %406 = bitcast i32* %23 to i8*
  %407 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %404, i32 %405, i8* %406, i32 4)
  %408 = load i32, i32* %22, align 4
  %409 = load i32, i32* %23, align 4
  %410 = add nsw i32 %408, %409
  %411 = load i32, i32* %9, align 4
  %412 = add nsw i32 %410, %411
  %413 = load i32, i32* %11, align 4
  %414 = add nsw i32 %412, %413
  store i32 %414, i32* %18, align 4
  %415 = load i32*, i32** %36, align 8
  %416 = load i32, i32* %24, align 4
  %417 = bitcast i32* %18 to i8*
  %418 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %415, i32 %416, i8* %417, i32 8)
  %419 = load i32*, i32** %36, align 8
  %420 = load i32, i32* %24, align 4
  %421 = sub nsw i32 %420, 16
  %422 = bitcast i32* %18 to i8*
  %423 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %419, i32 %421, i8* %422, i32 8)
  %424 = load i32*, i32** %36, align 8
  %425 = load i32, i32* %25, align 4
  %426 = bitcast i32* %19 to i8*
  %427 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %424, i32 %425, i8* %426, i32 8)
  %428 = load i32, i32* %9, align 4
  store i32 %428, i32* %41, align 4
  %429 = load i32*, i32** %36, align 8
  %430 = load i32, i32* %26, align 4
  %431 = bitcast i32* %41 to i8*
  %432 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %429, i32 %430, i8* %431, i32 8)
  %433 = load i32, i32* %19, align 4
  %434 = load i32, i32* %35, align 4
  %435 = sub nsw i32 %433, %434
  store i32 %435, i32* %34, align 4
  %436 = load i32*, i32** %36, align 8
  %437 = load i32, i32* %27, align 4
  %438 = bitcast i32* %34 to i8*
  %439 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %436, i32 %437, i8* %438, i32 8)
  %440 = load i32*, i32** %36, align 8
  %441 = load i8*, i8** %8, align 8
  %442 = load i32, i32* %9, align 4
  %443 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %440, i8* %441, i32 %442)
  %444 = load i8*, i8** %10, align 8
  %445 = icmp ne i8* %444, null
  br i1 %445, label %446, label %473

446:                                              ; preds = %403
  %447 = load i32, i32* %11, align 4
  %448 = icmp sgt i32 %447, 0
  br i1 %448, label %449, label %473

449:                                              ; preds = %446
  %450 = load i32*, i32** %36, align 8
  %451 = load i32, i32* %28, align 4
  %452 = bitcast i32* %18 to i8*
  %453 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %450, i32 %451, i8* %452, i32 8)
  %454 = load i32*, i32** %36, align 8
  %455 = load i32, i32* %29, align 4
  %456 = bitcast i32* %20 to i8*
  %457 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %454, i32 %455, i8* %456, i32 8)
  %458 = load i32*, i32** %36, align 8
  %459 = load i32, i32* %30, align 4
  %460 = bitcast i32* %11 to i8*
  %461 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %458, i32 %459, i8* %460, i32 8)
  %462 = load i32, i32* %20, align 4
  %463 = load i32, i32* %35, align 4
  %464 = sub nsw i32 %462, %463
  store i32 %464, i32* %34, align 4
  %465 = load i32*, i32** %36, align 8
  %466 = load i32, i32* %31, align 4
  %467 = bitcast i32* %34 to i8*
  %468 = call i32 (i32*, i32, i8*, i32, ...) bitcast (i32 (...)* @r_buf_write_at to i32 (i32*, i32, i8*, i32, ...)*)(i32* %465, i32 %466, i8* %467, i32 8)
  %469 = load i32*, i32** %36, align 8
  %470 = load i8*, i8** %10, align 8
  %471 = load i32, i32* %11, align 4
  %472 = call i32 (i32*, i8*, i32, ...) bitcast (i32 (...)* @r_buf_append_bytes to i32 (i32*, i8*, i32, ...)*)(i32* %469, i8* %470, i32 %471)
  br label %473

473:                                              ; preds = %449, %446, %403
  %474 = load i32*, i32** %36, align 8
  ret i32* %474
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_append_bytes(...) #1

declare dso_local i32 @r_buf_append_ut32(...) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_append_nbytes(...) #1

declare dso_local i32 @r_buf_write_at(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_buf_append_ut64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
