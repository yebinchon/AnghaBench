; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_cms_sd_asn1_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_cms_sd_asn1_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)* }

@ASN1_PKEY_CTRL_CMS_SIGN = common dso_local global i32 0, align 4
@CMS_F_CMS_SD_ASN1_CTRL = common dso_local global i32 0, align 4
@CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE = common dso_local global i32 0, align 4
@CMS_R_CTRL_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @cms_sd_asn1_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_sd_asn1_ctrl(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)** %19, align 8
  %21 = icmp eq i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %2
  store i32 1, i32* %3, align 4
  br label %48

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = load i32, i32* @ASN1_PKEY_CTRL_CMS_SIGN, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = call i32 %28(%struct.TYPE_8__* %29, i32 %30, i32 %31, %struct.TYPE_9__* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @CMS_F_CMS_SD_ASN1_CTRL, align 4
  %38 = load i32, i32* @CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE, align 4
  %39 = call i32 @CMSerr(i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %48

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @CMS_F_CMS_SD_ASN1_CTRL, align 4
  %45 = load i32, i32* @CMS_R_CTRL_FAILURE, align 4
  %46 = call i32 @CMSerr(i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %43, %36, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
