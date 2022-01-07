; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_hash_key_zval.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_hash_key_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @cluster_hash_key_zval(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [255 x i8], align 16
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @Z_TYPE_P(i32* %6)
  switch i32 %7, label %27 [
    i32 128, label %8
    i32 130, label %13
    i32 131, label %19
    i32 132, label %25
    i32 129, label %26
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @Z_STRVAL_P(i32* %9)
  store i8* %10, i8** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @Z_STRLEN_P(i32* %11)
  store i32 %12, i32* %5, align 4
  br label %28

13:                                               ; preds = %1
  %14 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %15 = load i32*, i32** %2, align 8
  %16 = call double @Z_LVAL_P(i32* %15)
  %17 = call i32 @snprintf(i8* %14, i32 255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %16)
  store i32 %17, i32* %5, align 4
  %18 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  store i8* %18, i8** %3, align 8
  br label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %21 = load i32*, i32** %2, align 8
  %22 = call double @Z_DVAL_P(i32* %21)
  %23 = call i32 @snprintf(i8* %20, i32 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), double %22)
  store i32 %23, i32* %5, align 4
  %24 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  store i8* %24, i8** %3, align 8
  br label %28

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i32 5, i32* %5, align 4
  br label %28

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  store i32 6, i32* %5, align 4
  br label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %19, %13, %8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call zeroext i16 @cluster_hash_key(i8* %29, i32 %30)
  ret i16 %31
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local double @Z_LVAL_P(i32*) #1

declare dso_local double @Z_DVAL_P(i32*) #1

declare dso_local zeroext i16 @cluster_hash_key(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
