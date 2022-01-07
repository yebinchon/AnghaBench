; ModuleID = '/home/carl/AnghaBench/openvpn/sample/sample-plugins/log/extr_log_v3.c_x509_print_info.c'
source_filename = "/home/carl/AnghaBench/openvpn/sample/sample-plugins/log/extr_log_v3.c_x509_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"X509 %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @x509_print_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x509_print_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @X509_get_subject_name(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @X509_NAME_entry_count(i32* %14)
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %63, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32* @X509_NAME_get_entry(i32* %21, i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %63

27:                                               ; preds = %20
  %28 = load i32*, i32** %9, align 8
  %29 = call i32* @X509_NAME_ENTRY_get_object(i32* %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %63

33:                                               ; preds = %27
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @X509_NAME_ENTRY_get_data(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %63

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @OBJ_obj2nid(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NID_undef, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %63

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @OBJ_nid2sn(i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %63

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @ASN1_STRING_to_UTF8(i8** %11, i32* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @OPENSSL_free(i8* %61)
  br label %63

63:                                               ; preds = %57, %56, %51, %45, %38, %32, %26
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %16

66:                                               ; preds = %16
  ret void
}

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_NAME_entry_count(i32*) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local i32* @X509_NAME_ENTRY_get_object(i32*) #1

declare dso_local i32* @X509_NAME_ENTRY_get_data(i32*) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i64 @ASN1_STRING_to_UTF8(i8**, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
