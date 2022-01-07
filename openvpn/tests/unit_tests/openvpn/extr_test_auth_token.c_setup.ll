; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_setup.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_context = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"test user name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.test_context*, align 8
  %5 = alloca %struct.key, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  store i8** %0, i8*** %3, align 8
  %7 = call i8* @calloc(i32 1, i32 32)
  %8 = bitcast i8* %7 to %struct.test_context*
  store %struct.test_context* %8, %struct.test_context** %4, align 8
  %9 = load %struct.test_context*, %struct.test_context** %4, align 8
  %10 = bitcast %struct.test_context* %9 to i8*
  %11 = load i8**, i8*** %3, align 8
  store i8* %10, i8** %11, align 8
  %12 = bitcast %struct.key* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.test_context*, %struct.test_context** %4, align 8
  %14 = getelementptr inbounds %struct.test_context, %struct.test_context* %13, i32 0, i32 0
  %15 = call i32 (...) @auth_token_kt()
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.TYPE_13__* %14 to i8*
  %18 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.test_context*, %struct.test_context** %4, align 8
  %20 = getelementptr inbounds %struct.test_context, %struct.test_context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load %struct.test_context*, %struct.test_context** %4, align 8
  %27 = getelementptr inbounds %struct.test_context, %struct.test_context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.test_context*, %struct.test_context** %4, align 8
  %31 = getelementptr inbounds %struct.test_context, %struct.test_context* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32 3000, i32* %33, align 4
  %34 = call i8* @calloc(i32 1, i32 4)
  %35 = bitcast i8* %34 to %struct.TYPE_8__*
  %36 = load %struct.test_context*, %struct.test_context** %4, align 8
  %37 = getelementptr inbounds %struct.test_context, %struct.test_context* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %38, align 8
  %39 = load %struct.test_context*, %struct.test_context** %4, align 8
  %40 = getelementptr inbounds %struct.test_context, %struct.test_context* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 120, i32* %43, align 4
  %44 = load %struct.test_context*, %struct.test_context** %4, align 8
  %45 = getelementptr inbounds %struct.test_context, %struct.test_context* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 3000, i32* %48, align 4
  %49 = load %struct.test_context*, %struct.test_context** %4, align 8
  %50 = getelementptr inbounds %struct.test_context, %struct.test_context* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcpy(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.test_context*, %struct.test_context** %4, align 8
  %55 = getelementptr inbounds %struct.test_context, %struct.test_context* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strcpy(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.test_context*, %struct.test_context** %4, align 8
  %60 = getelementptr inbounds %struct.test_context, %struct.test_context* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load %struct.test_context*, %struct.test_context** %4, align 8
  %64 = getelementptr inbounds %struct.test_context, %struct.test_context* %63, i32 0, i32 0
  %65 = call i32 @init_key_ctx(i32* %62, %struct.key* %5, %struct.TYPE_13__* %64, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* @now, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %25, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i8* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @auth_token_kt(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @init_key_ctx(i32*, %struct.key*, %struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
