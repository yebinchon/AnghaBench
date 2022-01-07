; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_CMS_RecipientInfo_kari_get0_alg.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_CMS_RecipientInfo_kari_get0_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32* }

@CMS_RECIPINFO_AGREE = common dso_local global i64 0, align 8
@CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ALG = common dso_local global i32 0, align 4
@CMS_R_NOT_KEY_AGREEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_RecipientInfo_kari_get0_alg(%struct.TYPE_7__* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CMS_RECIPINFO_AGREE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ALG, align 4
  %15 = load i32, i32* @CMS_R_NOT_KEY_AGREEMENT, align 4
  %16 = call i32 @CMSerr(i32 %14, i32 %15)
  store i32 0, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32**, i32*** %6, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32**, i32*** %6, align 8
  store i32* %26, i32** %27, align 8
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32**, i32*** %7, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32**, i32*** %7, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %31, %28
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
