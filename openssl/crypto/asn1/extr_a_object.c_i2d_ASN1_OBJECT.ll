; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_i2d_ASN1_OBJECT.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_i2d_ASN1_OBJECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@ASN1_F_I2D_ASN1_OBJECT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_UNIVERSAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_ASN1_OBJECT(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V_ASN1_OBJECT, align 4
  %22 = call i32 @ASN1_object_size(i32 0, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %17
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %25
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @OPENSSL_malloc(i32 %35)
  store i8* %36, i8** %7, align 8
  store i8* %36, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @ASN1_F_I2D_ASN1_OBJECT, align 4
  %40 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %41 = call i32 @ASN1err(i32 %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %76

42:                                               ; preds = %34
  br label %46

43:                                               ; preds = %30
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @V_ASN1_OBJECT, align 4
  %51 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %52 = call i32 @ASN1_put_object(i8** %6, i32 0, i32 %49, i32 %50, i32 %51)
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memcpy(i8* %53, i32* %56, i32 %59)
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i8*, i8** %7, align 8
  br label %72

65:                                               ; preds = %46
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  br label %72

72:                                               ; preds = %65, %63
  %73 = phi i8* [ %64, %63 ], [ %71, %65 ]
  %74 = load i8**, i8*** %5, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %38, %28, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ASN1_object_size(i32, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ASN1_put_object(i8**, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
