; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_read_early_data.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_read_early_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@SSL_F_SSL_READ_EARLY_DATA = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_ERROR = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTING = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_READING = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_FINISHED_READING = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_SUCCESS = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_FINISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_read_early_data(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @SSL_F_SSL_READ_EARLY_DATA, align 4
  %17 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %18 = call i32 @SSLerr(i32 %16, i32 %17)
  %19 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  store i32 %19, i32* %5, align 4
  br label %98

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %93 [
    i32 129, label %24
    i32 130, label %34
    i32 128, label %47
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i32 @SSL_in_before(%struct.TYPE_8__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @SSL_F_SSL_READ_EARLY_DATA, align 4
  %30 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %31 = call i32 @SSLerr(i32 %29, i32 %30)
  %32 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %98

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %20, %33
  %35 = load i32, i32* @SSL_EARLY_DATA_ACCEPTING, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = call i32 @SSL_accept(%struct.TYPE_8__* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 130, i32* %44, align 4
  %45 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  store i32 %45, i32* %5, align 4
  br label %98

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %20, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SSL_EARLY_DATA_ACCEPTED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %47
  %55 = load i32, i32* @SSL_EARLY_DATA_READING, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = call i32 @SSL_read_ex(%struct.TYPE_8__* %58, i8* %59, i64 %60, i64* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %10, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SSL_EARLY_DATA_FINISHED_READING, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68, %54
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 128, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @SSL_READ_EARLY_DATA_SUCCESS, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %5, align 4
  br label %98

85:                                               ; preds = %68, %65
  br label %90

86:                                               ; preds = %47
  %87 = load i32, i32* @SSL_EARLY_DATA_FINISHED_READING, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %85
  %91 = load i64*, i64** %9, align 8
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  store i32 %92, i32* %5, align 4
  br label %98

93:                                               ; preds = %20
  %94 = load i32, i32* @SSL_F_SSL_READ_EARLY_DATA, align 4
  %95 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %96 = call i32 @SSLerr(i32 %94, i32 %95)
  %97 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %90, %83, %42, %28, %15
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_in_before(%struct.TYPE_8__*) #1

declare dso_local i32 @SSL_accept(%struct.TYPE_8__*) #1

declare dso_local i32 @SSL_read_ex(%struct.TYPE_8__*, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
