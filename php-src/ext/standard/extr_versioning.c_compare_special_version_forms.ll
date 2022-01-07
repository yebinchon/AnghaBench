; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_versioning.c_compare_special_version_forms.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_versioning.c_compare_special_version_forms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@__const.compare_special_version_forms.special_forms = private unnamed_addr constant [11 x %struct.TYPE_2__] [%struct.TYPE_2__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 3, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 3, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 4, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 5, i32 0, i64 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 5, i32 0, i64 0 }, %struct.TYPE_2__ zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_special_version_forms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_special_version_forms(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [11 x %struct.TYPE_2__], align 16
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %9 = bitcast [11 x %struct.TYPE_2__]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([11 x %struct.TYPE_2__]* @__const.compare_special_version_forms.special_forms to i8*), i64 264, i1 false)
  %10 = getelementptr inbounds [11 x %struct.TYPE_2__], [11 x %struct.TYPE_2__]* %7, i64 0, i64 0
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %8, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %40

21:                                               ; preds = %19
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @strlen(i64 %28)
  %30 = call i64 @strncmp(i8* %22, i64 %25, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 1
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %8, align 8
  br label %11

40:                                               ; preds = %32, %19
  %41 = getelementptr inbounds [11 x %struct.TYPE_2__], [11 x %struct.TYPE_2__]* %7, i64 0, i64 0
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %8, align 8
  br label %42

42:                                               ; preds = %68, %40
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @strlen(i64 %59)
  %61 = call i64 @strncmp(i8* %53, i64 %56, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  br label %71

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 1
  store %struct.TYPE_2__* %70, %struct.TYPE_2__** %8, align 8
  br label %42

71:                                               ; preds = %63, %50
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @ZEND_NORMALIZE_BOOL(i32 %74)
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strncmp(i8*, i64, i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @ZEND_NORMALIZE_BOOL(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
