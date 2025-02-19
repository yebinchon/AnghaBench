; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_pkey_test_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_pkey_test_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"PKEY_CTRL_INVALID\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"PKEY_CTRL_ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*)* @pkey_test_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_test_ctrl(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @OPENSSL_strdup(i8* %12)
  store i8* %13, i8** %10, align 8
  %14 = call i32 @TEST_ptr(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load i8*, i8** %10, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  store i8 0, i8* %23, align 1
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @EVP_PKEY_CTX_ctrl_str(i32* %26, i8* %27, i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, -2
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  store i32 1, i32* %8, align 4
  br label %70

35:                                               ; preds = %25
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @OBJ_sn2nid(i8* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @NID_undef, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @OBJ_ln2nid(i8* %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @NID_undef, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = call i32* @EVP_get_digestbynid(i32 %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = call i32* @EVP_get_cipherbynid(i32 %59)
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  store i32 1, i32* %8, align 4
  br label %68

65:                                               ; preds = %58, %54, %50
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  store i32 1, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %38, %35
  br label %70

70:                                               ; preds = %69, %32
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @OPENSSL_free(i8* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @EVP_PKEY_CTX_ctrl_str(i32*, i8*, i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32* @EVP_get_cipherbynid(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
