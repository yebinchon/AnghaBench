; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_encrypt_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_encrypt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_expect = type { i64 }

@VARHDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*, i32*, i32*)* @encrypt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encrypt_internal(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.debug_expect, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load i32, i32* @VARHDRSZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  store i32* null, i32** %21, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @init_work(i32** %18, i32 %27, i32* %28, %struct.debug_expect* %20)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %5
  %33 = load i32*, i32** %18, align 8
  %34 = call i64 @pgp_get_unicode_mode(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @convert_to_utf8(i32* %37)
  store i32* %38, i32** %21, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32* null, i32** %21, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i32*, i32** %21, align 8
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %43, %42
  br label %46

46:                                               ; preds = %45, %32, %5
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @create_mbuf_from_vardata(i32* %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @VARSIZE_ANY(i32* %49)
  %51 = add nsw i64 %50, 128
  %52 = call i32* @mbuf_create(i64 %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @VARHDRSZ, align 4
  %55 = call i32 @mbuf_append(i32* %53, i32* %26, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load i32*, i32** %9, align 8
  %60 = call i32* @create_mbuf_from_vardata(i32* %59)
  store i32* %60, i32** %22, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = call i32 @pgp_set_pubkey(i32* %61, i32* %62, i32* null, i32 0, i32 0)
  store i32 %63, i32* %19, align 4
  %64 = load i32*, i32** %22, align 8
  %65 = call i32 @mbuf_free(i32* %64)
  br label %74

66:                                               ; preds = %46
  %67 = load i32*, i32** %18, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @VARDATA_ANY(i32* %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @VARSIZE_ANY_EXHDR(i32* %71)
  %73 = call i32 @pgp_set_symkey(i32* %67, i32* %70, i32 %72)
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i32, i32* %19, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %18, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @pgp_encrypt(i32* %78, i32* %79, i32* %80)
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %20, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @px_set_debug_handler(i32* null)
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i32*, i32** %21, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %21, align 8
  %96 = call i32 @clear_and_pfree(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @pgp_free(i32* %98)
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @mbuf_free(i32* %100)
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @mbuf_free(i32* %102)
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @px_THROW_ERROR(i32 %104)
  br label %106

106:                                              ; preds = %97, %82
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @mbuf_steal_data(i32* %107, i32** %15)
  store i32 %108, i32* %17, align 4
  %109 = load i32*, i32** %15, align 8
  store i32* %109, i32** %16, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @SET_VARSIZE(i32* %110, i32 %111)
  %113 = load i32*, i32** %21, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32*, i32** %21, align 8
  %117 = call i32 @clear_and_pfree(i32* %116)
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32*, i32** %18, align 8
  %120 = call i32 @pgp_free(i32* %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @mbuf_free(i32* %121)
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @mbuf_free(i32* %123)
  %125 = call i32 @px_set_debug_handler(i32* null)
  %126 = load i32*, i32** %16, align 8
  %127 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %127)
  ret i32* %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @init_work(i32**, i32, i32*, %struct.debug_expect*) #2

declare dso_local i64 @pgp_get_unicode_mode(i32*) #2

declare dso_local i32* @convert_to_utf8(i32*) #2

declare dso_local i32* @create_mbuf_from_vardata(i32*) #2

declare dso_local i32* @mbuf_create(i64) #2

declare dso_local i64 @VARSIZE_ANY(i32*) #2

declare dso_local i32 @mbuf_append(i32*, i32*, i32) #2

declare dso_local i32 @pgp_set_pubkey(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @mbuf_free(i32*) #2

declare dso_local i32 @pgp_set_symkey(i32*, i32*, i32) #2

declare dso_local i64 @VARDATA_ANY(i32*) #2

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #2

declare dso_local i32 @pgp_encrypt(i32*, i32*, i32*) #2

declare dso_local i32 @px_set_debug_handler(i32*) #2

declare dso_local i32 @clear_and_pfree(i32*) #2

declare dso_local i32 @pgp_free(i32*) #2

declare dso_local i32 @px_THROW_ERROR(i32) #2

declare dso_local i32 @mbuf_steal_data(i32*, i32**) #2

declare dso_local i32 @SET_VARSIZE(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
