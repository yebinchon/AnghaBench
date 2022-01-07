; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_smime.c_CMS_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_smime.c_CMS_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@NID_pkcs7_enveloped = common dso_local global i64 0, align 8
@CMS_F_CMS_DECRYPT = common dso_local global i32 0, align 4
@CMS_R_TYPE_NOT_ENVELOPED_DATA = common dso_local global i32 0, align 4
@CMS_DEBUG_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_decrypt(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = call i32 @CMS_get0_type(%struct.TYPE_13__* %16)
  %18 = call i64 @OBJ_obj2nid(i32 %17)
  %19 = load i64, i64* @NID_pkcs7_enveloped, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @CMS_F_CMS_DECRYPT, align 4
  %23 = load i32, i32* @CMS_R_TYPE_NOT_ENVELOPED_DATA, align 4
  %24 = call i32 @CMSerr(i32 %22, i32 %23)
  store i32 0, i32* %7, align 4
  br label %112

25:                                               ; preds = %6
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = call i32 @check_content(%struct.TYPE_13__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %112

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @CMS_DEBUG_DECRYPT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %54

46:                                               ; preds = %33
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %38
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %73

65:                                               ; preds = %54
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %57
  %74 = load i32*, i32** %9, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %12, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %112

86:                                               ; preds = %82, %79, %76, %73
  %87 = load i32*, i32** %9, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @CMS_decrypt_set1_pkey(%struct.TYPE_13__* %90, i32* %91, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  br label %112

96:                                               ; preds = %89, %86
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32* @CMS_dataInit(%struct.TYPE_13__* %97, i32* %98)
  store i32* %99, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %112

103:                                              ; preds = %96
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @cms_copy_content(i32* %104, i32* %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @do_free_upto(i32* %108, i32* %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %103, %102, %95, %85, %32, %21
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32 @CMS_get0_type(%struct.TYPE_13__*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @check_content(%struct.TYPE_13__*) #1

declare dso_local i32 @CMS_decrypt_set1_pkey(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32* @CMS_dataInit(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @cms_copy_content(i32*, i32*, i32) #1

declare dso_local i32 @do_free_upto(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
