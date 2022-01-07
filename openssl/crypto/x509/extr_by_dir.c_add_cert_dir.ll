; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_by_dir.c_add_cert_dir.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_by_dir.c_add_cert_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32*, i32* }

@X509_F_ADD_CERT_DIR = common dso_local global i32 0, align 4
@X509_R_INVALID_DIRECTORY = common dso_local global i32 0, align 4
@LIST_SEPARATOR_CHAR = common dso_local global i8 0, align 1
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@by_dir_hash_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @add_cert_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cert_dir(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %23 = load i32, i32* @X509_R_INVALID_DIRECTORY, align 4
  %24 = call i32 @X509err(i32 %22, i32 %23)
  store i32 0, i32* %4, align 4
  br label %166

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %12, align 8
  br label %28

28:                                               ; preds = %159, %25
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @LIST_SEPARATOR_CHAR, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %158

40:                                               ; preds = %35, %28
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %159

52:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %82, %52
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @sk_BY_DIR_ENTRY_num(i32* %57)
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call %struct.TYPE_8__* @sk_BY_DIR_ENTRY_value(i32* %63, i32 %64)
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %13, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @strlen(i32* %68)
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %60
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @strncmp(i32* %75, i8* %76, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %85

81:                                               ; preds = %72, %60
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %53

85:                                               ; preds = %80, %53
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @sk_BY_DIR_ENTRY_num(i32* %89)
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %159

93:                                               ; preds = %85
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = call i32* (...) @sk_BY_DIR_ENTRY_new_null()
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %108 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %109 = call i32 @X509err(i32 %107, i32 %108)
  store i32 0, i32* %4, align 4
  br label %166

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %93
  %112 = call %struct.TYPE_8__* @OPENSSL_malloc(i32 24)
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %13, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %114 = icmp eq %struct.TYPE_8__* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %117 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %118 = call i32 @X509err(i32 %116, i32 %117)
  store i32 0, i32* %4, align 4
  br label %166

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @by_dir_hash_cmp, align 4
  %124 = call i32* @sk_BY_DIR_HASH_new(i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32* @OPENSSL_strndup(i8* %127, i64 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %119
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136, %119
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %143 = call i32 @by_dir_entry_free(%struct.TYPE_8__* %142)
  store i32 0, i32* %4, align 4
  br label %166

144:                                              ; preds = %136
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %149 = call i32 @sk_BY_DIR_ENTRY_push(i32* %147, %struct.TYPE_8__* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %144
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %153 = call i32 @by_dir_entry_free(%struct.TYPE_8__* %152)
  %154 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %155 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %156 = call i32 @X509err(i32 %154, i32 %155)
  store i32 0, i32* %4, align 4
  br label %166

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %35
  br label %159

159:                                              ; preds = %158, %92, %51
  %160 = load i8*, i8** %12, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %12, align 8
  %162 = load i8, i8* %160, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %28, label %165

165:                                              ; preds = %159
  store i32 1, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %151, %141, %115, %106, %21
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @sk_BY_DIR_ENTRY_num(i32*) #1

declare dso_local %struct.TYPE_8__* @sk_BY_DIR_ENTRY_value(i32*, i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local i32* @sk_BY_DIR_ENTRY_new_null(...) #1

declare dso_local %struct.TYPE_8__* @OPENSSL_malloc(i32) #1

declare dso_local i32* @sk_BY_DIR_HASH_new(i32) #1

declare dso_local i32* @OPENSSL_strndup(i8*, i64) #1

declare dso_local i32 @by_dir_entry_free(%struct.TYPE_8__*) #1

declare dso_local i32 @sk_BY_DIR_ENTRY_push(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
