; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_CMS_dataInit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_CMS_dataInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@CMS_F_CMS_DATAINIT = common dso_local global i32 0, align 4
@CMS_R_NO_CONTENT = common dso_local global i32 0, align 4
@CMS_R_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CMS_dataInit(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %7, align 8
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32* @cms_content_bio(%struct.TYPE_9__* %13)
  store i32* %14, i32** %7, align 8
  br label %15

15:                                               ; preds = %12, %10
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @CMS_F_CMS_DATAINIT, align 4
  %20 = load i32, i32* @CMS_R_NO_CONTENT, align 4
  %21 = call i32 @CMSerr(i32 %19, i32 %20)
  store i32* null, i32** %3, align 8
  br label %59

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @OBJ_obj2nid(i32 %25)
  switch i32 %26, label %41 [
    i32 132, label %27
    i32 128, label %29
    i32 131, label %32
    i32 130, label %35
    i32 129, label %38
  ]

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  store i32* %28, i32** %3, align 8
  br label %59

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call i32* @cms_SignedData_init_bio(%struct.TYPE_9__* %30)
  store i32* %31, i32** %6, align 8
  br label %45

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = call i32* @cms_DigestedData_init_bio(%struct.TYPE_9__* %33)
  store i32* %34, i32** %6, align 8
  br label %45

35:                                               ; preds = %22
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call i32* @cms_EncryptedData_init_bio(%struct.TYPE_9__* %36)
  store i32* %37, i32** %6, align 8
  br label %45

38:                                               ; preds = %22
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32* @cms_EnvelopedData_init_bio(%struct.TYPE_9__* %39)
  store i32* %40, i32** %6, align 8
  br label %45

41:                                               ; preds = %22
  %42 = load i32, i32* @CMS_F_CMS_DATAINIT, align 4
  %43 = load i32, i32* @CMS_R_UNSUPPORTED_TYPE, align 4
  %44 = call i32 @CMSerr(i32 %42, i32 %43)
  store i32* null, i32** %3, align 8
  br label %59

45:                                               ; preds = %38, %35, %32, %29
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32* @BIO_push(i32* %49, i32* %50)
  store i32* %51, i32** %3, align 8
  br label %59

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @BIO_free(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  store i32* null, i32** %3, align 8
  br label %59

59:                                               ; preds = %58, %48, %41, %27, %18
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i32* @cms_content_bio(%struct.TYPE_9__*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32* @cms_SignedData_init_bio(%struct.TYPE_9__*) #1

declare dso_local i32* @cms_DigestedData_init_bio(%struct.TYPE_9__*) #1

declare dso_local i32* @cms_EncryptedData_init_bio(%struct.TYPE_9__*) #1

declare dso_local i32* @cms_EnvelopedData_init_bio(%struct.TYPE_9__*) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
