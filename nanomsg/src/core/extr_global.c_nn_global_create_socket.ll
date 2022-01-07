; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_global_create_socket.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_global_create_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, %struct.nn_sock** }
%struct.nn_sock = type { i32 }
%struct.nn_socktype = type { i32, i32 }

@AF_SP = common dso_local global i32 0, align 4
@AF_SP_RAW = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@self = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NN_MAX_SOCKETS = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i32 0, align 4
@nn_socktypes = common dso_local global %struct.nn_socktype** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_global_create_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nn_socktype*, align 8
  %10 = alloca %struct.nn_sock*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AF_SP, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AF_SP_RAW, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EAFNOSUPPORT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %88

21:                                               ; preds = %14, %2
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 0), align 8
  %23 = load i64, i64* @NN_MAX_SOCKETS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EMFILE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %88

28:                                               ; preds = %21
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 1), align 8
  %30 = load i64, i64* @NN_MAX_SOCKETS, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 0), align 8
  %32 = sub nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %82, %28
  %37 = load %struct.nn_socktype**, %struct.nn_socktype*** @nn_socktypes, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nn_socktype*, %struct.nn_socktype** %37, i64 %39
  %41 = load %struct.nn_socktype*, %struct.nn_socktype** %40, align 8
  store %struct.nn_socktype* %41, %struct.nn_socktype** %9, align 8
  %42 = icmp ne %struct.nn_socktype* %41, null
  br i1 %42, label %43, label %85

43:                                               ; preds = %36
  %44 = load %struct.nn_socktype*, %struct.nn_socktype** %9, align 8
  %45 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %43
  %50 = load %struct.nn_socktype*, %struct.nn_socktype** %9, align 8
  %51 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = call %struct.nn_sock* @nn_alloc(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.nn_sock* %56, %struct.nn_sock** %10, align 8
  %57 = icmp eq %struct.nn_sock* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %55
  %62 = load %struct.nn_sock*, %struct.nn_sock** %10, align 8
  %63 = load %struct.nn_socktype*, %struct.nn_socktype** %9, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @nn_sock_init(%struct.nn_sock* %62, %struct.nn_socktype* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.nn_sock*, %struct.nn_sock** %10, align 8
  %70 = call i32 @nn_free(%struct.nn_sock* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %88

72:                                               ; preds = %61
  %73 = load %struct.nn_sock*, %struct.nn_sock** %10, align 8
  %74 = load %struct.nn_sock**, %struct.nn_sock*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 2), align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nn_sock*, %struct.nn_sock** %74, i64 %76
  store %struct.nn_sock* %73, %struct.nn_sock** %77, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 0), align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 0), align 8
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %49, %43
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %36

85:                                               ; preds = %36
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %72, %68, %58, %25, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.nn_sock* @nn_alloc(i32, i8*) #1

declare dso_local i32 @nn_sock_init(%struct.nn_sock*, %struct.nn_socktype*, i32) #1

declare dso_local i32 @nn_free(%struct.nn_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
