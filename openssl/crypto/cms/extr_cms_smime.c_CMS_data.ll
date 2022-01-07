; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_smime.c_CMS_data.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_smime.c_CMS_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_pkcs7_data = common dso_local global i64 0, align 8
@CMS_F_CMS_DATA = common dso_local global i32 0, align 4
@CMS_R_TYPE_NOT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_data(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @CMS_get0_type(i32* %10)
  %12 = call i64 @OBJ_obj2nid(i32 %11)
  %13 = load i64, i64* @NID_pkcs7_data, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @CMS_F_CMS_DATA, align 4
  %17 = load i32, i32* @CMS_R_TYPE_NOT_DATA, align 4
  %18 = call i32 @CMSerr(i32 %16, i32 %17)
  store i32 0, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @CMS_dataInit(i32* %20, i32* null)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cms_copy_content(i32* %26, i32* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @BIO_free_all(i32* %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %24, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32 @CMS_get0_type(i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32* @CMS_dataInit(i32*, i32*) #1

declare dso_local i32 @cms_copy_content(i32*, i32*, i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
