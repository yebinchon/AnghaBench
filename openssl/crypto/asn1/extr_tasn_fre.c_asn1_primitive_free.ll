; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_fre.c_asn1_primitive_free.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_fre.c_asn1_primitive_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32**, %struct.TYPE_11__*)*, i32 (i32**, %struct.TYPE_11__*)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asn1_primitive_free(i32** %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32 (i32**, %struct.TYPE_11__*)*, i32 (i32**, %struct.TYPE_11__*)** %23, align 8
  %25 = icmp ne i32 (i32**, %struct.TYPE_11__*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32 (i32**, %struct.TYPE_11__*)*, i32 (i32**, %struct.TYPE_11__*)** %28, align 8
  %30 = load i32**, i32*** %4, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call i32 %29(i32** %30, %struct.TYPE_11__* %31)
  br label %126

33:                                               ; preds = %21, %18
  br label %50

34:                                               ; preds = %12
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32 (i32**, %struct.TYPE_11__*)*, i32 (i32**, %struct.TYPE_11__*)** %39, align 8
  %41 = icmp ne i32 (i32**, %struct.TYPE_11__*)* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32 (i32**, %struct.TYPE_11__*)*, i32 (i32**, %struct.TYPE_11__*)** %44, align 8
  %46 = load i32**, i32*** %4, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = call i32 %45(i32** %46, %struct.TYPE_11__* %47)
  br label %126

49:                                               ; preds = %37, %34
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %51
  %55 = load i32**, i32*** %4, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32** %63, i32*** %4, align 8
  %64 = load i32**, i32*** %4, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %126

68:                                               ; preds = %54
  br label %94

69:                                               ; preds = %51
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  store i32 -1, i32* %7, align 4
  %76 = load i32**, i32*** %4, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %126

80:                                               ; preds = %75
  br label %93

81:                                               ; preds = %69
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 130
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32**, i32*** %4, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %126

92:                                               ; preds = %87, %81
  br label %93

93:                                               ; preds = %92, %80
  br label %94

94:                                               ; preds = %93, %68
  %95 = load i32, i32* %7, align 4
  switch i32 %95, label %119 [
    i32 128, label %96
    i32 130, label %100
    i32 129, label %113
    i32 131, label %114
  ]

96:                                               ; preds = %94
  %97 = load i32**, i32*** %4, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @ASN1_OBJECT_free(i32* %98)
  br label %124

100:                                              ; preds = %94
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = icmp ne %struct.TYPE_11__* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32**, i32*** %4, align 8
  %108 = bitcast i32** %107 to i32*
  store i32 %106, i32* %108, align 4
  br label %112

109:                                              ; preds = %100
  %110 = load i32**, i32*** %4, align 8
  %111 = bitcast i32** %110 to i32*
  store i32 -1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %126

113:                                              ; preds = %94
  br label %124

114:                                              ; preds = %94
  %115 = load i32**, i32*** %4, align 8
  call void @asn1_primitive_free(i32** %115, %struct.TYPE_11__* null, i32 0)
  %116 = load i32**, i32*** %4, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @OPENSSL_free(i32* %117)
  br label %124

119:                                              ; preds = %94
  %120 = load i32**, i32*** %4, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @asn1_string_embed_free(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114, %113, %96
  %125 = load i32**, i32*** %4, align 8
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %124, %112, %91, %79, %67, %42, %26
  ret void
}

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @asn1_string_embed_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
