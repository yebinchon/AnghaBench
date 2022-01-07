; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_key.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }

@FORMAT_ENGINE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no keyfile specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no engine specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot load %s from engine\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_PEM = common dso_local global i32 0, align 4
@wrap_password_callback = common dso_local global i32 0, align 4
@FORMAT_PKCS12 = common dso_local global i32 0, align 4
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@FORMAT_PVK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"bad input format specified for key file\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unable to load %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_key(i8* %0, i32 %1, i32 %2, i8* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @FORMAT_ENGINE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = load i32, i32* @bio_err, align 4
  %31 = call i32 (i32, i8*, ...) @BIO_printf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %134

32:                                               ; preds = %25, %6
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @FORMAT_ENGINE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @bio_err, align 4
  %41 = call i32 (i32, i8*, ...) @BIO_printf(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %64

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @ENGINE_init(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 (...) @get_ui_method()
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32* @ENGINE_load_private_key(i32* %47, i8* %48, i32* %50, %struct.TYPE_6__* %15)
  store i32* %51, i32** %14, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ENGINE_finish(i32* %52)
  br label %54

54:                                               ; preds = %46, %42
  %55 = load i32*, i32** %14, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @bio_err, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 (i32, i8*, ...) @BIO_printf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @bio_err, align 4
  %62 = call i32 @ERR_print_errors(i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  br label %64

64:                                               ; preds = %63, %39
  br label %134

65:                                               ; preds = %32
  %66 = load i8*, i8** %7, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @stdin, align 4
  %73 = call i32 @unbuffer(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i32* @dup_bio_in(i32 %74)
  store i32* %75, i32** %13, align 8
  br label %80

76:                                               ; preds = %68, %65
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32* @bio_open_default(i8* %77, i8 signext 114, i32 %78)
  store i32* %79, i32** %13, align 8
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32*, i32** %13, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %134

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @FORMAT_ASN1, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %13, align 8
  %90 = call i32* @d2i_PrivateKey_bio(i32* %89, i32* null)
  store i32* %90, i32** %14, align 8
  br label %133

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @FORMAT_PEM, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* @wrap_password_callback, align 4
  %98 = call i32* @PEM_read_bio_PrivateKey(i32* %96, i32* null, i32 %97, %struct.TYPE_6__* %15)
  store i32* %98, i32** %14, align 8
  br label %132

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @FORMAT_PKCS12, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* @wrap_password_callback, align 4
  %107 = call i32 @load_pkcs12(i32* %104, i8* %105, i32 %106, %struct.TYPE_6__* %15, i32** %14, i32* null, i32* null)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %134

110:                                              ; preds = %103
  br label %131

111:                                              ; preds = %99
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @FORMAT_MSBLOB, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32*, i32** %13, align 8
  %117 = call i32* @b2i_PrivateKey_bio(i32* %116)
  store i32* %117, i32** %14, align 8
  br label %130

118:                                              ; preds = %111
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @FORMAT_PVK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* @wrap_password_callback, align 4
  %125 = call i32* @b2i_PVK_bio(i32* %123, i32 %124, %struct.TYPE_6__* %15)
  store i32* %125, i32** %14, align 8
  br label %129

126:                                              ; preds = %118
  %127 = load i32, i32* @bio_err, align 4
  %128 = call i32 (i32, i8*, ...) @BIO_printf(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %134

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130, %110
  br label %132

132:                                              ; preds = %131, %95
  br label %133

133:                                              ; preds = %132, %88
  br label %134

134:                                              ; preds = %133, %126, %109, %83, %64, %29
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @BIO_free(i32* %135)
  %137 = load i32*, i32** %14, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* @bio_err, align 4
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 (i32, i8*, ...) @BIO_printf(i32 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* @bio_err, align 4
  %144 = call i32 @ERR_print_errors(i32 %143)
  br label %145

145:                                              ; preds = %139, %134
  %146 = load i32*, i32** %14, align 8
  ret i32* %146
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i64 @ENGINE_init(i32*) #1

declare dso_local i32* @ENGINE_load_private_key(i32*, i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @get_ui_method(...) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @unbuffer(i32) #1

declare dso_local i32* @dup_bio_in(i32) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_PrivateKey_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @load_pkcs12(i32*, i8*, i32, %struct.TYPE_6__*, i32**, i32*, i32*) #1

declare dso_local i32* @b2i_PrivateKey_bio(i32*) #1

declare dso_local i32* @b2i_PVK_bio(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
