; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_run_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_v3nametest.c_run_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_name_fn = type { i64, i64 }

@names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@X509_CHECK_FLAG_NO_WILDCARDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"host-no-wildcards\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.set_name_fn*)* @run_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cert(i32* %0, i8* %1, %struct.set_name_fn* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.set_name_fn*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.set_name_fn* %2, %struct.set_name_fn** %6, align 8
  %14 = load i8**, i8*** @names, align 8
  store i8** %14, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %170, %3
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %173

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcasecmp(i8* %20, i8* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i8* @OPENSSL_malloc(i64 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @memcpy(i8* %31, i8* %33, i64 %34)
  store i32 -1, i32* %12, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @X509_check_host(i32* %36, i8* %37, i64 %38, i32 0, i32* null)
  store i32 %39, i32* %13, align 4
  %40 = call i32 @TEST_int_ge(i32 %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %69

43:                                               ; preds = %19
  %44 = load %struct.set_name_fn*, %struct.set_name_fn** %6, align 8
  %45 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %51, %48
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %58, %55
  br label %68

63:                                               ; preds = %43
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68, %42
  %70 = load %struct.set_name_fn*, %struct.set_name_fn** %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i8**, i8*** %7, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @check_message(%struct.set_name_fn* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72, i8* %74)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  store i32 1, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %69
  store i32 -1, i32* %12, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @X509_CHECK_FLAG_NO_WILDCARDS, align 4
  %84 = call i32 @X509_check_host(i32* %80, i8* %81, i64 %82, i32 %83, i32* null)
  store i32 %84, i32* %13, align 4
  %85 = call i32 @TEST_int_ge(i32 %84, i32 0)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 1, i32* %8, align 4
  br label %114

88:                                               ; preds = %79
  %89 = load %struct.set_name_fn*, %struct.set_name_fn** %6, align 8
  %90 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %96, %93
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %103, %100
  br label %113

108:                                              ; preds = %88
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 1, i32* %12, align 4
  br label %112

112:                                              ; preds = %111, %108
  br label %113

113:                                              ; preds = %112, %107
  br label %114

114:                                              ; preds = %113, %87
  %115 = load %struct.set_name_fn*, %struct.set_name_fn** %6, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i8**, i8*** %7, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @check_message(%struct.set_name_fn* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %117, i8* %119)
  %121 = call i32 @TEST_true(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  store i32 1, i32* %8, align 4
  br label %124

124:                                              ; preds = %123, %114
  store i32 -1, i32* %12, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @X509_check_email(i32* %125, i8* %126, i64 %127, i32 0)
  store i32 %128, i32* %13, align 4
  %129 = load %struct.set_name_fn*, %struct.set_name_fn** %6, align 8
  %130 = getelementptr inbounds %struct.set_name_fn, %struct.set_name_fn* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %124
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i32 1, i32* %12, align 4
  br label %140

140:                                              ; preds = %139, %136, %133
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i8*, i8** %5, align 8
  %148 = call i32* @strchr(i8* %147, i8 signext 64)
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %150, %146, %143, %140
  br label %157

152:                                              ; preds = %124
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 1, i32* %12, align 4
  br label %156

156:                                              ; preds = %155, %152
  br label %157

157:                                              ; preds = %156, %151
  %158 = load %struct.set_name_fn*, %struct.set_name_fn** %6, align 8
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i8**, i8*** %7, align 8
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @check_message(%struct.set_name_fn* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %159, i32 %160, i8* %162)
  %164 = call i32 @TEST_true(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %157
  store i32 1, i32* %8, align 4
  br label %167

167:                                              ; preds = %166, %157
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @OPENSSL_free(i8* %168)
  br label %170

170:                                              ; preds = %167
  %171 = load i8**, i8*** %7, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %7, align 8
  br label %15

173:                                              ; preds = %15
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  ret i32 %176
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @TEST_int_ge(i32, i32) #1

declare dso_local i32 @X509_check_host(i32*, i8*, i64, i32, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @check_message(%struct.set_name_fn*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @X509_check_email(i32*, i8*, i64, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
