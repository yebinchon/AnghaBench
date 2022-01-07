; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_append_essential_headers.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_append_essential_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Host: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"D, d M Y H:i:s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" GMT\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Connection: close\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32)* @append_essential_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_essential_headers(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i8* @zend_hash_str_find_ptr(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i8* %14, i8** %7, align 8
  %15 = icmp ne i8* null, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @smart_str_appends_ex(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @smart_str_appends_ex(i32* %20, i8* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @smart_str_appends_ex(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %16, %3
  %28 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_8__* @php_format_date(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 14, i32 %32, i32 0)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %9, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @smart_str_appends_ex(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @smart_str_appends_ex(i32* %37, i8* %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @smart_str_appends_ex(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = call i32 @zend_string_release_ex(%struct.TYPE_8__* %46, i32 0)
  br label %48

48:                                               ; preds = %30, %27
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @smart_str_appendl_ex(i32* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 19, i32 %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @zend_hash_str_find_ptr(i32*, i8*, i32) #2

declare dso_local i32 @smart_str_appends_ex(i32*, i8*, i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local %struct.TYPE_8__* @php_format_date(i8*, i32, i32, i32) #2

declare dso_local i32 @zend_string_release_ex(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @smart_str_appendl_ex(i32*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
