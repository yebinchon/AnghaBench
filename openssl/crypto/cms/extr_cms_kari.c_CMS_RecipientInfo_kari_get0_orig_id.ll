; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_CMS_RecipientInfo_kari_get0_orig_id.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_CMS_RecipientInfo_kari_get0_orig_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32*, i32* }

@CMS_RECIPINFO_AGREE = common dso_local global i64 0, align 8
@CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ORIG_ID = common dso_local global i32 0, align 4
@CMS_R_NOT_KEY_AGREEMENT = common dso_local global i32 0, align 4
@CMS_OIK_ISSUER_SERIAL = common dso_local global i64 0, align 8
@CMS_OIK_KEYIDENTIFIER = common dso_local global i64 0, align 8
@CMS_OIK_PUBKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_RecipientInfo_kari_get0_orig_id(%struct.TYPE_14__* %0, i32** %1, i32** %2, i32** %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32** %5, i32*** %13, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CMS_RECIPINFO_AGREE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ORIG_ID, align 4
  %22 = load i32, i32* @CMS_R_NOT_KEY_AGREEMENT, align 4
  %23 = call i32 @CMSerr(i32 %21, i32 %22)
  store i32 0, i32* %7, align 4
  br label %133

24:                                               ; preds = %6
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %14, align 8
  %31 = load i32**, i32*** %12, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32**, i32*** %12, align 8
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i32**, i32*** %13, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32**, i32*** %13, align 8
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32**, i32*** %11, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32**, i32*** %11, align 8
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32**, i32*** %9, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32**, i32*** %9, align 8
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32**, i32*** %10, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32**, i32*** %10, align 8
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CMS_OIK_ISSUER_SERIAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load i32**, i32*** %12, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %12, align 8
  store i32* %70, i32** %71, align 8
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i32**, i32*** %13, align 8
  %74 = icmp ne i32** %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32**, i32*** %13, align 8
  store i32* %81, i32** %82, align 8
  br label %83

83:                                               ; preds = %75, %72
  br label %132

84:                                               ; preds = %55
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CMS_OIK_KEYIDENTIFIER, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32**, i32*** %11, align 8
  %92 = icmp ne i32** %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32**, i32*** %11, align 8
  store i32* %97, i32** %98, align 8
  br label %99

99:                                               ; preds = %93, %90
  br label %131

100:                                              ; preds = %84
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CMS_OIK_PUBKEY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %100
  %107 = load i32**, i32*** %9, align 8
  %108 = icmp ne i32** %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32**, i32*** %9, align 8
  store i32* %115, i32** %116, align 8
  br label %117

117:                                              ; preds = %109, %106
  %118 = load i32**, i32*** %10, align 8
  %119 = icmp ne i32** %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32**, i32*** %10, align 8
  store i32* %126, i32** %127, align 8
  br label %128

128:                                              ; preds = %120, %117
  br label %130

129:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %133

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %99
  br label %132

132:                                              ; preds = %131, %83
  store i32 1, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %129, %20
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
