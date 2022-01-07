; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_def.c_process_include.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_def.c_process_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ERR_LIB_SYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"calling stat(%s)\00", align 1
@CONF_F_PROCESS_INCLUDE = common dso_local global i32 0, align 4
@CONF_R_RECURSIVE_DIRECTORY_INCLUDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32**, i8**)* @process_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @process_include(i8* %0, i32** %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @stat(i8* %10, %struct.stat* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @ERR_LIB_SYS, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @ERR_raise_data(i32 %14, i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32* null, i32** %4, align 8
  br label %47

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISDIR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @CONF_F_PROCESS_INCLUDE, align 4
  %29 = load i32, i32* @CONF_R_RECURSIVE_DIRECTORY_INCLUDE, align 4
  %30 = call i32 @CONFerr(i32 %28, i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @ERR_add_error_data(i32 1, i8* %31)
  store i32* null, i32** %4, align 8
  br label %47

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = load i32**, i32*** %6, align 8
  %36 = call i32* @get_next_file(i8* %34, i32** %35)
  store i32* %36, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8**, i8*** %7, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32*, i32** %9, align 8
  store i32* %42, i32** %4, align 8
  br label %47

43:                                               ; preds = %18
  %44 = load i8*, i8** %5, align 8
  %45 = call i32* @BIO_new_file(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %43, %41, %27, %13
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*) #1

declare dso_local i32* @get_next_file(i8*, i32**) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
