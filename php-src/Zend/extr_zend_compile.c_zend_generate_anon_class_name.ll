; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_generate_anon_class_name.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_generate_anon_class_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@active_op_array = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"class@anonymous%c%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @zend_generate_anon_class_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zend_generate_anon_class_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @active_op_array, align 4
  %11 = call %struct.TYPE_2__* @CG(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ZSTR_LEN(i32* %14)
  %16 = sext i32 %15 to i64
  %17 = add i64 16, %16
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32* @zend_string_alloc(i32 %20, i32 0)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @ZSTR_VAL(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i8* @ZSTR_VAL(i32* %24)
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %27 = call i64 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %25, i8* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32* @zend_new_interned_string(i32* %28)
  ret i32* %29
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @CG(i32) #1

declare dso_local i32* @zend_string_alloc(i32, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32* @zend_new_interned_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
