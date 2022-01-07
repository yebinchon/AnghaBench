; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_do_blob_header.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pvkfmt.c_do_blob_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS_PUBLICKEYBLOB = common dso_local global i8 0, align 1
@PEM_F_DO_BLOB_HEADER = common dso_local global i32 0, align 4
@PEM_R_EXPECTING_PRIVATE_KEY_BLOB = common dso_local global i32 0, align 4
@MS_PRIVATEKEYBLOB = common dso_local global i8 0, align 1
@PEM_R_EXPECTING_PUBLIC_KEY_BLOB = common dso_local global i32 0, align 4
@PEM_R_BAD_VERSION_NUMBER = common dso_local global i32 0, align 4
@PEM_R_BAD_MAGIC_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32*, i32*, i32*, i32*)* @do_blob_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_blob_header(i8** %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %107

20:                                               ; preds = %6
  %21 = load i8*, i8** %14, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @MS_PUBLICKEYBLOB, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @PEM_F_DO_BLOB_HEADER, align 4
  %33 = load i32, i32* @PEM_R_EXPECTING_PRIVATE_KEY_BLOB, align 4
  %34 = call i32 @PEMerr(i32 %32, i32 %33)
  store i32 0, i32* %7, align 4
  br label %107

35:                                               ; preds = %27
  %36 = load i32*, i32** %13, align 8
  store i32 1, i32* %36, align 4
  br label %56

37:                                               ; preds = %20
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @MS_PRIVATEKEYBLOB, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @PEM_F_DO_BLOB_HEADER, align 4
  %50 = load i32, i32* @PEM_R_EXPECTING_PUBLIC_KEY_BLOB, align 4
  %51 = call i32 @PEMerr(i32 %49, i32 %50)
  store i32 0, i32* %7, align 4
  br label %107

52:                                               ; preds = %44
  %53 = load i32*, i32** %13, align 8
  store i32 0, i32* %53, align 4
  br label %55

54:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %107

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i8*, i8** %14, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %14, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @PEM_F_DO_BLOB_HEADER, align 4
  %66 = load i32, i32* @PEM_R_BAD_VERSION_NUMBER, align 4
  %67 = call i32 @PEMerr(i32 %65, i32 %66)
  store i32 0, i32* %7, align 4
  br label %107

68:                                               ; preds = %56
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 6
  store i8* %70, i8** %14, align 8
  %71 = call i32 @read_ledword(i8** %14)
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = call i32 @read_ledword(i8** %14)
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %100 [
    i32 131, label %78
    i32 129, label %80
    i32 130, label %89
    i32 128, label %91
  ]

78:                                               ; preds = %68
  %79 = load i32*, i32** %12, align 8
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %68, %78
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @PEM_F_DO_BLOB_HEADER, align 4
  %86 = load i32, i32* @PEM_R_EXPECTING_PRIVATE_KEY_BLOB, align 4
  %87 = call i32 @PEMerr(i32 %85, i32 %86)
  store i32 0, i32* %7, align 4
  br label %107

88:                                               ; preds = %80
  br label %104

89:                                               ; preds = %68
  %90 = load i32*, i32** %12, align 8
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %68, %89
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @PEM_F_DO_BLOB_HEADER, align 4
  %97 = load i32, i32* @PEM_R_EXPECTING_PUBLIC_KEY_BLOB, align 4
  %98 = call i32 @PEMerr(i32 %96, i32 %97)
  store i32 0, i32* %7, align 4
  br label %107

99:                                               ; preds = %91
  br label %104

100:                                              ; preds = %68
  %101 = load i32, i32* @PEM_F_DO_BLOB_HEADER, align 4
  %102 = load i32, i32* @PEM_R_BAD_MAGIC_NUMBER, align 4
  %103 = call i32 @PEMerr(i32 %101, i32 %102)
  store i32 -1, i32* %7, align 4
  br label %107

104:                                              ; preds = %99, %88
  %105 = load i8*, i8** %14, align 8
  %106 = load i8**, i8*** %8, align 8
  store i8* %105, i8** %106, align 8
  store i32 1, i32* %7, align 4
  br label %107

107:                                              ; preds = %104, %100, %95, %84, %64, %54, %48, %31, %19
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @read_ledword(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
