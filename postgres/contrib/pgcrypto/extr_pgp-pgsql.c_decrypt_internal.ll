; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_decrypt_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_decrypt_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_expect = type { i64 }

@VARHDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*, i32*, i32*, i32*)* @decrypt_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decrypt_internal(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.debug_expect, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %28 = load i32, i32* @VARHDRSZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  store i32* null, i32** %21, align 8
  store i32 0, i32* %23, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @init_work(i32** %21, i32 %32, i32* %33, %struct.debug_expect* %22)
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @VARDATA_ANY(i32* %35)
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @VARSIZE_ANY_EXHDR(i32* %38)
  %40 = call i32* @mbuf_create_from_data(i32* %37, i32 %39)
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @VARSIZE_ANY(i32* %41)
  %43 = add nsw i64 %42, 2048
  %44 = call i32* @mbuf_create(i64 %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* @VARHDRSZ, align 4
  %47 = call i32 @mbuf_append(i32* %45, i32* %31, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %6
  store i32* null, i32** %24, align 8
  store i32 0, i32* %25, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @VARDATA_ANY(i32* %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %24, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @VARSIZE_ANY_EXHDR(i32* %57)
  store i32 %58, i32* %25, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @create_mbuf_from_vardata(i32* %60)
  store i32* %61, i32** %26, align 8
  %62 = load i32*, i32** %21, align 8
  %63 = load i32*, i32** %26, align 8
  %64 = load i32*, i32** %24, align 8
  %65 = load i32, i32* %25, align 4
  %66 = call i32 @pgp_set_pubkey(i32* %62, i32* %63, i32* %64, i32 %65, i32 1)
  store i32 %66, i32* %13, align 4
  %67 = load i32*, i32** %26, align 8
  %68 = call i32 @mbuf_free(i32* %67)
  br label %77

69:                                               ; preds = %6
  %70 = load i32*, i32** %21, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i64 @VARDATA_ANY(i32* %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @VARSIZE_ANY_EXHDR(i32* %74)
  %76 = call i32 @pgp_set_symkey(i32* %70, i32* %73, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %69, %59
  %78 = load i32, i32* %13, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32*, i32** %21, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @pgp_decrypt(i32* %81, i32* %82, i32* %83)
  store i32 %84, i32* %13, align 4
  %85 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %22, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @check_expect(i32* %89, %struct.debug_expect* %22)
  br label %91

91:                                               ; preds = %88, %80
  %92 = load i32*, i32** %21, align 8
  %93 = call i32 @pgp_get_unicode_mode(i32* %92)
  store i32 %93, i32* %23, align 4
  br label %94

94:                                               ; preds = %91, %77
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @mbuf_free(i32* %95)
  %97 = load i32*, i32** %21, align 8
  %98 = call i32 @pgp_free(i32* %97)
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = call i32 @px_set_debug_handler(i32* null)
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @mbuf_free(i32* %103)
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @px_THROW_ERROR(i32 %105)
  br label %107

107:                                              ; preds = %101, %94
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @mbuf_steal_data(i32* %108, i32** %18)
  store i32 %109, i32* %20, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @mbuf_free(i32* %110)
  %112 = load i32*, i32** %18, align 8
  store i32* %112, i32** %19, align 8
  %113 = load i32*, i32** %19, align 8
  %114 = load i32, i32* %20, align 4
  %115 = call i32 @SET_VARSIZE(i32* %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %107
  %119 = load i32, i32* %23, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i32*, i32** %19, align 8
  %123 = call i32* @convert_from_utf8(i32* %122)
  store i32* %123, i32** %27, align 8
  %124 = load i32*, i32** %27, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = icmp ne i32* %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32*, i32** %19, align 8
  %129 = call i32 @clear_and_pfree(i32* %128)
  %130 = load i32*, i32** %27, align 8
  store i32* %130, i32** %19, align 8
  br label %131

131:                                              ; preds = %127, %121
  br label %132

132:                                              ; preds = %131, %118, %107
  %133 = call i32 @px_set_debug_handler(i32* null)
  %134 = load i32*, i32** %19, align 8
  %135 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32* %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @init_work(i32**, i32, i32*, %struct.debug_expect*) #2

declare dso_local i32* @mbuf_create_from_data(i32*, i32) #2

declare dso_local i64 @VARDATA_ANY(i32*) #2

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #2

declare dso_local i32* @mbuf_create(i64) #2

declare dso_local i64 @VARSIZE_ANY(i32*) #2

declare dso_local i32 @mbuf_append(i32*, i32*, i32) #2

declare dso_local i32* @create_mbuf_from_vardata(i32*) #2

declare dso_local i32 @pgp_set_pubkey(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @mbuf_free(i32*) #2

declare dso_local i32 @pgp_set_symkey(i32*, i32*, i32) #2

declare dso_local i32 @pgp_decrypt(i32*, i32*, i32*) #2

declare dso_local i32 @check_expect(i32*, %struct.debug_expect*) #2

declare dso_local i32 @pgp_get_unicode_mode(i32*) #2

declare dso_local i32 @pgp_free(i32*) #2

declare dso_local i32 @px_set_debug_handler(i32*) #2

declare dso_local i32 @px_THROW_ERROR(i32) #2

declare dso_local i32 @mbuf_steal_data(i32*, i32**) #2

declare dso_local i32 @SET_VARSIZE(i32*, i32) #2

declare dso_local i32* @convert_from_utf8(i32*) #2

declare dso_local i32 @clear_and_pfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
