; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_bio_ndef.c_ndef_suffix.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_bio_ndef.c_ndef_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i8*, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32, i32*, %struct.TYPE_10__*, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i8**, i32, i32 }

@ASN1_OP_STREAM_POST = common dso_local global i32 0, align 4
@ASN1_F_NDEF_SUFFIX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i8*)* @ndef_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndef_suffix(i32* %0, i8** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %110

18:                                               ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_7__**
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %13, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i8** %37, i8*** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64 (i32, i32*, %struct.TYPE_10__*, %struct.TYPE_8__*)*, i64 (i32, i32*, %struct.TYPE_10__*, %struct.TYPE_8__*)** %40, align 8
  %42 = load i32, i32* @ASN1_OP_STREAM_POST, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call i64 %41(i32 %42, i32* %44, %struct.TYPE_10__* %47, %struct.TYPE_8__* %14)
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %110

51:                                               ; preds = %18
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = call i32 @ASN1_item_ndef_i2d(i32 %54, i8** null, %struct.TYPE_10__* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %110

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = call i8* @OPENSSL_malloc(i32 %63)
  store i8* %64, i8** %11, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @ASN1_F_NDEF_SUFFIX, align 4
  %68 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %69 = call i32 @ASN1err(i32 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %110

70:                                               ; preds = %62
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8**, i8*** %7, align 8
  store i8* %74, i8** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @ASN1_item_ndef_i2d(i32 %78, i8** %11, %struct.TYPE_10__* %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %110

89:                                               ; preds = %70
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %7, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %100 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sub nsw i64 %96, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %89, %88, %66, %61, %50, %17
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @ASN1_item_ndef_i2d(i32, i8**, %struct.TYPE_10__*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
