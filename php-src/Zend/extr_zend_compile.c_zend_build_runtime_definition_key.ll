; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_build_runtime_definition_key.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_build_runtime_definition_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@active_op_array = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%c%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @zend_build_runtime_definition_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zend_build_runtime_definition_key(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @active_op_array, align 4
  %13 = call %struct.TYPE_2__* @CG(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ZSTR_LEN(i32* %16)
  %18 = add nsw i64 1, %17
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @ZSTR_LEN(i32* %19)
  %21 = add nsw i64 %18, %20
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  %24 = call i32* @zend_string_alloc(i64 %23, i32 0)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i8* @ZSTR_VAL(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @ZSTR_VAL(i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i8* @ZSTR_VAL(i32* %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %32 = call i64 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %28, i8* %30, i8* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @zend_new_interned_string(i32* %33)
  ret i32* %34
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @CG(i32) #1

declare dso_local i32* @zend_string_alloc(i64, i32) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32* @zend_new_interned_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
