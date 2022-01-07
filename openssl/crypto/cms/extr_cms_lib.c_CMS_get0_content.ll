; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_CMS_get0_content.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_CMS_get0_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_26__*, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32* }

@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@CMS_F_CMS_GET0_CONTENT = common dso_local global i32 0, align 4
@CMS_R_UNSUPPORTED_CONTENT_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @CMS_get0_content(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %4 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @OBJ_obj2nid(i32 %6)
  switch i32 %7, label %60 [
    i32 132, label %8
    i32 128, label %12
    i32 129, label %20
    i32 131, label %28
    i32 130, label %36
    i32 134, label %44
    i32 133, label %52
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 7
  store i32** %11, i32*** %2, align 8
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  store i32** %19, i32*** %2, align 8
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  store i32** %27, i32*** %2, align 8
  br label %80

28:                                               ; preds = %1
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  store i32** %35, i32*** %2, align 8
  br label %80

36:                                               ; preds = %1
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  store i32** %43, i32*** %2, align 8
  br label %80

44:                                               ; preds = %1
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  store i32** %51, i32*** %2, align 8
  br label %80

52:                                               ; preds = %1
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  store i32** %59, i32*** %2, align 8
  br label %80

60:                                               ; preds = %1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32** %75, i32*** %2, align 8
  br label %80

76:                                               ; preds = %60
  %77 = load i32, i32* @CMS_F_CMS_GET0_CONTENT, align 4
  %78 = load i32, i32* @CMS_R_UNSUPPORTED_CONTENT_TYPE, align 4
  %79 = call i32 @CMSerr(i32 %77, i32 %78)
  store i32** null, i32*** %2, align 8
  br label %80

80:                                               ; preds = %76, %69, %52, %44, %36, %28, %20, %12, %8
  %81 = load i32**, i32*** %2, align 8
  ret i32** %81
}

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
