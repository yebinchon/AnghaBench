; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_nseq.c_nseq_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_nseq.c_nseq_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@nseq_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: Error reading certs file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: Error reading sequence file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nseq_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* @nseq_options, align 4
  %19 = call i8* @opt_init(i32 %16, i8** %17, i32 %18)
  store i8* %19, i8** %15, align 8
  br label %20

20:                                               ; preds = %38, %2
  %21 = call i32 (...) @opt_next()
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 133
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %38 [
    i32 133, label %25
    i32 132, label %25
    i32 131, label %30
    i32 128, label %33
    i32 130, label %34
    i32 129, label %36
  ]

25:                                               ; preds = %23, %23
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* @bio_err, align 4
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %139

30:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* @nseq_options, align 4
  %32 = call i32 @opt_help(i32 %31)
  br label %139

33:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  br label %38

34:                                               ; preds = %23
  %35 = call i8* (...) @opt_arg()
  store i8* %35, i8** %13, align 8
  br label %38

36:                                               ; preds = %23
  %37 = call i8* (...) @opt_arg()
  store i8* %37, i8** %14, align 8
  br label %38

38:                                               ; preds = %23, %36, %34, %33
  br label %20

39:                                               ; preds = %20
  %40 = call i32 (...) @opt_num_rest()
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %26

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* @FORMAT_PEM, align 4
  %47 = call i32* @bio_open_default(i8* %45, i8 signext 114, i32 %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %139

51:                                               ; preds = %44
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* @FORMAT_PEM, align 4
  %54 = call i32* @bio_open_default(i8* %52, i8 signext 119, i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %139

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %58
  %62 = call %struct.TYPE_6__* (...) @NETSCAPE_CERT_SEQUENCE_new()
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = icmp eq %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %139

66:                                               ; preds = %61
  %67 = call i32* (...) @sk_X509_new_null()
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %139

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i32*, i32** %5, align 8
  %78 = call i32* @PEM_read_bio_X509(i32* %77, i32* null, i32* null, i32* null)
  store i32* %78, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @sk_X509_push(i32* %83, i32* %84)
  br label %76

86:                                               ; preds = %76
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @sk_X509_num(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @bio_err, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load i32, i32* @bio_err, align 4
  %98 = call i32 @ERR_print_errors(i32 %97)
  br label %139

99:                                               ; preds = %86
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = call i32 @PEM_write_bio_NETSCAPE_CERT_SEQUENCE(i32* %100, %struct.TYPE_6__* %101)
  store i32 0, i32* %11, align 4
  br label %139

103:                                              ; preds = %58
  %104 = load i32*, i32** %5, align 8
  %105 = call %struct.TYPE_6__* @PEM_read_bio_NETSCAPE_CERT_SEQUENCE(i32* %104, i32* null, i32* null, i32* null)
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %8, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = icmp eq %struct.TYPE_6__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32, i32* @bio_err, align 4
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %111)
  %113 = load i32, i32* @bio_err, align 4
  %114 = call i32 @ERR_print_errors(i32 %113)
  br label %139

115:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %135, %115
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @sk_X509_num(i32* %120)
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %116
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32* @sk_X509_value(i32* %126, i32 %127)
  store i32* %128, i32** %7, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @dump_cert_text(i32* %129, i32* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @PEM_write_bio_X509(i32* %132, i32* %133)
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %116

138:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %138, %108, %99, %92, %74, %65, %57, %50, %30, %26
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @BIO_free(i32* %140)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @BIO_free_all(i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = call i32 @NETSCAPE_CERT_SEQUENCE_free(%struct.TYPE_6__* %144)
  %146 = load i32, i32* %11, align 4
  ret i32 %146
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local %struct.TYPE_6__* @NETSCAPE_CERT_SEQUENCE_new(...) #1

declare dso_local i32* @sk_X509_new_null(...) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sk_X509_push(i32*, i32*) #1

declare dso_local i32 @sk_X509_num(i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @PEM_write_bio_NETSCAPE_CERT_SEQUENCE(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @PEM_read_bio_NETSCAPE_CERT_SEQUENCE(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @sk_X509_value(i32*, i32) #1

declare dso_local i32 @dump_cert_text(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_X509(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @NETSCAPE_CERT_SEQUENCE_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
