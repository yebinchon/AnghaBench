; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_sun_path.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_sun_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"the path is cannot be empty\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"the path is too long, the maximum permitted length is %zd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @from_zval_write_sun_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @from_zval_write_sun_path(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sockaddr_un*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %11, %struct.sockaddr_un** %9, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @zval_get_tmp_string(i32* %12, i32** %8)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @ZSTR_LEN(i32* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 (i32*, i8*, ...) @do_from_zval_err(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @zend_tmp_string_release(i32* %20)
  br label %47

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @ZSTR_LEN(i32* %23)
  %25 = icmp uge i64 %24, 8
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 (i32*, i8*, ...) @do_from_zval_err(i32* %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 7)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @zend_tmp_string_release(i32* %29)
  br label %47

31:                                               ; preds = %22
  %32 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %33 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %32, i32 0, i32 0
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @ZSTR_VAL(i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @ZSTR_LEN(i32* %36)
  %38 = call i32 @memcpy(i8** %33, i32 %35, i64 %37)
  %39 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %40 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @ZSTR_LEN(i32* %42)
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @zend_tmp_string_release(i32* %45)
  br label %47

47:                                               ; preds = %31, %26, %17
  ret void
}

declare dso_local i32* @zval_get_tmp_string(i32*, i32**) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @do_from_zval_err(i32*, i8*, ...) #1

declare dso_local i32 @zend_tmp_string_release(i32*) #1

declare dso_local i32 @memcpy(i8**, i32, i64) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
