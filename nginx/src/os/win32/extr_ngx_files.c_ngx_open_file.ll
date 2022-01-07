; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_open_file.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_UTF16_BUFLEN = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@NGX_FILE_OPEN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_open_file(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @NGX_UTF16_BUFLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* @NGX_UTF16_BUFLEN, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @ngx_utf8_to_utf16(i32* %20, i32* %23, i64* %10)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %64

29:                                               ; preds = %4
  %30 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @NGX_FILE_OPEN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @ngx_win32_check_filename(i32* %35, i32* %36, i64 %37)
  %39 = load i64, i64* @NGX_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %53

42:                                               ; preds = %34, %29
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @FILE_SHARE_READ, align 4
  %46 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %49 = or i32 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %52 = call i32 @CreateFileW(i32* %43, i64 %44, i32 %49, i32* null, i64 %50, i32 %51, i32* null)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %42, %41
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, %20
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @ngx_errno, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @ngx_free(i32* %58)
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ngx_set_errno(i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %64

64:                                               ; preds = %62, %27
  %65 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ngx_utf8_to_utf16(i32*, i32*, i64*) #2

declare dso_local i64 @ngx_win32_check_filename(i32*, i32*, i64) #2

declare dso_local i32 @CreateFileW(i32*, i64, i32, i32*, i64, i32, i32*) #2

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
