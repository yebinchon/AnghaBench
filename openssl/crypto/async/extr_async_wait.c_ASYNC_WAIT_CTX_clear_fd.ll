; ModuleID = '/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_clear_fd.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_ASYNC_WAIT_CTX_clear_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.fd_lookup_st* }
%struct.fd_lookup_st = type { i32, i8*, i32, %struct.fd_lookup_st* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASYNC_WAIT_CTX_clear_fd(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fd_lookup_st*, align 8
  %7 = alloca %struct.fd_lookup_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %9, align 8
  store %struct.fd_lookup_st* %10, %struct.fd_lookup_st** %6, align 8
  store %struct.fd_lookup_st* null, %struct.fd_lookup_st** %7, align 8
  br label %11

11:                                               ; preds = %67, %19, %2
  %12 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %13 = icmp ne %struct.fd_lookup_st* %12, null
  br i1 %13, label %14, label %72

14:                                               ; preds = %11
  %15 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %16 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  store %struct.fd_lookup_st* %20, %struct.fd_lookup_st** %7, align 8
  %21 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %22 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %21, i32 0, i32 3
  %23 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %22, align 8
  store %struct.fd_lookup_st* %23, %struct.fd_lookup_st** %6, align 8
  br label %11

24:                                               ; preds = %14
  %25 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %26 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %24
  %31 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %32 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %37, align 8
  %39 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %40 = icmp eq %struct.fd_lookup_st* %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %43 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %42, i32 0, i32 3
  %44 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store %struct.fd_lookup_st* %44, %struct.fd_lookup_st** %46, align 8
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %49 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %48, i32 0, i32 3
  %50 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %49, align 8
  %51 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %7, align 8
  %52 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %51, i32 0, i32 3
  store %struct.fd_lookup_st* %50, %struct.fd_lookup_st** %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %55 = call i32 @OPENSSL_free(%struct.fd_lookup_st* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  store i32 1, i32* %3, align 4
  br label %73

60:                                               ; preds = %30
  %61 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %62 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  store i32 1, i32* %3, align 4
  br label %73

67:                                               ; preds = %24
  %68 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  store %struct.fd_lookup_st* %68, %struct.fd_lookup_st** %7, align 8
  %69 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %6, align 8
  %70 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %69, i32 0, i32 3
  %71 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %70, align 8
  store %struct.fd_lookup_st* %71, %struct.fd_lookup_st** %6, align 8
  br label %11

72:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %60, %53
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @OPENSSL_free(%struct.fd_lookup_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
