; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asn1_encode_test.c_make_custom_der.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asn1_encode_test.c_make_custom_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8*, i8* }

@V_ASN1_BOOLEAN = common dso_local global i32 0, align 4
@V_ASN1_INTEGER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8**, i32)* @make_custom_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_custom_der(%struct.TYPE_3__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i8], align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %16 = load i32, i32* @V_ASN1_BOOLEAN, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %15, align 1
  %18 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 1, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 -1, i8* %19, align 1
  store i8* null, i8** %13, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @der_encode_length(i64 %22, i8** null)
  %24 = add nsw i32 1, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %14, align 8
  br label %33

33:                                               ; preds = %48, %3
  %34 = load i64, i64* %14, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %14, align 8
  br label %33

51:                                               ; preds = %46, %33
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %14, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54, %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @der_encode_length(i64 %60, i8** null)
  %62 = add nsw i32 1, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @der_encode_length(i64 %68, i8** null)
  %70 = add nsw i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %71, %72
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %57, %54
  %75 = load i64, i64* %8, align 8
  %76 = add i64 3, %75
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %76, %77
  %79 = call i32 @der_encode_length(i64 %78, i8** null)
  %80 = add nsw i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 3
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %84, %85
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i8* @OPENSSL_malloc(i64 %87)
  store i8* %88, i8** %13, align 8
  %89 = load i8**, i8*** %6, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8**, i8*** %6, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %74
  store i64 0, i64* %4, align 8
  br label %170

94:                                               ; preds = %74
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %13, align 8
  store i8 48, i8* %95, align 1
  %97 = load i64, i64* %8, align 8
  %98 = add i64 3, %97
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %98, %99
  %101 = call i32 @der_encode_length(i64 %100, i8** %13)
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %104 = call i32 @memcpy(i8* %102, i8* %103, i32 3)
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** @V_ASN1_INTEGER, align 8
  %108 = ptrtoint i8* %107 to i8
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %13, align 8
  store i8 %108, i8* %109, align 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @der_encode_length(i64 %113, i8** %13)
  %115 = load i8*, i8** %13, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memcpy(i8* %115, i8* %118, i32 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 %126
  store i8* %128, i8** %13, align 8
  %129 = load i64, i64* %9, align 8
  %130 = icmp ugt i64 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %94
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %13, align 8
  store i8 -96, i8* %132, align 1
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @der_encode_length(i64 %134, i8** %13)
  %136 = load i8*, i8** @V_ASN1_INTEGER, align 8
  %137 = ptrtoint i8* %136 to i8
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %13, align 8
  store i8 %137, i8* %138, align 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @der_encode_length(i64 %142, i8** %13)
  %144 = load i8*, i8** %13, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(i8* %144, i8* %147, i32 %151)
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %13, align 8
  br label %158

158:                                              ; preds = %131, %94
  %159 = load i64, i64* %11, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = load i8**, i8*** %6, align 8
  %162 = load i8*, i8** %161, align 8
  %163 = ptrtoint i8* %160 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = icmp eq i64 %159, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @OPENSSL_assert(i32 %167)
  %169 = load i64, i64* %11, align 8
  store i64 %169, i64* %4, align 8
  br label %170

170:                                              ; preds = %158, %93
  %171 = load i64, i64* %4, align 8
  ret i64 %171
}

declare dso_local i32 @der_encode_length(i64, i8**) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
