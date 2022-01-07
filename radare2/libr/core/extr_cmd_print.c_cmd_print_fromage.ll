; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_print_fromage.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_print_fromage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Malformed object: did you supply enough data?\0Atry to change the block size (see b?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@help_msg_pF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i32)* @cmd_print_fromage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_print_fromage(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %118 [
    i32 97, label %20
    i32 120, label %50
    i32 112, label %78
    i32 98, label %100
    i32 63, label %119
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 113
  %26 = zext i1 %25 to i32
  %27 = call i32 @asn1_setformat(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @r_asn1_create_object(i32* %28, i32 %29, i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = load i32*, i32** %9, align 8
  %36 = call i8* @r_asn1_to_string(i32* %35, i32 0, i32* null)
  store i8* %36, i8** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @r_asn1_free_object(i32* %37)
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @r_cons_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %41, %34
  br label %49

47:                                               ; preds = %20
  %48 = call i32 @eprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %46
  br label %123

50:                                               ; preds = %4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32* @r_asn1_create_object(i32* %51, i32 %52, i32* %53)
  %55 = call i32* @r_x509_parse_certificate(i32* %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  %59 = call i32* @r_strbuf_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @r_x509_certificate_dump(i32* %60, i32* null, i32* %61)
  %63 = load i32*, i32** %12, align 8
  %64 = call i8* @r_strbuf_drain(i32* %63)
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @r_cons_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @free(i8* %70)
  br label %72

72:                                               ; preds = %67, %58
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @r_x509_free_certificate(i32* %73)
  br label %77

75:                                               ; preds = %50
  %76 = call i32 @eprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  br label %123

78:                                               ; preds = %4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32* @r_pkcs7_parse_cms(i32* %79, i32 %80)
  store i32* %81, i32** %14, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i32*, i32** %14, align 8
  %86 = call i8* @r_pkcs7_cms_to_string(i32* %85)
  store i8* %86, i8** %15, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @r_cons_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %90)
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @free(i8* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @r_pkcs7_free_cms(i32* %95)
  br label %99

97:                                               ; preds = %78
  %98 = call i32 @eprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  br label %123

100:                                              ; preds = %4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 118
  %108 = zext i1 %107 to i32
  %109 = call i8* @r_protobuf_decode(i32* %101, i32 %102, i32 %108)
  store i8* %109, i8** %16, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 @r_cons_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  %115 = load i8*, i8** %16, align 8
  %116 = call i32 @free(i8* %115)
  br label %117

117:                                              ; preds = %112, %100
  br label %123

118:                                              ; preds = %4
  br label %119

119:                                              ; preds = %4, %118
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @help_msg_pF, align 4
  %122 = call i32 @r_core_cmd_help(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %117, %99, %77, %49
  ret void
}

declare dso_local i32 @asn1_setformat(i32) #1

declare dso_local i32* @r_asn1_create_object(i32*, i32, i32*) #1

declare dso_local i8* @r_asn1_to_string(i32*, i32, i32*) #1

declare dso_local i32 @r_asn1_free_object(i32*) #1

declare dso_local i32 @r_cons_printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32* @r_x509_parse_certificate(i32*) #1

declare dso_local i32* @r_strbuf_new(i8*) #1

declare dso_local i32 @r_x509_certificate_dump(i32*, i32*, i32*) #1

declare dso_local i8* @r_strbuf_drain(i32*) #1

declare dso_local i32 @r_x509_free_certificate(i32*) #1

declare dso_local i32* @r_pkcs7_parse_cms(i32*, i32) #1

declare dso_local i8* @r_pkcs7_cms_to_string(i32*) #1

declare dso_local i32 @r_pkcs7_free_cms(i32*) #1

declare dso_local i8* @r_protobuf_decode(i32*, i32, i32) #1

declare dso_local i32 @r_core_cmd_help(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
