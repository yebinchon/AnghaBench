; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_cms_get0_econtent_type.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_cms_get0_econtent_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }

@CMS_F_CMS_GET0_ECONTENT_TYPE = common dso_local global i32 0, align 4
@CMS_R_UNSUPPORTED_CONTENT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (%struct.TYPE_20__*)* @cms_get0_econtent_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @cms_get0_econtent_type(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %4 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @OBJ_obj2nid(i32 %6)
  switch i32 %7, label %56 [
    i32 128, label %8
    i32 129, label %16
    i32 131, label %24
    i32 130, label %32
    i32 133, label %40
    i32 132, label %48
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i32** %15, i32*** %2, align 8
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  store i32** %23, i32*** %2, align 8
  br label %60

24:                                               ; preds = %1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  store i32** %31, i32*** %2, align 8
  br label %60

32:                                               ; preds = %1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  store i32** %39, i32*** %2, align 8
  br label %60

40:                                               ; preds = %1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  store i32** %47, i32*** %2, align 8
  br label %60

48:                                               ; preds = %1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i32** %55, i32*** %2, align 8
  br label %60

56:                                               ; preds = %1
  %57 = load i32, i32* @CMS_F_CMS_GET0_ECONTENT_TYPE, align 4
  %58 = load i32, i32* @CMS_R_UNSUPPORTED_CONTENT_TYPE, align 4
  %59 = call i32 @CMSerr(i32 %57, i32 %58)
  store i32** null, i32*** %2, align 8
  br label %60

60:                                               ; preds = %56, %48, %40, %32, %24, %16, %8
  %61 = load i32**, i32*** %2, align 8
  ret i32** %61
}

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
