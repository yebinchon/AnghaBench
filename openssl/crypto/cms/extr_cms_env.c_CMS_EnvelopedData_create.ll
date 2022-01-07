; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_CMS_EnvelopedData_create.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_env.c_CMS_EnvelopedData_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CMS_F_CMS_ENVELOPEDDATA_CREATE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CMS_EnvelopedData_create(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = call i32* (...) @CMS_ContentInfo_new()
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.TYPE_3__* @cms_enveloped_data_init(i32* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %26

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @cms_EncryptedContent_init(i32 %19, i32* %20, i32* null, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %26

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  store i32* %25, i32** %2, align 8
  br label %32

26:                                               ; preds = %23, %15, %9
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @CMS_ContentInfo_free(i32* %27)
  %29 = load i32, i32* @CMS_F_CMS_ENVELOPEDDATA_CREATE, align 4
  %30 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %31 = call i32 @CMSerr(i32 %29, i32 %30)
  store i32* null, i32** %2, align 8
  br label %32

32:                                               ; preds = %26, %24
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

declare dso_local i32* @CMS_ContentInfo_new(...) #1

declare dso_local %struct.TYPE_3__* @cms_enveloped_data_init(i32*) #1

declare dso_local i32 @cms_EncryptedContent_init(i32, i32*, i32*, i32) #1

declare dso_local i32 @CMS_ContentInfo_free(i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
