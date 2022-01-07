; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_ENGINE_by_id.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_ENGINE_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, %struct.TYPE_10__* }

@ENGINE_F_ENGINE_BY_ID = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@engine_lock_init = common dso_local global i32 0, align 4
@do_engine_lock_init = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@global_engine_lock = common dso_local global i32 0, align 4
@engine_list_head = common dso_local global %struct.TYPE_10__* null, align 8
@ENGINE_FLAGS_BY_ID_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"OPENSSL_ENGINES\00", align 1
@ENGINESDIR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DIR_LOAD\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"DIR_ADD\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LIST_ADD\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@ENGINE_R_NO_SUCH_ENGINE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"id=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ENGINE_by_id(i8* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @ENGINE_F_ENGINE_BY_ID, align 4
  %11 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %12 = call i32 @ENGINEerr(i32 %10, i32 %11)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %124

13:                                               ; preds = %1
  %14 = load i32, i32* @do_engine_lock_init, align 4
  %15 = call i32 @RUN_ONCE(i32* @engine_lock_init, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENGINE_F_ENGINE_BY_ID, align 4
  %19 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %20 = call i32 @ENGINEerr(i32 %18, i32 %19)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %124

21:                                               ; preds = %13
  %22 = load i32, i32* @global_engine_lock, align 4
  %23 = call i32 @CRYPTO_THREAD_write_lock(i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @engine_list_head, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %4, align 8
  br label %25

25:                                               ; preds = %37, %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %29, i8* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %25
  %36 = phi i1 [ false, %25 ], [ %34, %28 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %4, align 8
  br label %25

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ENGINE_FLAGS_BY_ID_COPY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = call %struct.TYPE_10__* (...) @ENGINE_new()
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = icmp eq %struct.TYPE_10__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @engine_cpy(%struct.TYPE_10__* %57, %struct.TYPE_10__* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %4, align 8
  br label %61

61:                                               ; preds = %56, %55
  br label %69

62:                                               ; preds = %44
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = call i32 @engine_ref_debug(%struct.TYPE_10__* %67, i32 0, i32 1)
  br label %69

69:                                               ; preds = %62, %61
  br label %70

70:                                               ; preds = %69, %41
  %71 = load i32, i32* @global_engine_lock, align 4
  %72 = call i32 @CRYPTO_THREAD_unlock(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %2, align 8
  br label %124

77:                                               ; preds = %70
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %77
  %82 = call i8* @ossl_safe_getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %82, i8** %5, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i8*, i8** @ENGINESDIR, align 8
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = call %struct.TYPE_10__* @ENGINE_by_id(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %4, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @ENGINE_ctrl_cmd_string(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %92, i32 0)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = call i32 @ENGINE_ctrl_cmd_string(%struct.TYPE_10__* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @ENGINE_ctrl_cmd_string(%struct.TYPE_10__* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %101, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = call i32 @ENGINE_ctrl_cmd_string(%struct.TYPE_10__* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = call i32 @ENGINE_ctrl_cmd_string(%struct.TYPE_10__* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* null, i32 0)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108, %104, %99, %95, %90, %86
  br label %116

113:                                              ; preds = %108
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %2, align 8
  br label %124

115:                                              ; preds = %77
  br label %116

116:                                              ; preds = %115, %112
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = call i32 @ENGINE_free(%struct.TYPE_10__* %117)
  %119 = load i32, i32* @ENGINE_F_ENGINE_BY_ID, align 4
  %120 = load i32, i32* @ENGINE_R_NO_SUCH_ENGINE, align 4
  %121 = call i32 @ENGINEerr(i32 %119, i32 %120)
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %122)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %124

124:                                              ; preds = %116, %113, %75, %17, %9
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %125
}

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @ENGINE_new(...) #1

declare dso_local i32 @engine_cpy(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @engine_ref_debug(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i8* @ossl_safe_getenv(i8*) #1

declare dso_local i32 @ENGINE_ctrl_cmd_string(%struct.TYPE_10__*, i8*, i8*, i32) #1

declare dso_local i32 @ENGINE_free(%struct.TYPE_10__*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
