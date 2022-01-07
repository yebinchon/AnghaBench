; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3Prepare16.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3Prepare16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_UTF16NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32, i32**, i8**)* @sqlite3Prepare16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3Prepare16(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i8* null, i8** %15, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32**, i32*** %12, align 8
  %20 = call i32 @assert(i32** %19)
  %21 = load i32**, i32*** %12, align 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = call i32 @sqlite3SafetyCheckOk(%struct.TYPE_8__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %26, i32* %7, align 4
  br label %81

27:                                               ; preds = %6
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3_mutex_enter(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  %36 = call i8* @sqlite3Utf16to8(%struct.TYPE_8__* %32, i8* %33, i32 %34, i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32**, i32*** %12, align 8
  %44 = call i32 @sqlite3LockAndPrepare(%struct.TYPE_8__* %40, i8* %41, i32 -1, i32 %42, i32 0, i32** %43, i8** %15)
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %39, %27
  %46 = load i8*, i8** %15, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load i8**, i8*** %13, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @sqlite3Utf8CharLen(i8* %52, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @sqlite3Utf16ByteLen(i8* %62, i32 %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = bitcast i32* %66 to i8*
  %68 = load i8**, i8*** %13, align 8
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %51, %48, %45
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @sqlite3DbFree(%struct.TYPE_8__* %70, i8* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @sqlite3ApiExit(%struct.TYPE_8__* %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sqlite3_mutex_leave(i32 %78)
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %69, %25
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32 @sqlite3SafetyCheckOk(%struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i8* @sqlite3Utf16to8(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3LockAndPrepare(%struct.TYPE_8__*, i8*, i32, i32, i32, i32**, i8**) #1

declare dso_local i32 @sqlite3Utf8CharLen(i8*, i32) #1

declare dso_local i32 @sqlite3Utf16ByteLen(i8*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
