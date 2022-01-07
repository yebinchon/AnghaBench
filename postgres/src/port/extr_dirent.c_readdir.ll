; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_dirent.c_readdir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_dirent.c_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.dirent, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent* @readdir(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @FindFirstFile(i32 %13, %struct.TYPE_6__* %4)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %10
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 0, i64* @errno, align 8
  br label %30

27:                                               ; preds = %22
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 @_dosmaperr(i64 %28)
  br label %30

30:                                               ; preds = %27, %26
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %66

31:                                               ; preds = %10
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FindNextFile(i32 %35, %struct.TYPE_6__* %4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* @errno, align 8
  br label %46

43:                                               ; preds = %38
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 @_dosmaperr(i64 %44)
  br label %46

46:                                               ; preds = %43, %42
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %66

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcpy(i32 %52, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strlen(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.dirent* %65, %struct.dirent** %2, align 8
  br label %66

66:                                               ; preds = %48, %46, %30
  %67 = load %struct.dirent*, %struct.dirent** %2, align 8
  ret %struct.dirent* %67
}

declare dso_local i32 @FindFirstFile(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @_dosmaperr(i64) #1

declare dso_local i32 @FindNextFile(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
