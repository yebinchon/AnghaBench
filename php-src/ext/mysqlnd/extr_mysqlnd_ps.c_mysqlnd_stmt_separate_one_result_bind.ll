; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_separate_one_result_bind.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_separate_one_result_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"mysqlnd_stmt_separate_one_result_bind\00", align 1
@DBG_VOID_RETURN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"stmt=%lu result_bind=%p field_count=%u param_no=%u\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"%u has refcount=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @mysqlnd_stmt_separate_one_result_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mysqlnd_stmt_separate_one_result_bind(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi %struct.TYPE_5__* [ %11, %8 ], [ null, %12 ]
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  %15 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @DBG_VOID_RETURN, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, i32, %struct.TYPE_7__*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.TYPE_7__* %26, i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* @DBG_VOID_RETURN, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TRUE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @Z_REFCOUNTED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @Z_REFCOUNT(i32 %69)
  br label %72

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71, %61
  %73 = phi i32 [ %70, %61 ], [ 0, %71 ]
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_7__*
  %76 = call i32 (i8*, i32, %struct.TYPE_7__*, ...) @DBG_INF_FMT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %50, %struct.TYPE_7__* %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = call i32 @zval_ptr_dtor(i32* %83)
  br label %85

85:                                               ; preds = %72, %38
  %86 = load i32, i32* @DBG_VOID_RETURN, align 4
  ret void
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32, %struct.TYPE_7__*, ...) #1

declare dso_local i64 @Z_REFCOUNTED(i32) #1

declare dso_local i32 @Z_REFCOUNT(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
