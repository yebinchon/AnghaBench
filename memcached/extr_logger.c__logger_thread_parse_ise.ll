; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c__logger_thread_parse_ise.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c__logger_thread_parse_ise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.logentry_item_store = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"na\00", align 1
@KEY_MAX_URI_ENCODED_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"not_stored\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stored\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"not_found\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"too_large\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no_memory\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"cas\00", align 1
@__const._logger_thread_parse_ise.cmd_map = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)], align 16
@LOGGER_PARSE_SCRATCH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [82 x i8] c"ts=%d.%d gid=%llu type=item_store key=%s status=%s cmd=%s ttl=%u clsid=%u cfd=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @_logger_thread_parse_ise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_logger_thread_parse_ise(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.logentry_item_store*, align 8
  %10 = alloca [6 x i8*], align 16
  %11 = alloca [7 x i8*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %12 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.logentry_item_store*
  store %struct.logentry_item_store* %19, %struct.logentry_item_store** %9, align 8
  %20 = bitcast [6 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 48, i1 false)
  %21 = bitcast i8* %20 to [6 x i8*]*
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %21, i32 0, i32 5
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8** %27, align 8
  %28 = bitcast [7 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([7 x i8*]* @__const._logger_thread_parse_ise.cmd_map to i8*), i64 56, i1 false)
  %29 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %30 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %31, 6
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %35 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %42 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %45 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KEY_MAX_URI_ENCODED_LENGTH, align 4
  %48 = call i32 @uriencode(i32 %43, i8* %15, i32 %46, i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @LOGGER_PARSE_SCRATCH, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %65 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [6 x i8*], [6 x i8*]* %10, i64 0, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %71 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %74 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.logentry_item_store*, %struct.logentry_item_store** %9, align 8
  %77 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.14, i64 0, i64 0), i32 %55, i32 %60, i64 %63, i8* %15, i8* %68, i8* %69, i32 %72, i32 %75, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %81)
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uriencode(i32, i8*, i32, i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64, i8*, i8*, i8*, i32, i32, i32) #3

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
