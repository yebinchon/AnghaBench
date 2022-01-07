; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_setup_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_setup_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_FILETYPE_PEM = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error loading file %s\0A\00", align 1
@X509_FILETYPE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error loading directory %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error loading store URI %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @setup_verify(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = call i32* (...) @X509_STORE_new()
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %114

20:                                               ; preds = %6
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %23, %20
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 (...) @X509_LOOKUP_file()
  %29 = call i32* @X509_STORE_add_lookup(i32* %27, i32 %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %114

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32*, i32** %15, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %40 = call i32 @X509_LOOKUP_load_file(i32* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @bio_err, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @BIO_printf(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %114

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %33
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* @X509_FILETYPE_DEFAULT, align 4
  %50 = call i32 @X509_LOOKUP_load_file(i32* %48, i8* null, i32 %49)
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51, %23
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 (...) @X509_LOOKUP_hash_dir()
  %61 = call i32* @X509_STORE_add_lookup(i32* %59, i32 %60)
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %114

65:                                               ; preds = %58
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32*, i32** %15, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %72 = call i32 @X509_LOOKUP_add_dir(i32* %69, i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @bio_err, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @BIO_printf(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %114

78:                                               ; preds = %68
  br label %83

79:                                               ; preds = %65
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* @X509_FILETYPE_DEFAULT, align 4
  %82 = call i32 @X509_LOOKUP_add_dir(i32* %80, i8* null, i32 %81)
  br label %83

83:                                               ; preds = %79, %78
  br label %84

84:                                               ; preds = %83, %55
  %85 = load i8*, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %87, %84
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 (...) @X509_LOOKUP_store()
  %93 = call i32* @X509_STORE_add_lookup(i32* %91, i32 %92)
  store i32* %93, i32** %15, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %114

97:                                               ; preds = %90
  %98 = load i32*, i32** %15, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @X509_LOOKUP_add_store(i32* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @bio_err, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @BIO_printf(i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %105, %102
  br label %114

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %87
  %112 = call i32 (...) @ERR_clear_error()
  %113 = load i32*, i32** %14, align 8
  store i32* %113, i32** %7, align 8
  br label %117

114:                                              ; preds = %109, %96, %74, %64, %42, %32, %19
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @X509_STORE_free(i32* %115)
  store i32* null, i32** %7, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32*, i32** %7, align 8
  ret i32* %118
}

declare dso_local i32* @X509_STORE_new(...) #1

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i32 @X509_LOOKUP_load_file(i32*, i8*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @X509_LOOKUP_hash_dir(...) #1

declare dso_local i32 @X509_LOOKUP_add_dir(i32*, i8*, i32) #1

declare dso_local i32 @X509_LOOKUP_store(...) #1

declare dso_local i32 @X509_LOOKUP_add_store(i32*, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @X509_STORE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
