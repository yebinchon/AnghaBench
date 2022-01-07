; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c__logger_thread_parse_ige.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c__logger_thread_parse_ige.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.logentry_item_get = type { i64, i32, i32, i32, i32 }

@KEY_MAX_URI_ENCODED_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"not_found\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"flushed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"expired\00", align 1
@__const._logger_thread_parse_ige.was_found_map = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@LOGGER_PARSE_SCRATCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"ts=%d.%d gid=%llu type=item_get key=%s status=%s clsid=%u cfd=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @_logger_thread_parse_ige to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_logger_thread_parse_ige(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.logentry_item_get*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i8*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.logentry_item_get*
  store %struct.logentry_item_get* %13, %struct.logentry_item_get** %6, align 8
  %14 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([4 x i8*]* @__const._logger_thread_parse_ige.was_found_map to i8*), i64 32, i1 false)
  %19 = load %struct.logentry_item_get*, %struct.logentry_item_get** %6, align 8
  %20 = getelementptr inbounds %struct.logentry_item_get, %struct.logentry_item_get* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.logentry_item_get*, %struct.logentry_item_get** %6, align 8
  %23 = getelementptr inbounds %struct.logentry_item_get, %struct.logentry_item_get* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %26 = call i32 @uriencode(i32 %21, i8* %17, i32 %24, i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @LOGGER_PARSE_SCRATCH, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.logentry_item_get*, %struct.logentry_item_get** %6, align 8
  %43 = getelementptr inbounds %struct.logentry_item_get, %struct.logentry_item_get* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.logentry_item_get*, %struct.logentry_item_get** %6, align 8
  %48 = getelementptr inbounds %struct.logentry_item_get, %struct.logentry_item_get* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.logentry_item_get*, %struct.logentry_item_get** %6, align 8
  %51 = getelementptr inbounds %struct.logentry_item_get, %struct.logentry_item_get* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %38, i64 %41, i8* %17, i8* %46, i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uriencode(i32, i8*, i32, i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64, i8*, i8*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
