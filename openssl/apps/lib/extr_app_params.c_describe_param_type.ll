; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_app_params.c_describe_param_type.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_app_params.c_describe_param_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pointer to a \00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"UTF8 encoded string\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pointer to an \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"octet string\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" (arbitrary size)\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c" (max %zu bytes large)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_3__*)* @describe_param_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @describe_param_type(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 130, label %14
    i32 133, label %15
    i32 129, label %16
    i32 128, label %17
    i32 132, label %18
    i32 131, label %19
  ]

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %15

15:                                               ; preds = %3, %14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %21

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %17

17:                                               ; preds = %3, %16
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %21

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %19

19:                                               ; preds = %3, %18
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %21

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19, %17, %15
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %22, i64 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %40, i64 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %42, i8* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %47, %39
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %60, i64 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %5, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %68, %59
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %84, i64 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i32 %86, i32* %10, align 4
  br label %94

87:                                               ; preds = %78
  %88 = load i8*, i8** %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* %88, i64 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %87, %83
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %4, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %5, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i8*, i8** %4, align 8
  store i8 0, i8* %107, align 1
  ret i32 1
}

declare dso_local i32 @BIO_snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
