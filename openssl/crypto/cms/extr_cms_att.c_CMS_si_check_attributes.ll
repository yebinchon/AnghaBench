; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_att.c_CMS_si_check_attributes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_att.c_CMS_si_check_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@cms_attribute_properties = common dso_local global %struct.TYPE_8__* null, align 8
@CMS_ATTR_F_SIGNED = common dso_local global i32 0, align 4
@CMS_ATTR_F_UNSIGNED = common dso_local global i32 0, align 4
@CMS_F_CMS_SI_CHECK_ATTRIBUTES = common dso_local global i32 0, align 4
@CMS_R_ATTRIBUTE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_si_check_attributes(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call i64 @CMS_signed_get_attr_count(%struct.TYPE_7__* %9)
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i64 @CMS_unsigned_get_attr_count(%struct.TYPE_7__* %13)
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %60, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cms_attribute_properties, align 8
  %20 = call i64 @OSSL_NELEM(%struct.TYPE_8__* %19)
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cms_attribute_properties, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cms_attribute_properties, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CMS_ATTR_F_SIGNED, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cms_check_attribute(i32 %36, i32 %37, i32 %38, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CMS_ATTR_F_UNSIGNED, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @cms_check_attribute(i32 %46, i32 %47, i32 %48, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45, %23
  %56 = load i32, i32* @CMS_F_CMS_SI_CHECK_ATTRIBUTES, align 4
  %57 = load i32, i32* @CMS_R_ATTRIBUTE_ERROR, align 4
  %58 = call i32 @CMSerr(i32 %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %64

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %17

63:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @CMS_signed_get_attr_count(%struct.TYPE_7__*) #1

declare dso_local i64 @CMS_unsigned_get_attr_count(%struct.TYPE_7__*) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_8__*) #1

declare dso_local i32 @cms_check_attribute(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
