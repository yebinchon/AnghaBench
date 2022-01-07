; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_uitest.c_test_old.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_uitest.c_test_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_old.defpass = private unnamed_addr constant [9 x i8] c"password\00", align 1
@test_pem_password_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@UI_INPUT_FLAG_DEFAULT_PWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"test_old: UI process interrupted or cancelled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_old() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [9 x i8], align 1
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %6 = bitcast [9 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_old.defpass, i32 0, i32 0), i64 9, i1 false)
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @test_pem_password_cb, align 4
  %8 = call i32* @UI_UTIL_wrap_read_pem_callback(i32 %7, i32 0)
  store i32* %8, i32** %1, align 8
  %9 = call i32 @TEST_ptr(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32*, i32** %1, align 8
  %13 = call i32* @UI_new_method(i32* %12)
  store i32* %13, i32** %2, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %0
  br label %41

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %20 = call i32 @UI_add_user_data(i32* %18, i8* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @UI_INPUT_FLAG_DEFAULT_PWD, align 4
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %24 = call i32 @UI_add_input_string(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23, i32 0, i32 15)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %41

27:                                               ; preds = %17
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @UI_process(i32* %28)
  switch i32 %29, label %33 [
    i32 -2, label %30
    i32 -1, label %32
  ]

30:                                               ; preds = %27
  %31 = call i32 @TEST_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %30
  br label %41

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %37 = call i64 @TEST_str_eq(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %34
  br label %41

41:                                               ; preds = %40, %32, %26, %16
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @UI_free(i32* %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @UI_destroy_method(i32* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @UI_UTIL_wrap_read_pem_callback(i32, i32) #2

declare dso_local i32* @UI_new_method(i32*) #2

declare dso_local i32 @UI_add_user_data(i32*, i8*) #2

declare dso_local i32 @UI_add_input_string(i32*, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @UI_process(i32*) #2

declare dso_local i32 @TEST_info(i8*) #2

declare dso_local i64 @TEST_str_eq(i8*, i8*) #2

declare dso_local i32 @UI_free(i32*) #2

declare dso_local i32 @UI_destroy_method(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
