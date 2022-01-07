; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_sapi_lsapi_send_headers.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_sapi_lsapi_send_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_11__ = type { i64, i32 }

@mod_lsapi_mode = common dso_local global i64 0, align 8
@lsapi_mode = common dso_local global i64 0, align 8
@SAPI_LSAPI_MAX_HEADER_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Content-type: %s\00", align 1
@SAPI_HEADER_SENT_SUCCESSFULLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @sapi_lsapi_send_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sapi_lsapi_send_headers(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load i64, i64* @mod_lsapi_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i32 @sapi_lsapi_send_headers_like_cgi(%struct.TYPE_9__* %15)
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load i64, i64* @lsapi_mode, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call { i64, i32 } @SG(%struct.TYPE_9__* %21)
  %23 = bitcast %struct.TYPE_11__* %6 to { i64, i32 }*
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %25 = extractvalue { i64, i32 } %22, 0
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %27 = extractvalue { i64, i32 } %22, 1
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @LSAPI_SetRespStatus(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = call %struct.TYPE_10__* @zend_llist_get_first_ex(i32* %32, i32* %5)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %4, align 8
  br label %34

34:                                               ; preds = %51, %20
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @LSAPI_AppendRespHeader(i8* %45, i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call %struct.TYPE_10__* @zend_llist_get_next_ex(i32* %53, i32* %5)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %4, align 8
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call { i64, i32 } @SG(%struct.TYPE_9__* %56)
  %58 = bitcast %struct.TYPE_11__* %7 to { i64, i32 }*
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 0
  %60 = extractvalue { i64, i32 } %57, 0
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 1
  %62 = extractvalue { i64, i32 } %57, 1
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %55
  %67 = load i32, i32* @SAPI_LSAPI_MAX_HEADER_LENGTH, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %10, align 8
  %70 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %11, align 8
  %71 = call i8* (...) @sapi_get_default_content_type()
  store i8* %71, i8** %8, align 8
  %72 = load i32, i32* @SAPI_LSAPI_MAX_HEADER_LENGTH, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @snprintf(i8* %70, i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @efree(i8* %76)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @LSAPI_AppendRespHeader(i8* %70, i32 %78)
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  br label %81

81:                                               ; preds = %66, %55
  br label %82

82:                                               ; preds = %81, %17
  %83 = call i32 (...) @LSAPI_FinalizeRespHeaders()
  %84 = load i32, i32* @SAPI_HEADER_SENT_SUCCESSFULLY, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @sapi_lsapi_send_headers_like_cgi(%struct.TYPE_9__*) #1

declare dso_local i32 @LSAPI_SetRespStatus(i32) #1

declare dso_local { i64, i32 } @SG(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @zend_llist_get_first_ex(i32*, i32*) #1

declare dso_local i32 @LSAPI_AppendRespHeader(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @zend_llist_get_next_ex(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @sapi_get_default_content_type(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @efree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @LSAPI_FinalizeRespHeaders(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
