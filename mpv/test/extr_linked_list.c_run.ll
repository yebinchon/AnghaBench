; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_linked_list.c_run.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_linked_list.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_item = type { i32 }
%struct.test_ctx = type { i32 }
%struct.the_list = type { i32 }

@__const.run.e1 = private unnamed_addr constant %struct.list_item { i32 1 }, align 4
@__const.run.e2 = private unnamed_addr constant %struct.list_item { i32 2 }, align 4
@__const.run.e3 = private unnamed_addr constant %struct.list_item { i32 3 }, align 4
@__const.run.e4 = private unnamed_addr constant %struct.list_item { i32 4 }, align 4
@__const.run.e5 = private unnamed_addr constant %struct.list_item { i32 5 }, align 4
@__const.run.e6 = private unnamed_addr constant %struct.list_item { i32 6 }, align 4
@list_node = common dso_local global i32 0, align 4
@constinit = private global [5 x i32] [i32 3, i32 5, i32 6, i32 1, i32 2], align 4
@constinit.1 = private global [6 x i32] [i32 3, i32 5, i32 6, i32 1, i32 4, i32 2], align 4
@constinit.2 = private global [5 x i32] [i32 3, i32 5, i32 1, i32 4, i32 2], align 4
@constinit.3 = private global [5 x i32] [i32 3, i32 4, i32 5, i32 2, i32 1], align 4
@constinit.4 = private global [6 x i32] [i32 3, i32 4, i32 5, i32 2, i32 1, i32 6], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_ctx*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(%struct.test_ctx* %0) #0 {
  %2 = alloca %struct.test_ctx*, align 8
  %3 = alloca %struct.the_list, align 4
  %4 = alloca %struct.list_item, align 4
  %5 = alloca %struct.list_item, align 4
  %6 = alloca %struct.list_item, align 4
  %7 = alloca %struct.list_item, align 4
  %8 = alloca %struct.list_item, align 4
  %9 = alloca %struct.list_item, align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [1 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca [1 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [5 x i32], align 4
  %21 = alloca [6 x i32], align 4
  %22 = alloca [5 x i32], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [3 x i32], align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca [1 x i32], align 4
  %27 = alloca [1 x i32], align 4
  %28 = alloca [1 x i32], align 4
  %29 = alloca [2 x i32], align 4
  %30 = alloca [3 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [5 x i32], align 4
  %33 = alloca [6 x i32], align 4
  store %struct.test_ctx* %0, %struct.test_ctx** %2, align 8
  %34 = bitcast %struct.the_list* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 4, i1 false)
  %35 = bitcast %struct.list_item* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.list_item* @__const.run.e1 to i8*), i64 4, i1 false)
  %36 = bitcast %struct.list_item* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 bitcast (%struct.list_item* @__const.run.e2 to i8*), i64 4, i1 false)
  %37 = bitcast %struct.list_item* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 bitcast (%struct.list_item* @__const.run.e3 to i8*), i64 4, i1 false)
  %38 = bitcast %struct.list_item* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.list_item* @__const.run.e4 to i8*), i64 4, i1 false)
  %39 = bitcast %struct.list_item* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 bitcast (%struct.list_item* @__const.run.e5 to i8*), i64 4, i1 false)
  %40 = bitcast %struct.list_item* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.list_item* @__const.run.e6 to i8*), i64 4, i1 false)
  %41 = call i32 (%struct.the_list*, i8*, i32, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i8*, i32, ...)*)(%struct.the_list* %3, i8* null, i32 0)
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %41)
  %43 = load i32, i32* @list_node, align 4
  %44 = call i32 @LL_APPEND(i32 %43, %struct.the_list* %3, %struct.list_item* %4)
  %45 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %47 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %46, i64 1)
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %47)
  %49 = load i32, i32* @list_node, align 4
  %50 = call i32 @LL_APPEND(i32 %49, %struct.the_list* %3, %struct.list_item* %5)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 2, i32* %52, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %54 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %53, i64 2)
  %55 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %54)
  %56 = load i32, i32* @list_node, align 4
  %57 = call i32 @LL_APPEND(i32 %56, %struct.the_list* %3, %struct.list_item* %7)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 1, i32* %58, align 4
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 2, i32* %59, align 4
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 4, i32* %60, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %62 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %61, i64 3)
  %63 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %62)
  %64 = load i32, i32* @list_node, align 4
  %65 = call i32 @LL_CLEAR(i32 %64, %struct.the_list* %3)
  %66 = call i32 (%struct.the_list*, i8*, i32, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i8*, i32, ...)*)(%struct.the_list* %3, i8* null, i32 0)
  %67 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %66)
  %68 = load i32, i32* @list_node, align 4
  %69 = call i32 @LL_PREPEND(i32 %68, %struct.the_list* %3, %struct.list_item* %7)
  %70 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  store i32 4, i32* %70, align 4
  %71 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %72 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %71, i64 1)
  %73 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %72)
  %74 = load i32, i32* @list_node, align 4
  %75 = call i32 @LL_PREPEND(i32 %74, %struct.the_list* %3, %struct.list_item* %5)
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 2, i32* %76, align 4
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 4, i32* %77, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %79 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %78, i64 2)
  %80 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %79)
  %81 = load i32, i32* @list_node, align 4
  %82 = call i32 @LL_PREPEND(i32 %81, %struct.the_list* %3, %struct.list_item* %4)
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 1, i32* %83, align 4
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 2, i32* %84, align 4
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 4, i32* %85, align 4
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %87 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %86, i64 3)
  %88 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %87)
  %89 = load i32, i32* @list_node, align 4
  %90 = call i32 @LL_CLEAR(i32 %89, %struct.the_list* %3)
  %91 = call i32 (%struct.the_list*, i8*, i32, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i8*, i32, ...)*)(%struct.the_list* %3, i8* null, i32 0)
  %92 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %91)
  %93 = load i32, i32* @list_node, align 4
  %94 = call i32 @LL_INSERT_BEFORE(i32 %93, %struct.the_list* %3, %struct.list_item* null, %struct.list_item* %9)
  %95 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  store i32 6, i32* %95, align 4
  %96 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %97 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %96, i64 1)
  %98 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %97)
  %99 = load i32, i32* @list_node, align 4
  %100 = call i32 @LL_INSERT_BEFORE(i32 %99, %struct.the_list* %3, %struct.list_item* null, %struct.list_item* %4)
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 6, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 1, i32* %102, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %104 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %103, i64 2)
  %105 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %104)
  %106 = load i32, i32* @list_node, align 4
  %107 = call i32 @LL_INSERT_BEFORE(i32 %106, %struct.the_list* %3, %struct.list_item* null, %struct.list_item* %5)
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 6, i32* %108, align 4
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 2, i32* %110, align 4
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %112 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %111, i64 3)
  %113 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %112)
  %114 = load i32, i32* @list_node, align 4
  %115 = call %struct.list_item* @STUPID_SHIT(%struct.list_item* %9)
  %116 = call i32 @LL_INSERT_BEFORE(i32 %114, %struct.the_list* %3, %struct.list_item* %115, %struct.list_item* %6)
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 3, i32* %117, align 4
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 6, i32* %118, align 4
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 1, i32* %119, align 4
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 2, i32* %120, align 4
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %122 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %121, i64 4)
  %123 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %122)
  %124 = load i32, i32* @list_node, align 4
  %125 = call %struct.list_item* @STUPID_SHIT(%struct.list_item* %9)
  %126 = call i32 @LL_INSERT_BEFORE(i32 %124, %struct.the_list* %3, %struct.list_item* %125, %struct.list_item* %8)
  %127 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  %128 = bitcast [5 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 bitcast ([5 x i32]* @constinit to i8*), i64 20, i1 false)
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  %130 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %129, i64 5)
  %131 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %130)
  %132 = load i32, i32* @list_node, align 4
  %133 = call %struct.list_item* @STUPID_SHIT(%struct.list_item* %5)
  %134 = call i32 @LL_INSERT_BEFORE(i32 %132, %struct.the_list* %3, %struct.list_item* %133, %struct.list_item* %7)
  %135 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 0
  %136 = bitcast [6 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 bitcast ([6 x i32]* @constinit.1 to i8*), i64 24, i1 false)
  %137 = getelementptr inbounds [6 x i32], [6 x i32]* %21, i64 0, i64 0
  %138 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %137, i64 6)
  %139 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %138)
  %140 = load i32, i32* @list_node, align 4
  %141 = call i32 @LL_REMOVE(i32 %140, %struct.the_list* %3, %struct.list_item* %9)
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %143 = bitcast [5 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 bitcast ([5 x i32]* @constinit.2 to i8*), i64 20, i1 false)
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* %22, i64 0, i64 0
  %145 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %144, i64 5)
  %146 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %145)
  %147 = load i32, i32* @list_node, align 4
  %148 = call i32 @LL_REMOVE(i32 %147, %struct.the_list* %3, %struct.list_item* %6)
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  store i32 5, i32* %149, align 4
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 1, i32* %150, align 4
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 4, i32* %151, align 4
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  store i32 2, i32* %152, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %154 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %153, i64 4)
  %155 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %154)
  %156 = load i32, i32* @list_node, align 4
  %157 = call i32 @LL_REMOVE(i32 %156, %struct.the_list* %3, %struct.list_item* %5)
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  store i32 5, i32* %158, align 4
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 1, i32* %159, align 4
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 4, i32* %160, align 4
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  %162 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %161, i64 3)
  %163 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %162)
  %164 = load i32, i32* @list_node, align 4
  %165 = call i32 @LL_REMOVE(i32 %164, %struct.the_list* %3, %struct.list_item* %7)
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 5, i32* %166, align 4
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 1, i32* %167, align 4
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %169 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %168, i64 2)
  %170 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %169)
  %171 = load i32, i32* @list_node, align 4
  %172 = call i32 @LL_REMOVE(i32 %171, %struct.the_list* %3, %struct.list_item* %8)
  %173 = getelementptr inbounds [1 x i32], [1 x i32]* %26, i64 0, i64 0
  store i32 1, i32* %173, align 4
  %174 = getelementptr inbounds [1 x i32], [1 x i32]* %26, i64 0, i64 0
  %175 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %174, i64 1)
  %176 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %175)
  %177 = load i32, i32* @list_node, align 4
  %178 = call i32 @LL_REMOVE(i32 %177, %struct.the_list* %3, %struct.list_item* %4)
  %179 = call i32 (%struct.the_list*, i8*, i32, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i8*, i32, ...)*)(%struct.the_list* %3, i8* null, i32 0)
  %180 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %179)
  %181 = load i32, i32* @list_node, align 4
  %182 = call i32 @LL_APPEND(i32 %181, %struct.the_list* %3, %struct.list_item* %5)
  %183 = getelementptr inbounds [1 x i32], [1 x i32]* %27, i64 0, i64 0
  store i32 2, i32* %183, align 4
  %184 = getelementptr inbounds [1 x i32], [1 x i32]* %27, i64 0, i64 0
  %185 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %184, i64 1)
  %186 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %185)
  %187 = load i32, i32* @list_node, align 4
  %188 = call i32 @LL_REMOVE(i32 %187, %struct.the_list* %3, %struct.list_item* %5)
  %189 = call i32 (%struct.the_list*, i8*, i32, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i8*, i32, ...)*)(%struct.the_list* %3, i8* null, i32 0)
  %190 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %189)
  %191 = load i32, i32* @list_node, align 4
  %192 = call i32 @LL_INSERT_AFTER(i32 %191, %struct.the_list* %3, %struct.list_item* null, %struct.list_item* %4)
  %193 = getelementptr inbounds [1 x i32], [1 x i32]* %28, i64 0, i64 0
  store i32 1, i32* %193, align 4
  %194 = getelementptr inbounds [1 x i32], [1 x i32]* %28, i64 0, i64 0
  %195 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %194, i64 1)
  %196 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %195)
  %197 = load i32, i32* @list_node, align 4
  %198 = call i32 @LL_INSERT_AFTER(i32 %197, %struct.the_list* %3, %struct.list_item* null, %struct.list_item* %5)
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 2, i32* %199, align 4
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32 1, i32* %200, align 4
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %202 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %201, i64 2)
  %203 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %202)
  %204 = load i32, i32* @list_node, align 4
  %205 = call i32 @LL_INSERT_AFTER(i32 %204, %struct.the_list* %3, %struct.list_item* null, %struct.list_item* %6)
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %30, i64 0, i64 0
  store i32 3, i32* %206, align 4
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 2, i32* %207, align 4
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 1, i32* %208, align 4
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %30, i64 0, i64 0
  %210 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %209, i64 3)
  %211 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %210)
  %212 = load i32, i32* @list_node, align 4
  %213 = call %struct.list_item* @STUPID_SHIT(%struct.list_item* %6)
  %214 = call i32 @LL_INSERT_AFTER(i32 %212, %struct.the_list* %3, %struct.list_item* %213, %struct.list_item* %7)
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0
  store i32 3, i32* %215, align 4
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 4, i32* %216, align 4
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  store i32 2, i32* %217, align 4
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 1, i32* %218, align 4
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0
  %220 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %219, i64 4)
  %221 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %220)
  %222 = load i32, i32* @list_node, align 4
  %223 = call %struct.list_item* @STUPID_SHIT(%struct.list_item* %7)
  %224 = call i32 @LL_INSERT_AFTER(i32 %222, %struct.the_list* %3, %struct.list_item* %223, %struct.list_item* %8)
  %225 = getelementptr inbounds [5 x i32], [5 x i32]* %32, i64 0, i64 0
  %226 = bitcast [5 x i32]* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %226, i8* align 4 bitcast ([5 x i32]* @constinit.3 to i8*), i64 20, i1 false)
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %32, i64 0, i64 0
  %228 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %227, i64 5)
  %229 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %228)
  %230 = load i32, i32* @list_node, align 4
  %231 = call %struct.list_item* @STUPID_SHIT(%struct.list_item* %4)
  %232 = call i32 @LL_INSERT_AFTER(i32 %230, %struct.the_list* %3, %struct.list_item* %231, %struct.list_item* %9)
  %233 = getelementptr inbounds [6 x i32], [6 x i32]* %33, i64 0, i64 0
  %234 = bitcast [6 x i32]* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %234, i8* align 4 bitcast ([6 x i32]* @constinit.4 to i8*), i64 24, i1 false)
  %235 = getelementptr inbounds [6 x i32], [6 x i32]* %33, i64 0, i64 0
  %236 = call i32 (%struct.the_list*, i32*, i64, ...) bitcast (i32 (...)* @do_check_list to i32 (%struct.the_list*, i32*, i64, ...)*)(%struct.the_list* %3, i32* %235, i64 6)
  %237 = call i32 (i32, ...) bitcast (i32 (...)* @assert_true to i32 (i32, ...)*)(i32 %236)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_true(...) #2

declare dso_local i32 @do_check_list(...) #2

declare dso_local i32 @LL_APPEND(i32, %struct.the_list*, %struct.list_item*) #2

declare dso_local i32 @LL_CLEAR(i32, %struct.the_list*) #2

declare dso_local i32 @LL_PREPEND(i32, %struct.the_list*, %struct.list_item*) #2

declare dso_local i32 @LL_INSERT_BEFORE(i32, %struct.the_list*, %struct.list_item*, %struct.list_item*) #2

declare dso_local %struct.list_item* @STUPID_SHIT(%struct.list_item*) #2

declare dso_local i32 @LL_REMOVE(i32, %struct.the_list*, %struct.list_item*) #2

declare dso_local i32 @LL_INSERT_AFTER(i32, %struct.the_list*, %struct.list_item*, %struct.list_item*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
