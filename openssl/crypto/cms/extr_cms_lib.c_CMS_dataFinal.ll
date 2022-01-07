; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_CMS_dataFinal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_lib.c_CMS_dataFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ASN1_STRING_FLAG_CONT = common dso_local global i32 0, align 4
@BIO_TYPE_MEM = common dso_local global i32 0, align 4
@CMS_F_CMS_DATAFINAL = common dso_local global i32 0, align 4
@CMS_R_CONTENT_NOT_FOUND = common dso_local global i32 0, align 4
@BIO_FLAGS_MEM_RDONLY = common dso_local global i32 0, align 4
@CMS_R_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_dataFinal(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call %struct.TYPE_10__** @CMS_get0_content(%struct.TYPE_9__* %10)
  store %struct.TYPE_10__** %11, %struct.TYPE_10__*** %6, align 8
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %13 = icmp eq %struct.TYPE_10__** %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ASN1_STRING_FLAG_CONT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @BIO_TYPE_MEM, align 4
  %30 = call i32* @BIO_find_type(i32* %28, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @CMS_F_CMS_DATAFINAL, align 4
  %35 = load i32, i32* @CMS_R_CONTENT_NOT_FOUND, align 4
  %36 = call i32 @CMSerr(i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %75

37:                                               ; preds = %27
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @BIO_get_mem_data(i32* %38, i8** %8)
  store i64 %39, i64* %9, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @BIO_FLAGS_MEM_RDONLY, align 4
  %42 = call i32 @BIO_set_flags(i32* %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @BIO_set_mem_eof_return(i32* %43, i32 0)
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @ASN1_STRING_set0(%struct.TYPE_10__* %46, i8* %47, i64 %48)
  %50 = load i32, i32* @ASN1_STRING_FLAG_CONT, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %37, %19, %15
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @OBJ_obj2nid(i32 %60)
  switch i32 %61, label %71 [
    i32 132, label %62
    i32 129, label %62
    i32 130, label %62
    i32 133, label %62
    i32 128, label %63
    i32 131, label %67
  ]

62:                                               ; preds = %57, %57, %57, %57
  store i32 1, i32* %3, align 4
  br label %75

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @cms_SignedData_final(%struct.TYPE_9__* %64, i32* %65)
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %57
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @cms_DigestedData_do_final(%struct.TYPE_9__* %68, i32* %69, i32 0)
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %57
  %72 = load i32, i32* @CMS_F_CMS_DATAFINAL, align 4
  %73 = load i32, i32* @CMS_R_UNSUPPORTED_TYPE, align 4
  %74 = call i32 @CMSerr(i32 %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %67, %63, %62, %33, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_10__** @CMS_get0_content(%struct.TYPE_9__*) #1

declare dso_local i32* @BIO_find_type(i32*, i32) #1

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @BIO_set_flags(i32*, i32) #1

declare dso_local i32 @BIO_set_mem_eof_return(i32*, i32) #1

declare dso_local i32 @ASN1_STRING_set0(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @cms_SignedData_final(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cms_DigestedData_do_final(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
