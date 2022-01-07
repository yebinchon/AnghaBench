; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_txt2obj.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_txt2obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@OBJ_F_OBJ_TXT2OBJ = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_UNIVERSAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OBJ_txt2obj(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @NID_undef, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @OBJ_sn2nid(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @NID_undef, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @OBJ_ln2nid(i8* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @NID_undef, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @OBJ_nid2obj(i32 %27)
  store i32* %28, i32** %3, align 8
  br label %67

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @a2d_ASN1_OBJECT(i8* null, i32 0, i8* %31, i32 -1)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32* null, i32** %3, align 8
  br label %67

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @V_ASN1_OBJECT, align 4
  %39 = call i32 @ASN1_object_size(i32 0, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32* null, i32** %3, align 8
  br label %67

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = call i8* @OPENSSL_malloc(i32 %44)
  store i8* %45, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @OBJ_F_OBJ_TXT2OBJ, align 4
  %49 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %50 = call i32 @OBJerr(i32 %48, i32 %49)
  store i32* null, i32** %3, align 8
  br label %67

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @V_ASN1_OBJECT, align 4
  %55 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %56 = call i32 @ASN1_put_object(i8** %9, i32 0, i32 %53, i32 %54, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @a2d_ASN1_OBJECT(i8* %57, i32 %58, i8* %59, i32 -1)
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32* @d2i_ASN1_OBJECT(i32* null, i8** %10, i32 %62)
  store i32* %63, i32** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @OPENSSL_free(i8* %64)
  %66 = load i32*, i32** %7, align 8
  store i32* %66, i32** %3, align 8
  br label %67

67:                                               ; preds = %51, %47, %42, %35, %26
  %68 = load i32*, i32** %3, align 8
  ret i32* %68
}

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32 @a2d_ASN1_OBJECT(i8*, i32, i8*, i32) #1

declare dso_local i32 @ASN1_object_size(i32, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @OBJerr(i32, i32) #1

declare dso_local i32 @ASN1_put_object(i8**, i32, i32, i32, i32) #1

declare dso_local i32* @d2i_ASN1_OBJECT(i32*, i8**, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
