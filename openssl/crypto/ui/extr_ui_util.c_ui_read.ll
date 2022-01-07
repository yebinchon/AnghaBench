; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_util.c_ui_read.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_util.c_ui_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pem_password_cb_data = type { i32 (i8*, i32, i32, i32)*, i32 }

@PEM_BUFSIZE = common dso_local global i32 0, align 4
@ui_method_data_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ui_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ui_read(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pem_password_cb_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @UI_get_string_type(i32* %12)
  switch i32 %13, label %66 [
    i32 129, label %14
    i32 128, label %65
    i32 130, label %65
    i32 133, label %65
    i32 131, label %65
    i32 132, label %65
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @PEM_BUFSIZE, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @UI_get_method(i32* %20)
  %22 = load i32, i32* @ui_method_data_index, align 4
  %23 = call %struct.pem_password_cb_data* @UI_method_get_ex_data(i32 %21, i32 %22)
  store %struct.pem_password_cb_data* %23, %struct.pem_password_cb_data** %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @UI_get_result_maxsize(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.pem_password_cb_data*, %struct.pem_password_cb_data** %8, align 8
  %27 = getelementptr inbounds %struct.pem_password_cb_data, %struct.pem_password_cb_data* %26, i32 0, i32 0
  %28 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PEM_BUFSIZE, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = load i32, i32* @PEM_BUFSIZE, align 4
  br label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.pem_password_cb_data*, %struct.pem_password_cb_data** %8, align 8
  %39 = getelementptr inbounds %struct.pem_password_cb_data, %struct.pem_password_cb_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @UI_get0_user_data(i32* %41)
  %43 = call i32 %28(i8* %19, i32 %37, i32 %40, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %19, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %46, %36
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @UI_set_result_ex(i32* %56, i32* %57, i8* %19, i32 %58)
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %61, %53
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %67

65:                                               ; preds = %2, %2, %2, %2, %2
  br label %66

66:                                               ; preds = %2, %65
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @UI_get_string_type(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.pem_password_cb_data* @UI_method_get_ex_data(i32, i32) #1

declare dso_local i32 @UI_get_method(i32*) #1

declare dso_local i32 @UI_get_result_maxsize(i32*) #1

declare dso_local i32 @UI_get0_user_data(i32*) #1

declare dso_local i32 @UI_set_result_ex(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
