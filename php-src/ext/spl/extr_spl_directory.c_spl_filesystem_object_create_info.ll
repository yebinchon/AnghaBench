; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_create_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_create_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EH_THROW = common dso_local global i32 0, align 4
@spl_ce_RuntimeException = common dso_local global i32 0, align 4
@spl_ce_SplFileInfo = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"__construct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_15__*, i8*, i64, i32, %struct.TYPE_14__*, i32*)* @spl_filesystem_object_create_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @spl_filesystem_object_create_info(%struct.TYPE_15__* %0, i8* %1, i64 %2, i32 %3, %struct.TYPE_14__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19, %6
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @efree(i8* %29)
  br label %31

31:                                               ; preds = %28, %25, %22
  store i64 1, i64* %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %83

32:                                               ; preds = %19
  %33 = load i32, i32* @EH_THROW, align 4
  %34 = load i32, i32* @spl_ce_RuntimeException, align 4
  %35 = call i32 @zend_replace_error_handling(i32 %33, i32 %34, i32* %16)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi %struct.TYPE_14__* [ %39, %38 ], [ %43, %40 ]
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %12, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = call i32 @zend_update_class_constants(%struct.TYPE_14__* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %49 = call i32 @spl_filesystem_object_new_ex(%struct.TYPE_14__* %48)
  %50 = call %struct.TYPE_15__* @spl_filesystem_from_obj(i32 %49)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %14, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = call i32 @ZVAL_OBJ(i32* %51, i32* %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @spl_ce_SplFileInfo, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %44
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @ZVAL_STRINGL(i32* %15, i8* %64, i64 %65)
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @Z_OBJ_P(i32* %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = call i32 @zend_call_method_with_1_params(i32 %68, %struct.TYPE_14__* %69, %struct.TYPE_16__** %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* %15)
  %73 = call i32 @zval_ptr_dtor(i32* %15)
  br label %80

74:                                               ; preds = %44
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @spl_filesystem_info_set_filename(%struct.TYPE_15__* %75, i8* %76, i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %63
  %81 = call i32 @zend_restore_error_handling(i32* %16)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %7, align 8
  br label %83

83:                                               ; preds = %80, %31
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %84
}

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @zend_replace_error_handling(i32, i32, i32*) #1

declare dso_local i32 @zend_update_class_constants(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @spl_filesystem_from_obj(i32) #1

declare dso_local i32 @spl_filesystem_object_new_ex(%struct.TYPE_14__*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i64) #1

declare dso_local i32 @zend_call_method_with_1_params(i32, %struct.TYPE_14__*, %struct.TYPE_16__**, i8*, i32*, i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @spl_filesystem_info_set_filename(%struct.TYPE_15__*, i8*, i64, i32) #1

declare dso_local i32 @zend_restore_error_handling(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
