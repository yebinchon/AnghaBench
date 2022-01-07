; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_objects.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_ssl_objects(i32* %0, i32* %1, i32** %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32**, i32*** %10, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32**, i32*** %10, align 8
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  br label %31

24:                                               ; preds = %6
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @SSL_new(i32* %25)
  store i32* %26, i32** %14, align 8
  %27 = call i32 @TEST_ptr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %114

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32**, i32*** %11, align 8
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %15, align 8
  br label %45

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @SSL_new(i32* %39)
  store i32* %40, i32** %15, align 8
  %41 = call i32 @TEST_ptr(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %114

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32*, i32** %15, align 8
  %47 = call i64 @SSL_is_dtls(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = call i32 (...) @bio_s_mempacket_test()
  %51 = call i32* @BIO_new(i32 %50)
  store i32* %51, i32** %16, align 8
  %52 = call i32 @TEST_ptr(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = call i32 (...) @bio_s_mempacket_test()
  %56 = call i32* @BIO_new(i32 %55)
  store i32* %56, i32** %17, align 8
  %57 = call i32 @TEST_ptr(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %49
  br label %114

60:                                               ; preds = %54
  br label %73

61:                                               ; preds = %45
  %62 = call i32 (...) @BIO_s_mem()
  %63 = call i32* @BIO_new(i32 %62)
  store i32* %63, i32** %16, align 8
  %64 = call i32 @TEST_ptr(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = call i32 (...) @BIO_s_mem()
  %68 = call i32* @BIO_new(i32 %67)
  store i32* %68, i32** %17, align 8
  %69 = call i32 @TEST_ptr(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %61
  br label %114

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32*, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = call i32* @BIO_push(i32* %77, i32* %78)
  store i32* %79, i32** %16, align 8
  %80 = call i32 @TEST_ptr(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %114

83:                                               ; preds = %76, %73
  %84 = load i32*, i32** %13, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %17, align 8
  %89 = call i32* @BIO_push(i32* %87, i32* %88)
  store i32* %89, i32** %17, align 8
  %90 = call i32 @TEST_ptr(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %114

93:                                               ; preds = %86, %83
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @BIO_set_mem_eof_return(i32* %94, i32 -1)
  %96 = load i32*, i32** %17, align 8
  %97 = call i32 @BIO_set_mem_eof_return(i32* %96, i32 -1)
  %98 = load i32*, i32** %14, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @SSL_set_bio(i32* %98, i32* %99, i32* %100)
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @BIO_up_ref(i32* %102)
  %104 = load i32*, i32** %17, align 8
  %105 = call i32 @BIO_up_ref(i32* %104)
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = call i32 @SSL_set_bio(i32* %106, i32* %107, i32* %108)
  %110 = load i32*, i32** %14, align 8
  %111 = load i32**, i32*** %10, align 8
  store i32* %110, i32** %111, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32**, i32*** %11, align 8
  store i32* %112, i32** %113, align 8
  store i32 1, i32* %7, align 4
  br label %127

114:                                              ; preds = %92, %82, %71, %59, %43, %29
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @SSL_free(i32* %115)
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @SSL_free(i32* %117)
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @BIO_free(i32* %119)
  %121 = load i32*, i32** %17, align 8
  %122 = call i32 @BIO_free(i32* %121)
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @BIO_free(i32* %123)
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @BIO_free(i32* %125)
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %114, %93
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i64 @SSL_is_dtls(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @bio_s_mempacket_test(...) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @BIO_set_mem_eof_return(i32*, i32) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @BIO_up_ref(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
