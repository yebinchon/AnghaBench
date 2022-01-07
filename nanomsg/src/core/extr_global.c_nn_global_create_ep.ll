; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_global_create_ep.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_global_create_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_transport = type { i8* }
%struct.nn_sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NN_SOCKADDR_MAX = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@nn_transports = common dso_local global %struct.nn_transport** null, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_sock*, i8*, i32)* @nn_global_create_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_global_create_ep(%struct.nn_sock* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_sock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nn_transport*, align 8
  %13 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = load i64, i64* @NN_SOCKADDR_MAX, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 58)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %101

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 47
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %101

51:                                               ; preds = %42
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 3
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %6, align 8
  store %struct.nn_transport* null, %struct.nn_transport** %12, align 8
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %85, %51
  %62 = load %struct.nn_transport**, %struct.nn_transport*** @nn_transports, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nn_transport*, %struct.nn_transport** %62, i64 %64
  %66 = load %struct.nn_transport*, %struct.nn_transport** %65, align 8
  store %struct.nn_transport* %66, %struct.nn_transport** %12, align 8
  %67 = icmp ne %struct.nn_transport* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = load %struct.nn_transport*, %struct.nn_transport** %12, align 8
  %70 = getelementptr inbounds %struct.nn_transport, %struct.nn_transport* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = load i64, i64* %11, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.nn_transport*, %struct.nn_transport** %12, align 8
  %77 = getelementptr inbounds %struct.nn_transport, %struct.nn_transport* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @memcmp(i8* %78, i8* %79, i64 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %88

84:                                               ; preds = %75, %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %61

88:                                               ; preds = %83, %61
  %89 = load %struct.nn_transport*, %struct.nn_transport** %12, align 8
  %90 = icmp eq %struct.nn_transport* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @EPROTONOSUPPORT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %101

94:                                               ; preds = %88
  %95 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %96 = load %struct.nn_transport*, %struct.nn_transport** %12, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @nn_sock_add_ep(%struct.nn_sock* %95, %struct.nn_transport* %96, i32 %97, i8* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %94, %91, %48, %33, %24, %16
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @nn_sock_add_ep(%struct.nn_sock*, %struct.nn_transport*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
