; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_get_file_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_get_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SPL_FILE_DIR_UNIXPATHS = common dso_local global i32 0, align 4
@DEFAULT_SLASH = common dso_local global i8 0, align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Object not initialized\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @spl_filesystem_object_get_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_filesystem_object_get_file_name(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SPL_FILE_DIR_UNIXPATHS, align 4
  %10 = call i64 @SPL_HAS_FLAG(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %16

13:                                               ; preds = %1
  %14 = load i8, i8* @DEFAULT_SLASH, align 1
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i32 [ 47, %12 ], [ %15, %13 ]
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %3, align 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %76 [
    i32 128, label %22
    i32 129, label %22
    i32 130, label %31
  ]

22:                                               ; preds = %16, %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @E_ERROR, align 4
  %29 = call i32 @php_error_docref(i32* null, i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  br label %76

31:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = call i8* @spl_filesystem_object_get_path(%struct.TYPE_10__* %32, i64* %4)
  store i8* %33, i8** %5, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @efree(i32 %41)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i8* (i32*, i32, i8*, i8*, ...) @spprintf(i32* %48, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %75

60:                                               ; preds = %43
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %3, align 1
  %65 = sext i8 %64 to i32
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* (i32*, i32, i8*, i8*, ...) @spprintf(i32* %62, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 %65, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %60, %46
  br label %76

76:                                               ; preds = %16, %75, %30
  ret void
}

declare dso_local i64 @SPL_HAS_FLAG(i32, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @spl_filesystem_object_get_path(%struct.TYPE_10__*, i64*) #1

declare dso_local i32 @efree(i32) #1

declare dso_local i8* @spprintf(i32*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
