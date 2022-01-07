; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_file_info.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@NGX_UTF16_BUFLEN = common dso_local global i32 0, align 4
@NGX_FILE_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@GetFileExInfoStandard = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_file_info(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %14 = load i32, i32* @NGX_UTF16_BUFLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @NGX_UTF16_BUFLEN, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @ngx_utf8_to_utf16(i32* %17, i32* %20, i64* %6)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @NGX_FILE_ERROR, align 8
  store i64 %25, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %74

26:                                               ; preds = %2
  %27 = load i64, i64* @NGX_FILE_ERROR, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @ngx_win32_check_filename(i32* %28, i32* %29, i64 %30)
  %32 = load i64, i64* @NGX_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %63

35:                                               ; preds = %26
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @GetFileExInfoStandard, align 4
  %38 = call i64 @GetFileAttributesExW(i32* %36, i32 %37, %struct.TYPE_6__* %10)
  store i64 %38, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %35, %34
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, %17
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @ngx_errno, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @ngx_free(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ngx_set_errno(i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %72, %24
  %75 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ngx_utf8_to_utf16(i32*, i32*, i64*) #2

declare dso_local i64 @ngx_win32_check_filename(i32*, i32*, i64) #2

declare dso_local i64 @GetFileAttributesExW(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @ngx_free(i32*) #2

declare dso_local i32 @ngx_set_errno(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
