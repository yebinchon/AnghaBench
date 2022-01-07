; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_dasync.c_dummy_pause_job.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_dasync.c_dummy_pause_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_dasync_id = common dso_local global i32 0, align 4
@DUMMY_CHAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dummy_pause_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_pause_job() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32 (i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = call i32* (...) @ASYNC_get_current_job()
  store i32* %8, i32** %1, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %63

11:                                               ; preds = %0
  %12 = load i32*, i32** %1, align 8
  %13 = call i32* @ASYNC_get_wait_ctx(i32* %12)
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32 (i8*)** %3 to i32 (i8*)*
  %16 = call i64 @ASYNC_WAIT_CTX_get_callback(i32* %14, i32 (i8*)* %15, i8** %4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i32 (i8*)*, i32 (i8*)** %3, align 8
  %20 = icmp ne i32 (i8*)* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32 (i8*)*, i32 (i8*)** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 %22(i8* %23)
  %25 = call i32 (...) @ASYNC_pause_job()
  br label %63

26:                                               ; preds = %18, %11
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @engine_dasync_id, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %30 = bitcast i32** %6 to i8**
  %31 = call i64 @ASYNC_WAIT_CTX_get_fd(i32* %27, i32 %28, i32* %29, i8** %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  br label %61

37:                                               ; preds = %26
  %38 = call i32* @OPENSSL_malloc(i32 4)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %63

42:                                               ; preds = %37
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @engine_dasync_id, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @ASYNC_WAIT_CTX_set_wait_fd(i32* %46, i32 %47, i32 %49, i32* %50, i32 (i32*, i32, i32, i32*)* @wait_cleanup)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %42
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @engine_dasync_id, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @wait_cleanup(i32* %54, i32 %55, i32 %57, i32* %58)
  br label %63

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %33
  %62 = call i32 (...) @ASYNC_pause_job()
  br label %63

63:                                               ; preds = %61, %53, %41, %21, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ASYNC_get_current_job(...) #2

declare dso_local i32* @ASYNC_get_wait_ctx(i32*) #2

declare dso_local i64 @ASYNC_WAIT_CTX_get_callback(i32*, i32 (i8*)*, i8**) #2

declare dso_local i32 @ASYNC_pause_job(...) #2

declare dso_local i64 @ASYNC_WAIT_CTX_get_fd(i32*, i32, i32*, i8**) #2

declare dso_local i32* @OPENSSL_malloc(i32) #2

declare dso_local i32 @ASYNC_WAIT_CTX_set_wait_fd(i32*, i32, i32, i32*, i32 (i32*, i32, i32, i32*)*) #2

declare dso_local i32 @wait_cleanup(i32*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
