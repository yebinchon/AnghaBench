; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_fetch.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_method_store_fetch(%struct.TYPE_10__* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %16, align 4
  %19 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %20 = call i32 @OPENSSL_init_crypto(i32 %19, i32* null)
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i8**, i8*** %9, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = icmp eq %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %4
  store i32 0, i32* %5, align 4
  br label %128

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 @ossl_property_read_lock(%struct.TYPE_10__* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_12__* @ossl_method_store_retrieve(%struct.TYPE_10__* %33, i32 %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %10, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = icmp eq %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = call i32 @ossl_property_unlock(%struct.TYPE_10__* %39)
  store i32 0, i32* %5, align 4
  br label %128

41:                                               ; preds = %30
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_11__* @sk_IMPLEMENTATION_value(i32 %47, i32 0)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %11, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %9, align 8
  store i8* %53, i8** %54, align 8
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %50, %44
  br label %122

56:                                               ; preds = %41
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32* @ossl_parse_query(i32 %59, i8* %60)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %122

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32* @ossl_property_merge(i32* %71, i32* %74)
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %122

79:                                               ; preds = %70
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @ossl_property_free(i32* %80)
  %82 = load i32*, i32** %13, align 8
  store i32* %82, i32** %12, align 8
  br label %83

83:                                               ; preds = %79, %65
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @ossl_property_has_optional(i32* %84)
  store i32 %85, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %118, %83
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @sk_IMPLEMENTATION_num(i32 %90)
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %86
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call %struct.TYPE_11__* @sk_IMPLEMENTATION_value(i32 %96, i32 %97)
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %11, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ossl_property_match_count(i32* %99, i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %93
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %9, align 8
  store i8* %110, i8** %111, align 8
  store i32 1, i32* %14, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  br label %122

115:                                              ; preds = %107
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %115, %93
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %86

121:                                              ; preds = %86
  br label %122

122:                                              ; preds = %121, %114, %78, %64, %55
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = call i32 @ossl_property_unlock(%struct.TYPE_10__* %123)
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @ossl_property_free(i32* %125)
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %122, %38, %29
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @ossl_property_read_lock(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @ossl_method_store_retrieve(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ossl_property_unlock(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @sk_IMPLEMENTATION_value(i32, i32) #1

declare dso_local i32* @ossl_parse_query(i32, i8*) #1

declare dso_local i32* @ossl_property_merge(i32*, i32*) #1

declare dso_local i32 @ossl_property_free(i32*) #1

declare dso_local i32 @ossl_property_has_optional(i32*) #1

declare dso_local i32 @sk_IMPLEMENTATION_num(i32) #1

declare dso_local i32 @ossl_property_match_count(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
