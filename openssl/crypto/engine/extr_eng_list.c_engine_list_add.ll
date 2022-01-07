; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_engine_list_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_engine_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32 }

@ENGINE_F_ENGINE_LIST_ADD = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@engine_list_head = common dso_local global %struct.TYPE_6__* null, align 8
@ENGINE_R_CONFLICTING_ENGINE_ID = common dso_local global i32 0, align 4
@engine_list_tail = common dso_local global %struct.TYPE_6__* null, align 8
@ENGINE_R_INTERNAL_LIST_ERROR = common dso_local global i32 0, align 4
@engine_list_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @engine_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @engine_list_add(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @ENGINE_F_ENGINE_LIST_ADD, align 4
  %10 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %11 = call i32 @ENGINEerr(i32 %9, i32 %10)
  store i32 0, i32* %2, align 4
  br label %88

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @engine_list_head, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  br label %14

14:                                               ; preds = %23, %12
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @strcmp(i32 %26, i32 %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %5, align 8
  br label %14

36:                                               ; preds = %21
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @ENGINE_F_ENGINE_LIST_ADD, align 4
  %41 = load i32, i32* @ENGINE_R_CONFLICTING_ENGINE_ID, align 4
  %42 = call i32 @ENGINEerr(i32 %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %88

43:                                               ; preds = %36
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @engine_list_head, align 8
  %45 = icmp eq %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @engine_list_tail, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @ENGINE_F_ENGINE_LIST_ADD, align 4
  %51 = load i32, i32* @ENGINE_R_INTERNAL_LIST_ERROR, align 4
  %52 = call i32 @ENGINEerr(i32 %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %88

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** @engine_list_head, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %56, align 8
  %57 = load i32, i32* @engine_list_cleanup, align 4
  %58 = call i32 @engine_cleanup_add_last(i32 %57)
  br label %78

59:                                               ; preds = %43
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @engine_list_tail, align 8
  %61 = icmp eq %struct.TYPE_6__* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @engine_list_tail, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %59
  %68 = load i32, i32* @ENGINE_F_ENGINE_LIST_ADD, align 4
  %69 = load i32, i32* @ENGINE_R_INTERNAL_LIST_ERROR, align 4
  %70 = call i32 @ENGINEerr(i32 %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %88

71:                                               ; preds = %62
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @engine_list_tail, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @engine_list_tail, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %77, align 8
  br label %78

78:                                               ; preds = %71, %53
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = call i32 @engine_ref_debug(%struct.TYPE_6__* %83, i32 0, i32 1)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** @engine_list_tail, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %87, align 8
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %78, %67, %49, %39, %8
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @engine_cleanup_add_last(i32) #1

declare dso_local i32 @engine_ref_debug(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
