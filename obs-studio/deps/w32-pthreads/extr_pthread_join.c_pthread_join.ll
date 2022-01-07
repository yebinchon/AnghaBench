; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_join.c_pthread_join.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_join.c_pthread_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@ptw32_thread_reuse_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_join(i64 %0, i32* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = bitcast %struct.TYPE_11__* %4 to { i64, i32* }*
  %12 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %11, i32 0, i32 0
  store i64 %0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %11, i32 0, i32 1
  store i32* %1, i32** %13, align 8
  store i8** %2, i8*** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_thread_reuse_lock, i32* %9)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = icmp eq %struct.TYPE_10__* null, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20, %3
  %29 = load i32, i32* @ESRCH, align 4
  store i32 %29, i32* %6, align 4
  br label %40

30:                                               ; preds = %20
  %31 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %6, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %36
  br label %40

40:                                               ; preds = %39, %28
  %41 = call i32 @ptw32_mcs_lock_release(i32* %9)
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = call { i64, i32* } (...) @pthread_self()
  %46 = bitcast %struct.TYPE_11__* %10 to { i64, i32* }*
  %47 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %46, i32 0, i32 0
  %48 = extractvalue { i64, i32* } %45, 0
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %46, i32 0, i32 1
  %50 = extractvalue { i64, i32* } %45, 1
  store i32* %50, i32** %49, align 8
  %51 = bitcast %struct.TYPE_11__* %7 to i8*
  %52 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* null, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOENT, align 4
  store i32 %57, i32* %6, align 4
  br label %99

58:                                               ; preds = %44
  %59 = bitcast %struct.TYPE_11__* %7 to { i64, i32* }*
  %60 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %59, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast %struct.TYPE_11__* %4 to { i64, i32* }*
  %65 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %64, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @pthread_equal(i64 %61, i32* %63, i64 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @EDEADLK, align 4
  store i32 %72, i32* %6, align 4
  br label %98

73:                                               ; preds = %58
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pthreadCancelableWait(i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = load i8**, i8*** %5, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %80
  %89 = bitcast %struct.TYPE_11__* %4 to { i64, i32* }*
  %90 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %89, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @pthread_detach(i64 %91, i32* %93)
  store i32 %94, i32* %6, align 4
  br label %97

95:                                               ; preds = %73
  %96 = load i32, i32* @ESRCH, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %88
  br label %98

98:                                               ; preds = %97, %71
  br label %99

99:                                               ; preds = %98, %56
  br label %100

100:                                              ; preds = %99, %40
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local { i64, i32* } @pthread_self(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @pthread_equal(i64, i32*, i64, i32*) #1

declare dso_local i32 @pthreadCancelableWait(i32) #1

declare dso_local i32 @pthread_detach(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
