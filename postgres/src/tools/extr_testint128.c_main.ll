; ModuleID = '/home/carl/AnghaBench/postgres/src/tools/extr_testint128.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/tools/extr_testint128.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%016lX%016lX + unsigned %lX\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"native = %016lX%016lX\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"result = %016lX%016lX\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%016lX%016lX + signed %lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%lX * %lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"comparison failure: %d vs %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"arg1 = %016lX%016lX\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"arg2 = %016lX%016lX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strtol(i8* %17, i32* null, i32 0)
  store i64 %18, i64* %6, align 8
  br label %20

19:                                               ; preds = %2
  store i64 1000000000, i64* %6, align 8
  br label %20

20:                                               ; preds = %19, %14
  br label %21

21:                                               ; preds = %272, %20
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %6, align 8
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %273

25:                                               ; preds = %21
  %26 = call i8* (...) @get_random_uint64()
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = call i8* (...) @get_random_uint64()
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = call i8* (...) @get_random_uint64()
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = bitcast %struct.TYPE_4__* %11 to i8*
  %39 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @int128_add_uint64(i32* %46, i64 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %25
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %57, %25
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82)
  store i32 1, i32* %3, align 4
  br label %274

84:                                               ; preds = %57
  %85 = load i32, i32* %7, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = bitcast %struct.TYPE_4__* %11 to i8*
  %92 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 16, i1 false)
  %93 = load i32, i32* %9, align 4
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %93
  store i32 %96, i32* %94, align 4
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @int128_add_int64(i32* %97, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %84
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %107, %84
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %132)
  store i32 1, i32* %3, align 4
  br label %274

134:                                              ; preds = %107
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = mul nsw i32 %135, %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @int128_add_int64_mul_int64(i32* %143, i32 %144, i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %149, %152
  br i1 %153, label %162, label %154

154:                                              ; preds = %134
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %157, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %154, %134
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %163, i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %178)
  store i32 1, i32* %3, align 4
  br label %274

180:                                              ; preds = %154
  %181 = load i32, i32* %7, align 4
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %8, align 4
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %9, align 4
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = call i8* (...) @get_random_uint64()
  %191 = ptrtoint i8* %190 to i32
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @my_int128_compare(i32 %195, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @int128_compare(i32 %200, i32 %202)
  %204 = icmp ne i32 %198, %203
  br i1 %204, label %205, label %231

205:                                              ; preds = %180
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @my_int128_compare(i32 %207, i32 %209)
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @int128_compare(i32 %212, i32 %214)
  %216 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %210, i32 %215)
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %219, i32 %222)
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %226, i32 %229)
  store i32 1, i32* %3, align 4
  br label %274

231:                                              ; preds = %180
  %232 = load i32, i32* %7, align 4
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 4
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @my_int128_compare(i32 %236, i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @int128_compare(i32 %241, i32 %243)
  %245 = icmp ne i32 %239, %244
  br i1 %245, label %246, label %272

246:                                              ; preds = %231
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @my_int128_compare(i32 %248, i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @int128_compare(i32 %253, i32 %255)
  %257 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %251, i32 %256)
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %260, i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %267, i32 %270)
  store i32 1, i32* %3, align 4
  br label %274

272:                                              ; preds = %231
  br label %21

273:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %273, %246, %205, %162, %115, %65
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i8* @get_random_uint64(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @int128_add_uint64(i32*, i64) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @int128_add_int64(i32*, i32) #1

declare dso_local i32 @int128_add_int64_mul_int64(i32*, i32, i32) #1

declare dso_local i32 @my_int128_compare(i32, i32) #1

declare dso_local i32 @int128_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
