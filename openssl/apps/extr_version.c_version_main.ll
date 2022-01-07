; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_version.c_version_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_version.c_version_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@version_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Extra parameters given.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s (Library: %s)\0A\00", align 1
@OPENSSL_VERSION_TEXT = common dso_local global i8* null, align 8
@OPENSSL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@OPENSSL_BUILT_ON = common dso_local global i32 0, align 4
@OPENSSL_PLATFORM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"options: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OPENSSL_CFLAGS = common dso_local global i32 0, align 4
@OPENSSL_DIR = common dso_local global i32 0, align 4
@OPENSSL_ENGINES_DIR = common dso_local global i32 0, align 4
@OPENSSL_MODULES_DIR = common dso_local global i32 0, align 4
@OPENSSL_INFO_SEED_SOURCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Seeding source: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@OPENSSL_CPU_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @version_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* @version_options, align 4
  %23 = call i8* @opt_init(i32 %20, i8** %21, i32 %22)
  store i8* %23, i8** %17, align 8
  br label %24

24:                                               ; preds = %48, %2
  %25 = call i32 (...) @opt_next()
  store i32 %25, i32* %18, align 4
  %26 = icmp ne i32 %25, 136
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* %18, align 4
  switch i32 %28, label %48 [
    i32 136, label %29
    i32 135, label %29
    i32 133, label %34
    i32 140, label %37
    i32 138, label %38
    i32 137, label %39
    i32 132, label %40
    i32 134, label %41
    i32 131, label %42
    i32 130, label %43
    i32 129, label %44
    i32 128, label %45
    i32 139, label %46
    i32 141, label %47
  ]

29:                                               ; preds = %27, %27
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, i32* @bio_err, align 4
  %32 = load i8*, i8** %17, align 8
  %33 = call i32 (i32, i8*, ...) @BIO_printf(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %149

34:                                               ; preds = %27
  %35 = load i32, i32* @version_options, align 4
  %36 = call i32 @opt_help(i32 %35)
  store i32 0, i32* %5, align 4
  br label %149

37:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  store i32 1, i32* %6, align 4
  br label %48

38:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  store i32 1, i32* %6, align 4
  br label %48

39:                                               ; preds = %27
  store i32 1, i32* %14, align 4
  store i32 1, i32* %6, align 4
  br label %48

40:                                               ; preds = %27
  store i32 1, i32* %15, align 4
  store i32 1, i32* %6, align 4
  br label %48

41:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %48

42:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  store i32 1, i32* %6, align 4
  br label %48

43:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  store i32 1, i32* %6, align 4
  br label %48

44:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %48

45:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %48

46:                                               ; preds = %27
  store i32 1, i32* %16, align 4
  store i32 1, i32* %6, align 4
  br label %48

47:                                               ; preds = %27
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %27, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37
  br label %24

49:                                               ; preds = %24
  %50 = call i64 (...) @opt_num_rest()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @bio_err, align 4
  %54 = call i32 (i32, i8*, ...) @BIO_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %30

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** @OPENSSL_VERSION_TEXT, align 8
  %64 = load i32, i32* @OPENSSL_VERSION, align 4
  %65 = call i8* @OpenSSL_version(i32 %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @OPENSSL_BUILT_ON, align 4
  %72 = call i8* @OpenSSL_version(i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @OPENSSL_PLATFORM, align 4
  %79 = call i8* @OpenSSL_version(i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i8* (...) @BN_options()
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  %88 = call i8* (...) @MD2_options()
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = call i8* (...) @RC4_options()
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  %92 = call i8* (...) @DES_options()
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  %94 = call i8* (...) @IDEA_options()
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  %96 = call i8* (...) @BF_options()
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %84, %81
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @OPENSSL_CFLAGS, align 4
  %104 = call i8* @OpenSSL_version(i32 %103)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @OPENSSL_DIR, align 4
  %111 = call i8* @OpenSSL_version(i32 %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* @OPENSSL_ENGINES_DIR, align 4
  %118 = call i8* @OpenSSL_version(i32 %117)
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* @OPENSSL_MODULES_DIR, align 4
  %125 = call i8* @OpenSSL_version(i32 %124)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32, i32* @OPENSSL_INFO_SEED_SOURCE, align 4
  %132 = call i8* @OPENSSL_info(i32 %131)
  store i8* %132, i8** %19, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i8*, i8** %19, align 8
  br label %138

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i8* [ %136, %135 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %137 ]
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %127
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* @OPENSSL_CPU_INFO, align 4
  %146 = call i8* @OpenSSL_version(i32 %145)
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %144, %141
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %148, %34, %30
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i64 @opt_num_rest(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @OpenSSL_version(i32) #1

declare dso_local i8* @BN_options(...) #1

declare dso_local i8* @MD2_options(...) #1

declare dso_local i8* @RC4_options(...) #1

declare dso_local i8* @DES_options(...) #1

declare dso_local i8* @IDEA_options(...) #1

declare dso_local i8* @BF_options(...) #1

declare dso_local i8* @OPENSSL_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
