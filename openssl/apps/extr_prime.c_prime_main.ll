; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_prime.c_prime_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_prime.c_prime_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prime_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: No prime specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Specify the number of bits.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to generate prime.\0A\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to process value (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" (%s) %s prime\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"is not\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prime_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* @prime_options, align 4
  %18 = call i8* @opt_init(i32 %15, i8** %16, i32 %17)
  store i8* %18, i8** %11, align 8
  br label %19

19:                                               ; preds = %40, %2
  %20 = call i32 (...) @opt_next()
  store i32 %20, i32* %12, align 4
  %21 = icmp ne i32 %20, 133
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %40 [
    i32 133, label %24
    i32 132, label %24
    i32 130, label %29
    i32 129, label %32
    i32 131, label %33
    i32 135, label %34
    i32 128, label %37
    i32 134, label %38
  ]

24:                                               ; preds = %22, %22
  br label %25

25:                                               ; preds = %56, %49, %24
  %26 = load i32, i32* @bio_err, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 (i32, i8*, ...) @BIO_printf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %154

29:                                               ; preds = %22
  %30 = load i32, i32* @prime_options, align 4
  %31 = call i32 @opt_help(i32 %30)
  store i32 0, i32* %10, align 4
  br label %154

32:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %40

33:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %40

34:                                               ; preds = %22
  %35 = call i32 (...) @opt_arg()
  %36 = call i32 @atoi(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %40

38:                                               ; preds = %22
  %39 = call i32 (...) @opt_arg()
  br label %40

40:                                               ; preds = %22, %38, %37, %34, %33, %32
  br label %19

41:                                               ; preds = %19
  %42 = call i32 (...) @opt_num_rest()
  store i32 %42, i32* %3, align 4
  %43 = call i8** (...) @opt_rest()
  store i8** %43, i8*** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @bio_err, align 4
  %51 = call i32 (i32, i8*, ...) @BIO_printf(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %25

52:                                               ; preds = %46
  br label %61

53:                                               ; preds = %41
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @bio_err, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i32, i8*, ...) @BIO_printf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %25

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @bio_err, align 4
  %69 = call i32 (i32, i8*, ...) @BIO_printf(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %154

70:                                               ; preds = %64
  %71 = call i32* (...) @BN_new()
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @bio_err, align 4
  %76 = call i32 (i32, i8*, ...) @BIO_printf(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %154

77:                                               ; preds = %70
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @BN_generate_prime_ex(i32* %78, i32 %79, i32 %80, i32* null, i32* null, i32* null)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @bio_err, align 4
  %85 = call i32 (i32, i8*, ...) @BIO_printf(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %154

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = call i8* @BN_bn2hex(i32* %90)
  br label %95

92:                                               ; preds = %86
  %93 = load i32*, i32** %5, align 8
  %94 = call i8* @BN_bn2dec(i32* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i8* [ %91, %89 ], [ %94, %92 ]
  store i8* %96, i8** %13, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @bio_err, align 4
  %101 = call i32 (i32, i8*, ...) @BIO_printf(i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %154

102:                                              ; preds = %95
  %103 = load i32, i32* @bio_out, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 (i32, i8*, ...) @BIO_printf(i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @OPENSSL_free(i8* %106)
  br label %153

108:                                              ; preds = %61
  br label %109

109:                                              ; preds = %149, %108
  %110 = load i8**, i8*** %4, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %152

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @BN_hex2bn(i32** %5, i8* %119)
  store i32 %120, i32* %14, align 4
  br label %126

121:                                              ; preds = %113
  %122 = load i8**, i8*** %4, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @BN_dec2bn(i32** %5, i8* %124)
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @bio_err, align 4
  %131 = load i8**, i8*** %4, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, ...) @BIO_printf(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %133)
  br label %154

135:                                              ; preds = %126
  %136 = load i32, i32* @bio_out, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @BN_print(i32 %136, i32* %137)
  %139 = load i32, i32* @bio_out, align 4
  %140 = load i8**, i8*** %4, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = call i64 @BN_check_prime(i32* %143, i32* null, i32* null)
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %148 = call i32 (i32, i8*, ...) @BIO_printf(i32 %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %142, i8* %147)
  br label %149

149:                                              ; preds = %135
  %150 = load i8**, i8*** %4, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i32 1
  store i8** %151, i8*** %4, align 8
  br label %109

152:                                              ; preds = %109
  br label %153

153:                                              ; preds = %152, %102
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %153, %129, %99, %83, %74, %67, %29, %25
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @BN_free(i32* %155)
  %157 = load i32, i32* %10, align 4
  ret i32 %157
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @opt_arg(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @BN_bn2hex(i32*) #1

declare dso_local i8* @BN_bn2dec(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BN_dec2bn(i32**, i8*) #1

declare dso_local i32 @BN_print(i32, i32*) #1

declare dso_local i64 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
