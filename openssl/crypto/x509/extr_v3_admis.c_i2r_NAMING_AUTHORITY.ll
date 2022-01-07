; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_admis.c_i2r_NAMING_AUTHORITY.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_admis.c_i2r_NAMING_AUTHORITY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3_ext_method = type { i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"%*snamingAuthority: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%*s  admissionAuthorityId: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s%s%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%*s  namingAuthorityText: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%*s  namingAuthorityUrl: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3_ext_method*, i8*, i32*, i32)* @i2r_NAMING_AUTHORITY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2r_NAMING_AUTHORITY(%struct.v3_ext_method* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v3_ext_method*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i8*, align 8
  store %struct.v3_ext_method* %0, %struct.v3_ext_method** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %131

18:                                               ; preds = %4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %131

34:                                               ; preds = %28, %23, %18
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %130

40:                                               ; preds = %34
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %83

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @OBJ_obj2nid(i32* %48)
  %50 = call i8* @OBJ_nid2ln(i32 %49)
  store i8* %50, i8** %12, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %130

56:                                               ; preds = %45
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @OBJ_obj2txt(i8* %57, i32 128, i32* %60, i32 1)
  %62 = load i32*, i32** %8, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i8*, i8** %12, align 8
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %79 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %69, i8* %73, i8* %74, i8* %78)
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %130

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %40
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @ASN1_STRING_print(i32* %94, i32* %97)
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %93
  %101 = load i32*, i32** %8, align 8
  %102 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp sle i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %93, %88
  br label %130

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %83
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i64 @ASN1_STRING_print(i32* %117, i32* %120)
  %122 = icmp sle i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = load i32*, i32** %8, align 8
  %125 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %126 = icmp sle i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %116, %111
  br label %130

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %106
  store i32 1, i32* %5, align 4
  br label %131

130:                                              ; preds = %127, %104, %81, %55, %39
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %129, %33, %17
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i8* @OBJ_nid2ln(i32) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @OBJ_obj2txt(i8*, i32, i32*, i32) #1

declare dso_local i64 @ASN1_STRING_print(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
