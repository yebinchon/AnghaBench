; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_parse_name.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [151 x i8] c"name is expected to be in the format /type0=value0/type1=value1/type2=... where characters may be escaped by \\. This name is not in that format: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Error copying name input\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: Hit end of string before finding the '='\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: escape character at end of string\0A\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: Skipping unknown attribute \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"%s: No value provided for Subject Attribute %s, skipped\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s: Error adding name attribute \22/%s=%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_name(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @bio_err, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %5, align 8
  %25 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %22, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32* null, i32** %4, align 8
  br label %196

26:                                               ; preds = %3
  %27 = call i32* (...) @X509_NAME_new()
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %196

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @OPENSSL_strdup(i8* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 (...) @opt_getprog()
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %191

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %186, %158, %146, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %187

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  store i8* %49, i8** %12, align 8
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %63, %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 61
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  %66 = load i8, i8* %64, align 1
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  store i8 %66, i8* %67, align 1
  br label %51

69:                                               ; preds = %61
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @bio_err, align 4
  %76 = call i32 (...) @opt_getprog()
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  br label %191

80:                                               ; preds = %69
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %11, align 8
  store i8 0, i8* %81, align 1
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %11, align 8
  store i8* %85, i8** %13, align 8
  br label %86

86:                                               ; preds = %125, %80
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 47
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi i1 [ false, %86 ], [ %95, %91 ]
  br i1 %97, label %98, label %131

98:                                               ; preds = %96
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 43
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %8, align 4
  br label %131

107:                                              ; preds = %101, %98
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 92
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i32, i32* @bio_err, align 4
  %120 = call i32 (...) @opt_getprog()
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %122)
  br label %191

124:                                              ; preds = %112, %107
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  %128 = load i8, i8* %126, align 1
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %11, align 8
  store i8 %128, i8* %129, align 1
  br label %86

131:                                              ; preds = %106, %96
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %11, align 8
  store i8 0, i8* %132, align 1
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  br label %140

140:                                              ; preds = %137, %131
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @OBJ_txt2nid(i8* %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @NID_undef, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i32, i32* @bio_err, align 4
  %148 = call i32 (...) @opt_getprog()
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %150, i8* %151)
  br label %43

153:                                              ; preds = %140
  %154 = load i8*, i8** %13, align 8
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32, i32* @bio_err, align 4
  %160 = call i32 (...) @opt_getprog()
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load i8*, i8** %12, align 8
  %164 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %159, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %162, i8* %163)
  br label %43

165:                                              ; preds = %153
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load i64, i64* %6, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 -1, i32 0
  %176 = call i32 @X509_NAME_add_entry_by_NID(i32* %166, i32 %167, i64 %168, i8* %169, i32 %171, i32 -1, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %165
  %179 = load i32, i32* @bio_err, align 4
  %180 = call i32 (...) @opt_getprog()
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load i8*, i8** %12, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = call i32 (i32, i8*, i8*, ...) @BIO_printf(i32 %179, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %182, i8* %183, i8* %184)
  br label %191

186:                                              ; preds = %165
  br label %43

187:                                              ; preds = %43
  %188 = load i8*, i8** %9, align 8
  %189 = call i32 @OPENSSL_free(i8* %188)
  %190 = load i32*, i32** %10, align 8
  store i32* %190, i32** %4, align 8
  br label %196

191:                                              ; preds = %178, %118, %74, %36
  %192 = load i32*, i32** %10, align 8
  %193 = call i32 @X509_NAME_free(i32* %192)
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @OPENSSL_free(i8* %194)
  store i32* null, i32** %4, align 8
  br label %196

196:                                              ; preds = %191, %187, %30, %21
  %197 = load i32*, i32** %4, align 8
  ret i32* %197
}

declare dso_local i32 @BIO_printf(i32, i8*, i8*, ...) #1

declare dso_local i32* @X509_NAME_new(...) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @opt_getprog(...) #1

declare dso_local i32 @OBJ_txt2nid(i8*) #1

declare dso_local i32 @X509_NAME_add_entry_by_NID(i32*, i32, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @X509_NAME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
