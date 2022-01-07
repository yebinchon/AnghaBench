; ModuleID = '/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_session_user_set.c'
source_filename = "/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_session_user_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }

@NID_undef = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.session*, i32*)* @session_user_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @session_user_set(%struct.session* %0, i32* %1) #0 {
  %3 = alloca %struct.session*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.session* %0, %struct.session** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @X509_get_subject_name(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @X509_NAME_entry_count(i32* %16)
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %67, %2
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32* @X509_NAME_get_entry(i32* %23, i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %67

28:                                               ; preds = %22
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @X509_NAME_ENTRY_get_object(i32* %29)
  store i32* %30, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %67

33:                                               ; preds = %28
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @X509_NAME_ENTRY_get_data(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %67

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @OBJ_obj2nid(i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @NID_undef, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %67

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @OBJ_nid2sn(i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %67

49:                                               ; preds = %44
  store i8* null, i8** %13, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @ASN1_STRING_to_UTF8(i8** %13, i32* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %67

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @strncasecmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.session*, %struct.session** %3, align 8
  %60 = getelementptr inbounds %struct.session, %struct.session* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @snprintf(i32 %61, i32 3, i8* %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @OPENSSL_free(i8* %65)
  br label %67

67:                                               ; preds = %64, %53, %48, %43, %37, %32, %27
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %18

70:                                               ; preds = %18
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

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
