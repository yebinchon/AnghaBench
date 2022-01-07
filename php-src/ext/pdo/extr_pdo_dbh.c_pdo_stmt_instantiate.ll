; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_stmt_instantiate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_stmt_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IS_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HY000\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"constructor arguments must be passed as an array\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"user-supplied statement does not accept constructor arguments\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_4__*, i32*)* @pdo_stmt_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pdo_stmt_instantiate(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @Z_ISUNDEF_P(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %9, align 8
  %15 = call i64 @Z_TYPE_P(i32* %14)
  %16 = load i64, i64* @IS_ARRAY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @pdo_raise_impl_error(i32* %19, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %42

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @pdo_raise_impl_error(i32* %27, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %42

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = call i64 @object_init_ex(i32* %31, %struct.TYPE_4__* %32)
  %34 = load i64, i64* @SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @UNEXPECTED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32* null, i32** %5, align 8
  br label %42

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %5, align 8
  br label %42

42:                                               ; preds = %40, %39, %26, %18
  %43 = load i32*, i32** %5, align 8
  ret i32* %43
}

declare dso_local i32 @Z_ISUNDEF_P(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @pdo_raise_impl_error(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @object_init_ex(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
