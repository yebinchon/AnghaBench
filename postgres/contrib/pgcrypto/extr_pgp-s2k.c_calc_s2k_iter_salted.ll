; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_calc_s2k_iter_salted.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-s2k.c_calc_s2k_iter_salted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32 }

@PGP_MAX_DIGEST = common dso_local global i32 0, align 4
@PGP_S2K_SALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32)* @calc_s2k_iter_salted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_s2k_iter_salted(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @PGP_MAX_DIGEST, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @s2k_decode_count(i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @px_md_result_size(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  br label %34

34:                                               ; preds = %136, %4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %137

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @px_md_reset(i32* %38)
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @memset(i32* %21, i32 0, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @px_md_update(i32* %45, i32* %21, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %13, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @PGP_S2K_SALT, align 4
  %56 = call i32 @px_md_update(i32* %51, i32* %54, i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @px_md_update(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* @PGP_S2K_SALT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %61, %62
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %107, %48
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %64
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @PGP_S2K_SALT, align 4
  %71 = add i32 %69, %70
  %72 = load i32, i32* %17, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @PGP_S2K_SALT, align 4
  store i32 %75, i32* %15, align 4
  br label %80

76:                                               ; preds = %68
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub i32 %77, %78
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %76, %74
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @px_md_update(i32* %81, i32* %84, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %90, %91
  %93 = load i32, i32* %17, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %15, align 4
  br label %107

97:                                               ; preds = %80
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sub i32 %102, %103
  store i32 %104, i32* %15, align 4
  br label %106

105:                                              ; preds = %97
  br label %115

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %95
  %108 = load i32*, i32** %6, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @px_md_update(i32* %108, i32* %109, i32 %110)
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %16, align 4
  br label %64

115:                                              ; preds = %105, %64
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @px_md_finish(i32* %116, i32* %21)
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ugt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @memcpy(i32* %122, i32* %21, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sub i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %12, align 8
  br label %136

132:                                              ; preds = %115
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @memcpy(i32* %133, i32* %21, i32 %134)
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %132, %121
  br label %34

137:                                              ; preds = %34
  %138 = mul nuw i64 4, %19
  %139 = trunc i64 %138 to i32
  %140 = call i32 @px_memset(i32* %21, i32 0, i32 %139)
  %141 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %141)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @s2k_decode_count(i32) #2

declare dso_local i32 @px_md_result_size(i32*) #2

declare dso_local i32 @px_md_reset(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @px_md_update(i32*, i32*, i32) #2

declare dso_local i32 @px_md_finish(i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @px_memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
