; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_create_writeable_entry.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_create_writeable_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i8, i64, i8*, i64, i64, i64, i8*, i32, i64, i32* }

@PHAR_MOD = common dso_local global i64 0, align 8
@PHAR_ENT_PERM_DEF_FILE = common dso_local global i8* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@TAR_FILE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [44 x i8] c"phar error: unable to create temporary file\00", align 1
@FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_create_writeable_entry(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PHAR_MOD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @php_stream_truncate_set_size(i32 %16, i32 0)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i8*, i8** @PHAR_ENT_PERM_DEF_FILE, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* @PHAR_MOD, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @SUCCESS, align 4
  store i32 %41, i32* %4, align 4
  br label %113

42:                                               ; preds = %3
  %43 = load i8**, i8*** %7, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i8**, i8*** %7, align 8
  store i8* null, i8** %46, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 11
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 11
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @efree(i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 11
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i8, i8* @TAR_FILE, align 1
  %65 = sext i8 %64 to i32
  br label %67

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i32 [ %65, %63 ], [ 0, %66 ]
  %69 = trunc i32 %68 to i8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i8 %69, i8* %71, align 4
  br label %72

72:                                               ; preds = %67, %47
  %73 = call i32 (...) @php_stream_fopen_tmpfile()
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load i8**, i8*** %7, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8**, i8*** %7, align 8
  %85 = call i32 @spprintf(i8** %84, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* @FAILURE, align 4
  store i32 %87, i32* %4, align 4
  br label %113

88:                                               ; preds = %72
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 8
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load i8*, i8** @PHAR_ENT_PERM_DEF_FILE, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* @PHAR_MOD, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @SUCCESS, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %88, %86, %13
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @php_stream_truncate_set_size(i32, i32) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @php_stream_fopen_tmpfile(...) #1

declare dso_local i32 @spprintf(i8**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
