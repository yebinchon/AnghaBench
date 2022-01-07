; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3Prepare16.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3Prepare16.c"
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
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i8* null, i8** %15, align 8
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32**, i32*** %12, align 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = call i32 @sqlite3SafetyCheckOk(%struct.TYPE_8__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %6
  %29 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %29, i32* %7, align 4
  br label %120

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %18, align 8
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %61, %33
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i8*, i8** %18, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %18, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %47, %39
  %57 = phi i1 [ true, %39 ], [ %55, %47 ]
  br label %58

58:                                               ; preds = %56, %35
  %59 = phi i1 [ false, %35 ], [ %57, %56 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %17, align 4
  br label %35

64:                                               ; preds = %58
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %30
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sqlite3_mutex_enter(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  %75 = call i8* @sqlite3Utf16to8(%struct.TYPE_8__* %71, i8* %72, i32 %73, i32 %74)
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32**, i32*** %12, align 8
  %83 = call i32 @sqlite3LockAndPrepare(%struct.TYPE_8__* %79, i8* %80, i32 -1, i32 %81, i32 0, i32** %82, i8** %15)
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %78, %66
  %85 = load i8*, i8** %15, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load i8**, i8*** %13, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @sqlite3Utf8CharLen(i8* %91, i32 %97)
  store i32 %98, i32* %19, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @sqlite3Utf16ByteLen(i8* %101, i32 %102)
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = bitcast i32* %105 to i8*
  %107 = load i8**, i8*** %13, align 8
  store i8* %106, i8** %107, align 8
  br label %108

108:                                              ; preds = %90, %87, %84
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @sqlite3DbFree(%struct.TYPE_8__* %109, i8* %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @sqlite3ApiExit(%struct.TYPE_8__* %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @sqlite3_mutex_leave(i32 %117)
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %108, %28
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

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
