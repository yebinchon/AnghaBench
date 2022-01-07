; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_asn1.c_d2i_DSA_SIG.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_asn1.c_d2i_DSA_SIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @d2i_DSA_SIG(%struct.TYPE_6__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %82

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %14 = icmp ne %struct.TYPE_6__** %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %8, align 8
  br label %28

22:                                               ; preds = %15, %12
  %23 = call %struct.TYPE_6__* (...) @DSA_SIG_new()
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %82

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = call i8* (...) @BN_new()
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = call i8* (...) @BN_new()
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @decode_der_dsa_sig(i32* %51, i32* %54, i8** %55, i64 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %61 = icmp eq %struct.TYPE_6__** %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp eq %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = call i32 @DSA_SIG_free(%struct.TYPE_6__* %67)
  br label %69

69:                                               ; preds = %66, %62
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %82

70:                                               ; preds = %48
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %72 = icmp ne %struct.TYPE_6__** %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp eq %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %79, align 8
  br label %80

80:                                               ; preds = %77, %73, %70
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %4, align 8
  br label %82

82:                                               ; preds = %80, %69, %26, %11
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %83
}

declare dso_local %struct.TYPE_6__* @DSA_SIG_new(...) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i64 @decode_der_dsa_sig(i32*, i32*, i8**, i64) #1

declare dso_local i32 @DSA_SIG_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
