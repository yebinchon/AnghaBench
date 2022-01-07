; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_create_objects.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_create_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_create_objects(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %9, align 8
  br label %10

10:                                               ; preds = %128, %1
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %13 = call i32 @BIO_gets(i32* %11, i8* %12, i32 512)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %131

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %21
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %24 = load i8, i8* %23, align 16
  %25 = call i32 @ossl_isalnum(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %131

29:                                               ; preds = %18
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  store i8* %30, i8** %8, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %43, %29
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @ossl_isdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %31

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %112

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  store i8 0, i8* %52, align 1
  br label %54

54:                                               ; preds = %59, %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @ossl_isspace(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  br label %54

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i8* null, i8** %8, align 8
  br label %111

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %9, align 8
  br label %70

70:                                               ; preds = %83, %68
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @ossl_isspace(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  br label %70

86:                                               ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  store i8 0, i8* %92, align 1
  br label %94

94:                                               ; preds = %99, %91
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @ossl_isspace(i8 signext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  br label %94

102:                                              ; preds = %94
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i8* null, i8** %9, align 8
  br label %108

108:                                              ; preds = %107, %102
  br label %110

109:                                              ; preds = %86
  store i8* null, i8** %9, align 8
  br label %110

110:                                              ; preds = %109, %108
  br label %111

111:                                              ; preds = %110, %67
  br label %113

112:                                              ; preds = %46
  store i8* null, i8** %8, align 8
  br label %113

113:                                              ; preds = %112, %111
  %114 = load i8*, i8** %7, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %131

120:                                              ; preds = %113
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @OBJ_create(i8* %121, i8* %122, i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %10

131:                                              ; preds = %126, %118, %27, %16
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i32 @ossl_isalnum(i8 signext) #1

declare dso_local i64 @ossl_isdigit(i8 signext) #1

declare dso_local i64 @ossl_isspace(i8 signext) #1

declare dso_local i32 @OBJ_create(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
