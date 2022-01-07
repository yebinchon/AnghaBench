; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_asn1.c_i2d_DSA_SIG.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_asn1.c_i2d_DSA_SIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }

@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_DSA_SIG(%struct.TYPE_7__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = icmp eq i8** %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = call i32 @WPACKET_init_null(i32* %8, i32 0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %85

15:                                               ; preds = %11
  br label %40

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = call %struct.TYPE_8__* (...) @BUF_MEM_new()
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %6, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i32 @WPACKET_init_len(i32* %8, %struct.TYPE_8__* %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = call i32 @BUF_MEM_free(%struct.TYPE_8__* %28)
  store i32 -1, i32* %3, align 4
  br label %85

30:                                               ; preds = %23
  br label %39

31:                                               ; preds = %16
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @SIZE_MAX, align 4
  %35 = call i32 @WPACKET_init_static_len(i32* %8, i8* %33, i32 %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %85

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @encode_der_dsa_sig(i32* %8, i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = call i32 @WPACKET_get_total_written(i32* %8, i64* %7)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i32 @WPACKET_finish(i32* %8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52, %49, %40
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = call i32 @BUF_MEM_free(%struct.TYPE_8__* %56)
  %58 = call i32 @WPACKET_cleanup(i32* %8)
  store i32 -1, i32* %3, align 4
  br label %85

59:                                               ; preds = %52
  %60 = load i8**, i8*** %5, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i8**, i8*** %5, align 8
  store i8* %70, i8** %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = call i32 @BUF_MEM_free(%struct.TYPE_8__* %74)
  br label %81

76:                                               ; preds = %62
  %77 = load i64, i64* %7, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %77
  store i8* %80, i8** %78, align 8
  br label %81

81:                                               ; preds = %76, %66
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i64, i64* %7, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %55, %37, %27, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @WPACKET_init_null(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @BUF_MEM_new(...) #1

declare dso_local i32 @WPACKET_init_len(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @BUF_MEM_free(%struct.TYPE_8__*) #1

declare dso_local i32 @WPACKET_init_static_len(i32*, i8*, i32, i32) #1

declare dso_local i32 @encode_der_dsa_sig(i32*, i32, i32) #1

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @WPACKET_finish(i32*) #1

declare dso_local i32 @WPACKET_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
