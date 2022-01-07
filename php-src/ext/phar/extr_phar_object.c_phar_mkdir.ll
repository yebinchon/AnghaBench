; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_mkdir.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_phar_object.c_phar_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@spl_ce_BadMethodCallException = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Directory %s does not exist and cannot be created: %s\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Directory %s does not exist and cannot be created\00", align 1
@phar_ce_PharException = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__**, i8*, i64)* @phar_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phar_mkdir(%struct.TYPE_8__** %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.TYPE_7__* @phar_get_or_create_entry_data(i32 %12, i32 %16, i8* %17, i64 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 2, i8** %7, i32 1)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @spl_ce_BadMethodCallException, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i32, i32, i8*, i8*, ...) @zend_throw_exception_ex(i32 %25, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @efree(i8* %29)
  br label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @spl_ce_BadMethodCallException, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i32, i32, i8*, i8*, ...) @zend_throw_exception_ex(i32 %32, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %24
  br label %69

36:                                               ; preds = %3
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @efree(i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp ne %struct.TYPE_8__* %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %53, align 8
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = call i32 @phar_entry_delref(%struct.TYPE_7__* %55)
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @phar_flush(%struct.TYPE_8__* %58, i32 0, i32 0, i32 0, i8** %7)
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i32, i32* @phar_ce_PharException, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i32, i32, i8*, i8*, ...) @zend_throw_exception_ex(i32 %63, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @efree(i8* %66)
  br label %68

68:                                               ; preds = %62, %54
  br label %69

69:                                               ; preds = %35, %68
  ret void
}

declare dso_local %struct.TYPE_7__* @phar_get_or_create_entry_data(i32, i32, i8*, i64, i8*, i32, i8**, i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @phar_entry_delref(%struct.TYPE_7__*) #1

declare dso_local i32 @phar_flush(%struct.TYPE_8__*, i32, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
